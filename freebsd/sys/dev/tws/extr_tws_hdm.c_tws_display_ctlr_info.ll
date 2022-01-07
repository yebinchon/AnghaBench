; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_display_ctlr_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_display_ctlr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }

@TWS_PARAM_PHYS_TABLE = common dso_local global i32 0, align 4
@TWS_PARAM_CONTROLLER_PHYS_COUNT = common dso_local global i32 0, align 4
@TWS_PARAM_VERSION_TABLE = common dso_local global i32 0, align 4
@TWS_PARAM_VERSION_FW = common dso_local global i32 0, align 4
@TWS_PARAM_VERSION_BIOS = common dso_local global i32 0, align 4
@TWS_PARAM_CTLR_MODEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Controller details: Model %.16s, %d Phys, Firmware %.16s, BIOS %.16s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_display_ctlr_info(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca [16 x i32], align 16
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %9 = load i32, i32* @TWS_PARAM_PHYS_TABLE, align 4
  %10 = load i32, i32* @TWS_PARAM_CONTROLLER_PHYS_COUNT, align 4
  %11 = call i32 @tws_get_param(%struct.tws_softc* %8, i32 %9, i32 %10, i32 1, i32* %6)
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %11, i32* %12, align 16
  %13 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %14 = load i32, i32* @TWS_PARAM_VERSION_TABLE, align 4
  %15 = load i32, i32* @TWS_PARAM_VERSION_FW, align 4
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %17 = call i32 @tws_get_param(%struct.tws_softc* %13, i32 %14, i32 %15, i32 16, i32* %16)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %20 = load i32, i32* @TWS_PARAM_VERSION_TABLE, align 4
  %21 = load i32, i32* @TWS_PARAM_VERSION_BIOS, align 4
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %23 = call i32 @tws_get_param(%struct.tws_softc* %19, i32 %20, i32 %21, i32 16, i32* %22)
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %26 = load i32, i32* @TWS_PARAM_VERSION_TABLE, align 4
  %27 = load i32, i32* @TWS_PARAM_CTLR_MODEL, align 4
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %29 = call i32 @tws_get_param(%struct.tws_softc* %25, i32 %26, i32 %27, i32 16, i32* %28)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %1
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %48 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %54 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32* %50, i32 %51, i32* %52, i32* %53)
  br label %55

55:                                               ; preds = %46, %42, %38, %34, %1
  ret void
}

declare dso_local i32 @tws_get_param(%struct.tws_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
