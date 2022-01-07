; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_copy_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_copy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@copy_page_src_va = common dso_local global i64 0, align 8
@copy_page_dst_va = common dso_local global i64 0, align 8
@copy_page_mutex = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mmu_booke_copy_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_booke_copy_page(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @copy_page_src_va, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* @copy_page_dst_va, align 8
  store i64 %10, i64* %8, align 8
  %11 = call i32 @mtx_lock(i32* @copy_page_mutex)
  %12 = load i32, i32* %4, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @VM_PAGE_TO_PHYS(i32 %14)
  %16 = call i32 @mmu_booke_kenter(i32 %12, i64 %13, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @VM_PAGE_TO_PHYS(i32 %19)
  %21 = call i32 @mmu_booke_kenter(i32 %17, i64 %18, i32 %20)
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = call i32 @memcpy(i32 %23, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @mmu_booke_kremove(i32 %28, i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @mmu_booke_kremove(i32 %31, i64 %32)
  %34 = call i32 @mtx_unlock(i32* @copy_page_mutex)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mmu_booke_kenter(i32, i64, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mmu_booke_kremove(i32, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
