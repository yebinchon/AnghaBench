; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@pvh_global_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@NBSEG = common dso_local global i32 0, align 4
@SEGMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %133

18:                                               ; preds = %3
  %19 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i32 @PMAP_LOCK(%struct.TYPE_11__* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pmap_remove_page(%struct.TYPE_11__* %28, i32 %29)
  br label %129

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %126, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %128

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64* @pmap_segmap(%struct.TYPE_11__* %37, i32 %38)
  store i64* %39, i64** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @NBPDR, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* @PDRMASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64* @pmap_pdpe_to_pde(i64* %52, i32 %53)
  store i64* %54, i64** %7, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %126

60:                                               ; preds = %51
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i64*, i64** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32* @pmap_pde_to_pte(i64* %68, i32 %69)
  store i32* %70, i32** %9, align 8
  br label %71

71:                                               ; preds = %110, %66
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %116

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @PTE_V, align 4
  %78 = call i32 @pte_test(i32* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @pmap_invalidate_range(%struct.TYPE_11__* %85, i32 %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %84, %80
  br label %110

91:                                               ; preds = %75
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i64*, i64** %7, align 8
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @pmap_remove_pte(%struct.TYPE_11__* %98, i32* %99, i32 %100, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %116

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %90
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %9, align 8
  %113 = load i32, i32* @PAGE_SIZE, align 4
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %71

116:                                              ; preds = %105, %71
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @pmap_invalidate_range(%struct.TYPE_11__* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %116
  br label %126

126:                                              ; preds = %125, %59
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %5, align 4
  br label %32

128:                                              ; preds = %32
  br label %129

129:                                              ; preds = %128, %27
  %130 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %132 = call i32 @PMAP_UNLOCK(%struct.TYPE_11__* %131)
  br label %133

133:                                              ; preds = %129, %17
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @pmap_remove_page(%struct.TYPE_11__*, i32) #1

declare dso_local i64* @pmap_segmap(%struct.TYPE_11__*, i32) #1

declare dso_local i64* @pmap_pdpe_to_pde(i64*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i64*, i32) #1

declare dso_local i32 @pte_test(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_range(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @pmap_remove_pte(%struct.TYPE_11__*, i32*, i32, i64) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
