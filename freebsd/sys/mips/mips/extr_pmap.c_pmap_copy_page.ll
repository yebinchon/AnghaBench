; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_copy_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_copy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy_page(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @VM_PAGE_TO_PHYS(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @VM_PAGE_TO_PHYS(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @MIPS_DIRECT_MAPPABLE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @MIPS_DIRECT_MAPPABLE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pmap_flush_pvcache(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %23)
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = call i32 @mips_dcache_wbinv_range_index(i64 %24, i64 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i64, i64* %6, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = call i32 @bcopy(i8* %32, i8* %34, i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = call i32 @mips_dcache_wbinv_range(i64 %37, i64 %38)
  br label %57

40:                                               ; preds = %16, %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @pmap_lmem_map2(i32 %41, i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i64, i64* %6, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = call i32 @bcopy(i8* %48, i8* %50, i64 %51)
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = call i32 @mips_dcache_wbinv_range(i64 %53, i64 %54)
  %56 = call i32 (...) @pmap_lmem_unmap()
  br label %57

57:                                               ; preds = %40, %20
  ret void
}

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @MIPS_DIRECT_MAPPABLE(i32) #1

declare dso_local i32 @pmap_flush_pvcache(i32) #1

declare dso_local i32 @mips_dcache_wbinv_range_index(i64, i64) #1

declare dso_local i64 @MIPS_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @mips_dcache_wbinv_range(i64, i64) #1

declare dso_local i64 @pmap_lmem_map2(i32, i32) #1

declare dso_local i32 @pmap_lmem_unmap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
