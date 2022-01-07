; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_phy_test_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_phy_test_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32 }

@HDMI_PHY_TST0 = common dso_local global i32 0, align 4
@HDMI_PHY_TST0_TSTCLR_MASK = common dso_local global i8 0, align 1
@HDMI_PHY_TST0_TSTCLR_OFFSET = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*, i8)* @dwc_hdmi_phy_test_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_phy_test_clear(%struct.dwc_hdmi_softc* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.dwc_hdmi_softc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %7 = load i32, i32* @HDMI_PHY_TST0, align 4
  %8 = call zeroext i8 @RD1(%struct.dwc_hdmi_softc* %6, i32 %7)
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* @HDMI_PHY_TST0_TSTCLR_MASK, align 1
  %10 = zext i8 %9 to i32
  %11 = xor i32 %10, -1
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, %11
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %5, align 1
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @HDMI_PHY_TST0_TSTCLR_OFFSET, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %17, %19
  %21 = load i8, i8* @HDMI_PHY_TST0_TSTCLR_MASK, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %5, align 1
  %28 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %29 = load i32, i32* @HDMI_PHY_TST0, align 4
  %30 = load i8, i8* %5, align 1
  %31 = call i32 @WR1(%struct.dwc_hdmi_softc* %28, i32 %29, i8 zeroext %30)
  ret void
}

declare dso_local zeroext i8 @RD1(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
