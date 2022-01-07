; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_zero_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_zero_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_zero_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @VM_PAGE_TO_PHYS(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @MIPS_DIRECT_MAPPABLE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @bzero(i32 %14, i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @mips_dcache_wbinv_range(i64 %17, i32 %18)
  br label %31

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @pmap_lmem_map1(i32 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 @bzero(i32 %24, i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i32 @mips_dcache_wbinv_range(i64 %27, i32 %28)
  %30 = call i32 (...) @pmap_lmem_unmap()
  br label %31

31:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @MIPS_DIRECT_MAPPABLE(i32) #1

declare dso_local i64 @MIPS_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @mips_dcache_wbinv_range(i64, i32) #1

declare dso_local i64 @pmap_lmem_map1(i32) #1

declare dso_local i32 @pmap_lmem_unmap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
