; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_video_sample.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_video_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32 }

@HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE = common dso_local global i32 0, align 4
@HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET = common dso_local global i32 0, align 4
@HDMI_TX_INVID0_VIDEO_MAPPING_MASK = common dso_local global i32 0, align 4
@HDMI_TX_INVID0 = common dso_local global i32 0, align 4
@HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE = common dso_local global i32 0, align 4
@HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE = common dso_local global i32 0, align 4
@HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE = common dso_local global i32 0, align 4
@HDMI_TX_INSTUFFING = common dso_local global i32 0, align 4
@HDMI_TX_GYDATA0 = common dso_local global i32 0, align 4
@HDMI_TX_GYDATA1 = common dso_local global i32 0, align 4
@HDMI_TX_RCRDATA0 = common dso_local global i32 0, align 4
@HDMI_TX_RCRDATA1 = common dso_local global i32 0, align 4
@HDMI_TX_BCBDATA0 = common dso_local global i32 0, align 4
@HDMI_TX_BCBDATA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*)* @dwc_hdmi_video_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_video_sample(%struct.dwc_hdmi_softc* %0) #0 {
  %2 = alloca %struct.dwc_hdmi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load i32, i32* @HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @HDMI_TX_INVID0_VIDEO_MAPPING_MASK, align 4
  %10 = and i32 %8, %9
  %11 = or i32 %5, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %13 = load i32, i32* @HDMI_TX_INVID0, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @WR1(%struct.dwc_hdmi_softc* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE, align 4
  %17 = load i32, i32* @HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %22 = load i32, i32* @HDMI_TX_INSTUFFING, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @WR1(%struct.dwc_hdmi_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %26 = load i32, i32* @HDMI_TX_GYDATA0, align 4
  %27 = call i32 @WR1(%struct.dwc_hdmi_softc* %25, i32 %26, i32 0)
  %28 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %29 = load i32, i32* @HDMI_TX_GYDATA1, align 4
  %30 = call i32 @WR1(%struct.dwc_hdmi_softc* %28, i32 %29, i32 0)
  %31 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %32 = load i32, i32* @HDMI_TX_RCRDATA0, align 4
  %33 = call i32 @WR1(%struct.dwc_hdmi_softc* %31, i32 %32, i32 0)
  %34 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %35 = load i32, i32* @HDMI_TX_RCRDATA1, align 4
  %36 = call i32 @WR1(%struct.dwc_hdmi_softc* %34, i32 %35, i32 0)
  %37 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %38 = load i32, i32* @HDMI_TX_BCBDATA0, align 4
  %39 = call i32 @WR1(%struct.dwc_hdmi_softc* %37, i32 %38, i32 0)
  %40 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %41 = load i32, i32* @HDMI_TX_BCBDATA1, align 4
  %42 = call i32 @WR1(%struct.dwc_hdmi_softc* %40, i32 %41, i32 0)
  ret void
}

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
