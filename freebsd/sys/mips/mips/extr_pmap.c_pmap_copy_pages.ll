; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_copy_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_copy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy_pages(i32* %0, i64 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  br label %20

20:                                               ; preds = %116, %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %128

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %15, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %15, align 8
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @min(i32 %27, i32 %32)
  store i32 %33, i32* %19, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @VM_PAGE_TO_PHYS(i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @PAGE_MASK, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %16, align 8
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %16, align 8
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @min(i32 %45, i32 %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = lshr i64 %53, %54
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @VM_PAGE_TO_PHYS(i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i64 @MIPS_DIRECT_MAPPABLE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %23
  %64 = load i32, i32* %18, align 4
  %65 = call i64 @MIPS_DIRECT_MAPPABLE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @pmap_flush_pvcache(i32 %68)
  %70 = load i32, i32* %18, align 4
  %71 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %70)
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = call i32 @mips_dcache_wbinv_range_index(i64 %71, i32 %72)
  %74 = load i32, i32* %17, align 4
  %75 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %74)
  %76 = inttoptr i64 %75 to i8*
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %11, align 8
  %79 = load i32, i32* %18, align 4
  %80 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %79)
  %81 = inttoptr i64 %80 to i8*
  %82 = load i64, i64* %16, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @bcopy(i8* %84, i8* %85, i32 %86)
  %88 = load i8*, i8** %12, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @mips_dcache_wbinv_range(i64 %89, i32 %90)
  br label %116

92:                                               ; preds = %63, %23
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i64 @pmap_lmem_map2(i32 %93, i32 %94)
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %11, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8* %100, i8** %12, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %11, align 8
  %104 = load i64, i64* %16, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %12, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @bcopy(i8* %107, i8* %108, i32 %109)
  %111 = load i8*, i8** %12, align 8
  %112 = ptrtoint i8* %111 to i64
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @mips_dcache_wbinv_range(i64 %112, i32 %113)
  %115 = call i32 (...) @pmap_lmem_unmap()
  br label %116

116:                                              ; preds = %92, %67
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %7, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %7, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %9, align 8
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %20

128:                                              ; preds = %20
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @MIPS_DIRECT_MAPPABLE(i32) #1

declare dso_local i32 @pmap_flush_pvcache(i32) #1

declare dso_local i32 @mips_dcache_wbinv_range_index(i64, i32) #1

declare dso_local i64 @MIPS_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @mips_dcache_wbinv_range(i64, i32) #1

declare dso_local i64 @pmap_lmem_map2(i32, i32) #1

declare dso_local i32 @pmap_lmem_unmap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
