; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_zero_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_zero_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_direct_map = common dso_local global i32 0, align 4
@moea64_scratchpage_mtx = common dso_local global i32 0, align 4
@moea64_scratchpage_va = common dso_local global i64* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@cacheline_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_zero_page(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @VM_PAGE_TO_PHYS(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @hw_direct_map, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = call i32 @mtx_lock(i32* @moea64_scratchpage_mtx)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @moea64_set_scratchpage_pa(i32 %14, i32 0, i32 %15)
  %17 = load i64*, i64** @moea64_scratchpage_va, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @PHYS_TO_DMAP(i32 %21)
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %20, %12
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %29, %30
  call void asm sideeffect "dcbz 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %31) #2, !srcloc !2
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @cacheline_size, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %7, align 8
  br label %24

36:                                               ; preds = %24
  %37 = load i32, i32* @hw_direct_map, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 @mtx_unlock(i32* @moea64_scratchpage_mtx)
  br label %41

41:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @moea64_set_scratchpage_pa(i32, i32, i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 905}
