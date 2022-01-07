; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_calib.c_r92ce_iq_calib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_calib.c_r92ce_iq_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.r92ce_iq_cal_reg_vals = type { i32 }

@RTWN_IQ_CAL_NRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92ce_iq_calib(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92ce_iq_cal_reg_vals, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %9 = load i32, i32* @RTWN_IQ_CAL_NRUN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca [2 x [2 x i32]], i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @RTWN_IQ_CAL_NRUN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca [2 x [2 x i32]], i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %66, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @RTWN_IQ_CAL_NRUN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 %24
  %26 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %25, i64 0, i64 0
  %27 = bitcast [2 x i32]* %26 to i32**
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %15, i64 %29
  %31 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %30, i64 0, i64 0
  %32 = bitcast [2 x i32]* %31 to i32**
  %33 = call i32 @r92ce_iq_calib_run(%struct.rtwn_softc* %21, i32 %22, i32** %27, i32** %32, %struct.r92ce_iq_cal_reg_vals* %3)
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %66

37:                                               ; preds = %20
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 %41
  %43 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %42, i64 0, i64 0
  %44 = bitcast [2 x i32]* %43 to i32**
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %15, i64 %47
  %49 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %48, i64 0, i64 0
  %50 = bitcast [2 x i32]* %49 to i32**
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 %52
  %54 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %53, i64 0, i64 0
  %55 = bitcast [2 x i32]* %54 to i32**
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %15, i64 %57
  %59 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %58, i64 0, i64 0
  %60 = bitcast [2 x i32]* %59 to i32**
  %61 = call i32 @r92ce_iq_calib_compare_results(%struct.rtwn_softc* %38, i32** %44, i32** %50, i32** %55, i32** %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %37
  br label %69

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %16

69:                                               ; preds = %64, %16
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %69
  %73 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 %75
  %77 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %76, i64 0, i64 0
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %77, i64 0, i64 0
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %15, i64 %80
  %82 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %81, i64 0, i64 0
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 0, i64 0
  %84 = call i32 @r92ce_iq_calib_write_results(%struct.rtwn_softc* %73, i32* %78, i32* %83, i32 0)
  %85 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %86 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %102

89:                                               ; preds = %72
  %90 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 %92
  %94 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %93, i64 0, i64 1
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %94, i64 0, i64 0
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %15, i64 %97
  %99 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %98, i64 0, i64 1
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 0
  %101 = call i32 @r92ce_iq_calib_write_results(%struct.rtwn_softc* %90, i32* %95, i32* %100, i32 1)
  br label %102

102:                                              ; preds = %89, %72
  br label %103

103:                                              ; preds = %102, %69
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @r92ce_iq_calib_run(%struct.rtwn_softc*, i32, i32**, i32**, %struct.r92ce_iq_cal_reg_vals*) #2

declare dso_local i32 @r92ce_iq_calib_compare_results(%struct.rtwn_softc*, i32**, i32**, i32**, i32**) #2

declare dso_local i32 @r92ce_iq_calib_write_results(%struct.rtwn_softc*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
