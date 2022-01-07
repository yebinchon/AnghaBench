; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211GetInterpolatedValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211GetInterpolatedValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEP_SCALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar5211GetInterpolatedValue(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* @EEP_SCALE, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = mul nsw i64 %18, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %92

23:                                               ; preds = %6
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i64 1, i64* %16, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* @EEP_SCALE, align 8
  %36 = mul nsw i64 %34, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub nsw i64 %37, %38
  %40 = sdiv i64 %36, %39
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %15, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @EEP_SCALE, align 8
  br label %50

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i64 [ %48, %47 ], [ 1, %49 ]
  %52 = mul nsw i64 %44, %51
  store i64 %52, i64* %14, align 8
  br label %80

53:                                               ; preds = %31
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* @EEP_SCALE, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* @EEP_SCALE, align 8
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i64 [ %62, %61 ], [ 1, %63 ]
  %66 = mul nsw i64 %58, %65
  store i64 %66, i64* %14, align 8
  br label %79

67:                                               ; preds = %53
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %12, align 8
  %70 = mul nsw i64 %68, %69
  %71 = load i64, i64* @EEP_SCALE, align 8
  %72 = load i64, i64* %15, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i64, i64* %11, align 8
  %75 = mul nsw i64 %73, %74
  %76 = add nsw i64 %70, %75
  %77 = load i64, i64* %16, align 8
  %78 = sdiv i64 %76, %77
  store i64 %78, i64* %14, align 8
  br label %79

79:                                               ; preds = %67, %64
  br label %80

80:                                               ; preds = %79, %50
  br label %90

81:                                               ; preds = %27
  %82 = load i64, i64* %11, align 8
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i64, i64* @EEP_SCALE, align 8
  %87 = load i64, i64* %14, align 8
  %88 = mul nsw i64 %87, %86
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i64, i64* %14, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %90, %22
  %93 = load i64, i64* %7, align 8
  ret i64 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
