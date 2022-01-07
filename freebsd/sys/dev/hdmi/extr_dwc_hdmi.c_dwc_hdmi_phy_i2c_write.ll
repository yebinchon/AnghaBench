; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_phy_i2c_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_phy_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32 }

@HDMI_IH_I2CMPHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_I2CMPHY_STAT0_DONE = common dso_local global i16 0, align 2
@HDMI_IH_I2CMPHY_STAT0_ERROR = common dso_local global i16 0, align 2
@HDMI_PHY_I2CM_ADDRESS_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_DATAO_1_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_DATAO_0_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_OPERATION_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_OPERATION_ADDR_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*, i16, i8)* @dwc_hdmi_phy_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.dwc_hdmi_softc*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  %7 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %4, align 8
  %8 = load i32, i32* @HDMI_IH_I2CMPHY_STAT0, align 4
  %9 = load i16, i16* @HDMI_IH_I2CMPHY_STAT0_DONE, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @HDMI_IH_I2CMPHY_STAT0_ERROR, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i16
  %15 = call i32 @WR1(%struct.dwc_hdmi_softc* %7, i32 %8, i16 zeroext %14)
  %16 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %4, align 8
  %17 = load i32, i32* @HDMI_PHY_I2CM_ADDRESS_ADDR, align 4
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i16
  %20 = call i32 @WR1(%struct.dwc_hdmi_softc* %16, i32 %17, i16 zeroext %19)
  %21 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %4, align 8
  %22 = load i32, i32* @HDMI_PHY_I2CM_DATAO_1_ADDR, align 4
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i16
  %28 = call i32 @WR1(%struct.dwc_hdmi_softc* %21, i32 %22, i16 zeroext %27)
  %29 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %4, align 8
  %30 = load i32, i32* @HDMI_PHY_I2CM_DATAO_0_ADDR, align 4
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = ashr i32 %32, 0
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i16
  %36 = call i32 @WR1(%struct.dwc_hdmi_softc* %29, i32 %30, i16 zeroext %35)
  %37 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %4, align 8
  %38 = load i32, i32* @HDMI_PHY_I2CM_OPERATION_ADDR, align 4
  %39 = load i16, i16* @HDMI_PHY_I2CM_OPERATION_ADDR_WRITE, align 2
  %40 = call i32 @WR1(%struct.dwc_hdmi_softc* %37, i32 %38, i16 zeroext %39)
  %41 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %4, align 8
  %42 = call i32 @dwc_hdmi_phy_wait_i2c_done(%struct.dwc_hdmi_softc* %41, i32 1000)
  ret void
}

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i16 zeroext) #1

declare dso_local i32 @dwc_hdmi_phy_wait_i2c_done(%struct.dwc_hdmi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
