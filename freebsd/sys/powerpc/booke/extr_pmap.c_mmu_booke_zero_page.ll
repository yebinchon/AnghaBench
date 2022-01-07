; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_zero_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_zero_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero_page_va = common dso_local global i64 0, align 8
@zero_page_mutex = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@cacheline_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mmu_booke_zero_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_booke_zero_page(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @zero_page_va, align 8
  store i64 %7, i64* %6, align 8
  %8 = call i32 @mtx_lock(i32* @zero_page_mutex)
  %9 = load i32, i32* %3, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @VM_PAGE_TO_PHYS(i32 %11)
  %13 = call i32 @mmu_booke_kenter(i32 %9, i64 %10, i32 %12)
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %22, %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  call void asm sideeffect "dcbz 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %21) #2, !srcloc !2
  br label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @cacheline_size, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @mmu_booke_kremove(i32 %27, i64 %28)
  %30 = call i32 @mtx_unlock(i32* @zero_page_mutex)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mmu_booke_kenter(i32, i64, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @mmu_booke_kremove(i32, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 808}
