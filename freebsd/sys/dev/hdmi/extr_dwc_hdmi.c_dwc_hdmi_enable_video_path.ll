; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_enable_video_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_enable_video_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32 }

@HDMI_FC_CTRLDUR = common dso_local global i32 0, align 4
@HDMI_FC_EXCTRLDUR = common dso_local global i32 0, align 4
@HDMI_FC_EXCTRLSPAC = common dso_local global i32 0, align 4
@HDMI_FC_CH0PREAM = common dso_local global i32 0, align 4
@HDMI_FC_CH1PREAM = common dso_local global i32 0, align 4
@HDMI_FC_CH2PREAM = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_CECCLK_DISABLE = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_PIXELCLK_DISABLE = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_TMDSCLK_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*)* @dwc_hdmi_enable_video_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_enable_video_path(%struct.dwc_hdmi_softc* %0) #0 {
  %2 = alloca %struct.dwc_hdmi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %2, align 8
  %4 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %5 = load i32, i32* @HDMI_FC_CTRLDUR, align 4
  %6 = call i32 @WR1(%struct.dwc_hdmi_softc* %4, i32 %5, i32 12)
  %7 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %8 = load i32, i32* @HDMI_FC_EXCTRLDUR, align 4
  %9 = call i32 @WR1(%struct.dwc_hdmi_softc* %7, i32 %8, i32 32)
  %10 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %11 = load i32, i32* @HDMI_FC_EXCTRLSPAC, align 4
  %12 = call i32 @WR1(%struct.dwc_hdmi_softc* %10, i32 %11, i32 1)
  %13 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %14 = load i32, i32* @HDMI_FC_CH0PREAM, align 4
  %15 = call i32 @WR1(%struct.dwc_hdmi_softc* %13, i32 %14, i32 11)
  %16 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %17 = load i32, i32* @HDMI_FC_CH1PREAM, align 4
  %18 = call i32 @WR1(%struct.dwc_hdmi_softc* %16, i32 %17, i32 22)
  %19 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %20 = load i32, i32* @HDMI_FC_CH2PREAM, align 4
  %21 = call i32 @WR1(%struct.dwc_hdmi_softc* %19, i32 %20, i32 33)
  %22 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %23 = load i32, i32* @HDMI_MC_CLKDIS, align 4
  %24 = call i32 @RD1(%struct.dwc_hdmi_softc* %22, i32 %23)
  %25 = load i32, i32* @HDMI_MC_CLKDIS_CECCLK_DISABLE, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @HDMI_MC_CLKDIS_CECCLK_DISABLE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @HDMI_MC_CLKDIS_PIXELCLK_DISABLE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %36 = load i32, i32* @HDMI_MC_CLKDIS, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @WR1(%struct.dwc_hdmi_softc* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @HDMI_MC_CLKDIS_TMDSCLK_DISABLE, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %44 = load i32, i32* @HDMI_MC_CLKDIS, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @WR1(%struct.dwc_hdmi_softc* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i32) #1

declare dso_local i32 @RD1(%struct.dwc_hdmi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
