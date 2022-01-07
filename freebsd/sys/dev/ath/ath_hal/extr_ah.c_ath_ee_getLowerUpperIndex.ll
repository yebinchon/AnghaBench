; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_ee_getLowerUpperIndex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_ee_getLowerUpperIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_ee_getLowerUpperIndex(i64 %0, i64* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32*, i32** %11, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @AH_TRUE, align 4
  store i32 %21, i32* %6, align 4
  br label %81

22:                                               ; preds = %5
  %23 = load i64, i64* %7, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %23, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @AH_TRUE, align 4
  store i32 %36, i32* %6, align 4
  br label %81

37:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %73, %37
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %38
  %44 = load i64*, i64** %8, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @AH_TRUE, align 4
  store i32 %55, i32* %6, align 4
  br label %81

56:                                               ; preds = %43
  %57 = load i64, i64* %7, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %57, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @AH_FALSE, align 4
  store i32 %71, i32* %6, align 4
  br label %81

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %38

76:                                               ; preds = %38
  %77 = call i32 @HALASSERT(i32 0)
  %78 = load i32*, i32** %11, align 8
  store i32 0, i32* %78, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* @AH_FALSE, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %76, %65, %51, %31, %18
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
