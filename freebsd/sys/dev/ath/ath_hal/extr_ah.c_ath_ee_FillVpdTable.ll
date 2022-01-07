; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_ee_FillVpdTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_ee_FillVpdTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_ee_FillVpdTable(i64 %0, i64 %1, i64* %2, i64* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* %5, i64** %12, align 8
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp sgt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @HALASSERT(i32 %22)
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %107, %6
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %26, %27
  %29 = sdiv i64 %28, 2
  %30 = icmp sle i64 %25, %29
  br i1 %30, label %31, label %110

31:                                               ; preds = %24
  %32 = load i64, i64* %15, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @ath_ee_getLowerUpperIndex(i64 %32, i64* %33, i64 %34, i64* %16, i64* %17)
  %36 = load i64, i64* %17, align 8
  %37 = icmp slt i64 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i64 1, i64* %17, align 8
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %11, align 8
  %42 = sub nsw i64 %41, 1
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %11, align 8
  %46 = sub nsw i64 %45, 2
  store i64 %46, i64* %16, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %17, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %16, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %14, align 8
  br label %96

62:                                               ; preds = %47
  %63 = load i64, i64* %15, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %16, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %63, %67
  %69 = load i64*, i64** %10, align 8
  %70 = load i64, i64* %17, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = mul nsw i64 %68, %72
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %17, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load i64*, i64** %10, align 8
  %81 = load i64, i64* %16, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = mul nsw i64 %79, %83
  %85 = add nsw i64 %73, %84
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %17, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %16, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %89, %93
  %95 = sdiv i64 %85, %94
  store i64 %95, i64* %14, align 8
  br label %96

96:                                               ; preds = %62, %57
  %97 = load i64, i64* %14, align 8
  %98 = icmp slt i64 %97, 256
  %99 = zext i1 %98 to i32
  %100 = call i32 @HALASSERT(i32 %99)
  %101 = load i64, i64* %14, align 8
  %102 = load i64*, i64** %12, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64 %101, i64* %104, align 8
  %105 = load i64, i64* %15, align 8
  %106 = add nsw i64 %105, 2
  store i64 %106, i64* %15, align 8
  br label %107

107:                                              ; preds = %96
  %108 = load i64, i64* %13, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %13, align 8
  br label %24

110:                                              ; preds = %24
  %111 = load i32, i32* @AH_TRUE, align 4
  ret i32 %111
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @ath_ee_getLowerUpperIndex(i64, i64*, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
