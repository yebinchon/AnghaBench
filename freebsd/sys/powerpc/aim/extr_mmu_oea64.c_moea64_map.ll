; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_direct_map = common dso_local global i64 0, align 8
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@LPTE_M = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @moea64_map(i32 %0, i64* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* @hw_direct_map, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %5
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %13, align 8
  br label %18

18:                                               ; preds = %30, %16
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i64, i64* %13, align 8
  %24 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %25 = call i64 @moea64_calc_wimg(i64 %23, i32 %24)
  %26 = load i64, i64* @LPTE_M, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %34

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %13, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %13, align 8
  br label %18

34:                                               ; preds = %28, %18
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @PHYS_TO_DMAP(i64 %39)
  store i64 %40, i64* %6, align 8
  br label %66

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %55, %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @moea64_kenter(i32 %51, i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %50
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %13, align 8
  br label %46

62:                                               ; preds = %46
  %63 = load i64, i64* %13, align 8
  %64 = load i64*, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %62, %38
  %67 = load i64, i64* %6, align 8
  ret i64 %67
}

declare dso_local i64 @moea64_calc_wimg(i64, i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @moea64_kenter(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
