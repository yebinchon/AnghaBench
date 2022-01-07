; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_clk_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_clk_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ig4_hw = type { i32, i32, i32, i32 }

@IG4_SPEED_STD_THIGH = common dso_local global i32 0, align 4
@IG4_SPEED_STD_TLOW = common dso_local global i32 0, align 4
@IG4_SPEED_STD_TF_MAX = common dso_local global i32 0, align 4
@IG4_SPEED_FAST_THIGH = common dso_local global i32 0, align 4
@IG4_SPEED_FAST_TLOW = common dso_local global i32 0, align 4
@IG4_SPEED_FAST_TF_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ig4_hw*, i32, i64*, i64*, i64*)* @ig4iic_clk_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ig4iic_clk_params(%struct.ig4_hw* %0, i32 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ig4_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ig4_hw* %0, %struct.ig4_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %26 [
    i32 128, label %18
    i32 129, label %22
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* @IG4_SPEED_STD_THIGH, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @IG4_SPEED_STD_TLOW, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @IG4_SPEED_STD_TF_MAX, align 4
  store i32 %21, i32* %14, align 4
  br label %28

22:                                               ; preds = %5
  %23 = load i32, i32* @IG4_SPEED_FAST_THIGH, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @IG4_SPEED_FAST_TLOW, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @IG4_SPEED_FAST_TF_MAX, align 4
  store i32 %25, i32* %14, align 4
  br label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %6, align 4
  br label %94

28:                                               ; preds = %22, %18
  %29 = load %struct.ig4_hw*, %struct.ig4_hw** %7, align 8
  %30 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  br label %39

35:                                               ; preds = %28
  %36 = load %struct.ig4_hw*, %struct.ig4_hw** %7, align 8
  %37 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i32 [ %34, %33 ], [ %38, %35 ]
  store i32 %40, i32* %15, align 4
  %41 = load %struct.ig4_hw*, %struct.ig4_hw** %7, align 8
  %42 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %44, %45
  %47 = mul nsw i32 %43, %46
  %48 = add nsw i32 %47, 500
  %49 = sdiv i32 %48, 1000
  %50 = sub nsw i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  %53 = load %struct.ig4_hw*, %struct.ig4_hw** %7, align 8
  %54 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %39
  %58 = load i32, i32* %14, align 4
  br label %63

59:                                               ; preds = %39
  %60 = load %struct.ig4_hw*, %struct.ig4_hw** %7, align 8
  %61 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  br label %63

63:                                               ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ]
  store i32 %64, i32* %16, align 4
  %65 = load %struct.ig4_hw*, %struct.ig4_hw** %7, align 8
  %66 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %68, %69
  %71 = mul nsw i32 %67, %70
  %72 = add nsw i32 %71, 500
  %73 = sdiv i32 %72, 1000
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = load i64*, i64** %10, align 8
  store i64 %75, i64* %76, align 8
  %77 = load %struct.ig4_hw*, %struct.ig4_hw** %7, align 8
  %78 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %63
  %82 = load %struct.ig4_hw*, %struct.ig4_hw** %7, align 8
  %83 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ig4_hw*, %struct.ig4_hw** %7, align 8
  %86 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = add nsw i32 %88, 500
  %90 = sdiv i32 %89, 1000
  %91 = sext i32 %90 to i64
  %92 = load i64*, i64** %11, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %81, %63
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %26
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
