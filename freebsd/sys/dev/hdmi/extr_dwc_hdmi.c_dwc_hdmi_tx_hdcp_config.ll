; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_tx_hdcp_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_tx_hdcp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32 }

@HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG0 = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG0_RXDETECT_MASK = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG0_RXDETECT_DISABLE = common dso_local global i32 0, align 4
@HDMI_A_VIDPOLCFG = common dso_local global i32 0, align 4
@HDMI_A_VIDPOLCFG_DATAENPOL_MASK = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG1 = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK = common dso_local global i32 0, align 4
@HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*)* @dwc_hdmi_tx_hdcp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_tx_hdcp_config(%struct.dwc_hdmi_softc* %0) #0 {
  %2 = alloca %struct.dwc_hdmi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %2, align 8
  %5 = load i32, i32* @HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %7 = load i32, i32* @HDMI_A_HDCPCFG0, align 4
  %8 = call i32 @RD1(%struct.dwc_hdmi_softc* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @HDMI_A_HDCPCFG0_RXDETECT_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @HDMI_A_HDCPCFG0_RXDETECT_DISABLE, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %17 = load i32, i32* @HDMI_A_HDCPCFG0, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @WR1(%struct.dwc_hdmi_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %21 = load i32, i32* @HDMI_A_VIDPOLCFG, align 4
  %22 = call i32 @RD1(%struct.dwc_hdmi_softc* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @HDMI_A_VIDPOLCFG_DATAENPOL_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %31 = load i32, i32* @HDMI_A_VIDPOLCFG, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @WR1(%struct.dwc_hdmi_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %35 = load i32, i32* @HDMI_A_HDCPCFG1, align 4
  %36 = call i32 @RD1(%struct.dwc_hdmi_softc* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %45 = load i32, i32* @HDMI_A_HDCPCFG1, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @WR1(%struct.dwc_hdmi_softc* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @RD1(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
