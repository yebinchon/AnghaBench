; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar2317.c_ar2317FillVpdTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar2317.c_ar2317FillVpdTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AH_FALSE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*, i32, [64 x i32]*)* @ar2317FillVpdTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar2317FillVpdTable(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, [64 x i32]* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [64 x i32]*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store [64 x i32]* %6, [64 x i32]** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 2, %22
  store i32 %23, i32* %19, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* @AH_FALSE, align 4
  store i32 %27, i32* %8, align 4
  br label %124

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %109, %28
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %122

35:                                               ; preds = %29
  %36 = load i32, i32* %19, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @GetLowerUpperIndex(i32 %36, i32* %37, i32 %38, i32* %20, i32* %21)
  %40 = load i32, i32* %21, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %21, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %14, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %14, align 4
  %50 = sub nsw i32 %49, 2
  store i32 %50, i32* %20, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %21, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %51
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  br label %109

69:                                               ; preds = %51
  %70 = load i32, i32* %19, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %70, %75
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %76, %81
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %21, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %19, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %89, %94
  %96 = add nsw i32 %82, %95
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %101, %106
  %108 = sdiv i32 %96, %107
  store i32 %108, i32* %18, align 4
  br label %109

109:                                              ; preds = %69, %63
  %110 = load i32, i32* %18, align 4
  %111 = load [64 x i32]*, [64 x i32]** %15, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %111, i64 %113
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %114, i64 0, i64 %116
  store i32 %110, i32* %117, align 4
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %19, align 4
  br label %29

122:                                              ; preds = %29
  %123 = load i32, i32* @AH_TRUE, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %26
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local i32 @GetLowerUpperIndex(i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
