; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212GetLowerUpperValues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212GetLowerUpperValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEP_SCALE = common dso_local global i32 0, align 4
@EEP_DELTA = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212GetLowerUpperValues(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @EEP_SCALE, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32* %20, i32** %12, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EEP_SCALE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @EEP_DELTA, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %21, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %34, i32* %36, align 4
  br label %102

37:                                               ; preds = %5
  %38 = load i64, i64* %11, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 -1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EEP_SCALE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @EEP_DELTA, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = icmp sgt i64 %38, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %51, i32* %53, align 4
  br label %102

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %96, %54
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @EEP_SCALE, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @udiff(i32 %64, i64 %65)
  %67 = load i32, i32* @EEP_DELTA, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 %72, i32* %74, align 4
  br label %102

75:                                               ; preds = %59
  %76 = load i64, i64* %11, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EEP_SCALE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* @EEP_DELTA, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %76, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  br label %102

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %7, align 8
  br label %55

99:                                               ; preds = %55
  %100 = load i32, i32* @AH_FALSE, align 4
  %101 = call i32 @HALASSERT(i32 %100)
  br label %102

102:                                              ; preds = %99, %86, %69, %48, %31
  ret void
}

declare dso_local i32 @udiff(i32, i64) #1

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
