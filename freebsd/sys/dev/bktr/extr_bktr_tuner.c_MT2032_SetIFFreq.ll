; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_MT2032_SetIFFreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_MT2032_SetIFFreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MT2032_XOGC = common dso_local global i32 0, align 4
@MT2032_OPTIMIZE_VCO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s: PLL didn't lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @MT2032_SetIFFreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MT2032_SetIFFreq(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [21 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 0
  %24 = load i32, i32* @MT2032_XOGC, align 4
  %25 = call i32 @MT2032_ComputeFreq(i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32* %23, i32* %16, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %94

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @TDA9887_init(i32 %29, i32 0)
  %31 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = call i32 @MT2032_SetRegister(i32 0, i32 %32)
  %34 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MT2032_SetRegister(i32 1, i32 %35)
  %37 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MT2032_SetRegister(i32 2, i32 %38)
  %40 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MT2032_SetRegister(i32 5, i32 %41)
  %43 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @MT2032_SetRegister(i32 6, i32 %44)
  %46 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @MT2032_SetRegister(i32 7, i32 %47)
  %49 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 11
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @MT2032_SetRegister(i32 11, i32 %50)
  %52 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 12
  %53 = load i32, i32* %52, align 16
  %54 = call i32 @MT2032_SetRegister(i32 12, i32 %53)
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %80, %28
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @MT2032_CheckLOLock(i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i64, i64* @MT2032_OPTIMIZE_VCO, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @MT2032_OptimizeVCO(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %17, align 4
  %70 = icmp eq i32 %69, 6
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %83

72:                                               ; preds = %68
  %73 = load i32, i32* @MT2032_XOGC, align 4
  %74 = add nsw i32 136, %73
  %75 = call i32 @MT2032_SetRegister(i32 7, i32 %74)
  %76 = call i32 @DELAY(i32 10000)
  %77 = load i32, i32* @MT2032_XOGC, align 4
  %78 = add nsw i32 8, %77
  %79 = call i32 @MT2032_SetRegister(i32 7, i32 %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %55

83:                                               ; preds = %71, %55
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 6
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = call i8* @bktr_name(i32 %87)
  %89 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = call i32 @MT2032_SetRegister(i32 2, i32 32)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @TDA9887_init(i32 %92, i32 1)
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %90, %27
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @MT2032_ComputeFreq(i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @TDA9887_init(i32, i32) #1

declare dso_local i32 @MT2032_SetRegister(i32, i32) #1

declare dso_local i32 @MT2032_CheckLOLock(i32) #1

declare dso_local i32 @MT2032_OptimizeVCO(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @bktr_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
