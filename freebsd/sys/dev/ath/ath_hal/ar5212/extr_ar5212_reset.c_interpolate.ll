; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_interpolate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_interpolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEP_SCALE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64)* @interpolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @interpolate(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %11, align 8
  %16 = mul nsw i64 %14, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %61

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load i64, i64* @EEP_SCALE, align 8
  %28 = mul nsw i64 %26, %27
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub nsw i64 %29, %30
  %32 = sdiv i64 %28, %31
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %12, align 8
  br label %56

37:                                               ; preds = %23
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @EEP_SCALE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %12, align 8
  br label %55

43:                                               ; preds = %37
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %11, align 8
  %46 = mul nsw i64 %44, %45
  %47 = load i64, i64* @EEP_SCALE, align 8
  %48 = load i64, i64* %13, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i64, i64* %10, align 8
  %51 = mul nsw i64 %49, %50
  %52 = add nsw i64 %46, %51
  %53 = load i64, i64* @EEP_SCALE, align 8
  %54 = sdiv i64 %52, %53
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %43, %41
  br label %56

56:                                               ; preds = %55, %35
  br label %59

57:                                               ; preds = %19
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %57, %56
  %60 = load i64, i64* %12, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %59, %18
  %62 = load i64, i64* %6, align 8
  ret i64 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
