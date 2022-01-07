; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_change_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_change_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@NBSEG = common dso_local global i32 0, align 4
@SEGMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_change_attr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %129

25:                                               ; preds = %3
  %26 = load i32, i32* @kernel_pmap, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @PMAP_LOCK(i32 %27)
  br label %29

29:                                               ; preds = %121, %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %123

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64* @pmap_segmap(i32 %34, i32 %35)
  store i64* %36, i64** %9, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @NBPDR, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* @PDRMASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %46, %33
  %49 = load i64*, i64** %9, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64* @pmap_pdpe_to_pde(i64* %49, i32 %50)
  store i64* %51, i64** %8, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %121

57:                                               ; preds = %48
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i64*, i64** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32* @pmap_pde_to_pte(i64* %65, i32 %66)
  store i32* %67, i32** %10, align 8
  br label %68

68:                                               ; preds = %103, %63
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %111

72:                                               ; preds = %68
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* @PTE_V, align 4
  %75 = call i32 @pte_test(i32* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @pte_cache_bits(i32* %78)
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @pmap_invalidate_range(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %86, %82
  br label %103

93:                                               ; preds = %77
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @pmap_pte_attr(i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %92
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %10, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %5, align 4
  br label %68

111:                                              ; preds = %68
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @pmap_invalidate_range(i32 %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %111
  br label %121

121:                                              ; preds = %120, %56
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %5, align 4
  br label %29

123:                                              ; preds = %29
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @PMAP_UNLOCK(i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @mips_dcache_wbinv_range(i32 %126, i32 %127)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %123, %23
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i64* @pmap_segmap(i32, i32) #1

declare dso_local i64* @pmap_pdpe_to_pde(i64*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i64*, i32) #1

declare dso_local i32 @pte_test(i32*, i32) #1

declare dso_local i32 @pte_cache_bits(i32*) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

declare dso_local i32 @pmap_pte_attr(i32*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @mips_dcache_wbinv_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
