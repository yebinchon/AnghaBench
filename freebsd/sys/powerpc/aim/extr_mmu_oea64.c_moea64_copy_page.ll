; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_copy_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_copy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_direct_map = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@moea64_scratchpage_mtx = common dso_local global i32 0, align 4
@moea64_scratchpage_va = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_copy_page(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @VM_PAGE_TO_PHYS(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @VM_PAGE_TO_PHYS(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* @hw_direct_map, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @PHYS_TO_DMAP(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @PHYS_TO_DMAP(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i32 @bcopy(i8* %18, i8* %21, i32 %22)
  br label %43

24:                                               ; preds = %3
  %25 = call i32 @mtx_lock(i32* @moea64_scratchpage_mtx)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @moea64_set_scratchpage_pa(i32 %26, i32 0, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @moea64_set_scratchpage_pa(i32 %29, i32 1, i32 %30)
  %32 = load i64*, i64** @moea64_scratchpage_va, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i64*, i64** @moea64_scratchpage_va, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i32 @bcopy(i8* %35, i8* %39, i32 %40)
  %42 = call i32 @mtx_unlock(i32* @moea64_scratchpage_mtx)
  br label %43

43:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @moea64_set_scratchpage_pa(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
