; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_usb_phy.c_mtk_usb_phy_mt7628_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_usb_phy.c_mtk_usb_phy_mt7628_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_usb_phy_softc = type { i32 }

@U2_PHY_DCR0 = common dso_local global i32 0, align 4
@U2_PHY_AC0 = common dso_local global i32 0, align 4
@U2_PHY_AC1 = common dso_local global i32 0, align 4
@U2_PHY_ACR3 = common dso_local global i32 0, align 4
@U2_PHY_DTM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mtk_usb_phy_mt7628_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_usb_phy_mt7628_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_usb_phy_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mtk_usb_phy_softc* @device_get_softc(i32 %4)
  store %struct.mtk_usb_phy_softc* %5, %struct.mtk_usb_phy_softc** %3, align 8
  %6 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %7 = load i32, i32* @U2_PHY_DCR0, align 4
  %8 = call i32 @USB_PHY_WRITE_U2(%struct.mtk_usb_phy_softc* %6, i32 %7, i32 16776962)
  %9 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %10 = call i32 @USB_PHY_BARRIER(%struct.mtk_usb_phy_softc* %9)
  %11 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %12 = load i32, i32* @U2_PHY_DCR0, align 4
  %13 = call i32 @USB_PHY_WRITE_U2(%struct.mtk_usb_phy_softc* %11, i32 %12, i32 5592322)
  %14 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %15 = call i32 @USB_PHY_BARRIER(%struct.mtk_usb_phy_softc* %14)
  %16 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %17 = load i32, i32* @U2_PHY_DCR0, align 4
  %18 = call i32 @USB_PHY_WRITE_U2(%struct.mtk_usb_phy_softc* %16, i32 %17, i32 11184642)
  %19 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %20 = call i32 @USB_PHY_BARRIER(%struct.mtk_usb_phy_softc* %19)
  %21 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %22 = load i32, i32* @U2_PHY_DCR0, align 4
  %23 = call i32 @USB_PHY_WRITE_U2(%struct.mtk_usb_phy_softc* %21, i32 %22, i32 1026)
  %24 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %25 = call i32 @USB_PHY_BARRIER(%struct.mtk_usb_phy_softc* %24)
  %26 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %27 = load i32, i32* @U2_PHY_AC0, align 4
  %28 = call i32 @USB_PHY_WRITE_U2(%struct.mtk_usb_phy_softc* %26, i32 %27, i32 4720746)
  %29 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %30 = call i32 @USB_PHY_BARRIER(%struct.mtk_usb_phy_softc* %29)
  %31 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %32 = load i32, i32* @U2_PHY_AC1, align 4
  %33 = call i32 @USB_PHY_WRITE_U2(%struct.mtk_usb_phy_softc* %31, i32 %32, i32 1140850716)
  %34 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %35 = call i32 @USB_PHY_BARRIER(%struct.mtk_usb_phy_softc* %34)
  %36 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %37 = load i32, i32* @U2_PHY_ACR3, align 4
  %38 = call i32 @USB_PHY_WRITE_U2(%struct.mtk_usb_phy_softc* %36, i32 %37, i32 -1071644672)
  %39 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %40 = call i32 @USB_PHY_BARRIER(%struct.mtk_usb_phy_softc* %39)
  %41 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %42 = load i32, i32* @U2_PHY_DTM0, align 4
  %43 = call i32 @USB_PHY_WRITE_U2(%struct.mtk_usb_phy_softc* %41, i32 %42, i32 33554432)
  %44 = load %struct.mtk_usb_phy_softc*, %struct.mtk_usb_phy_softc** %3, align 8
  %45 = call i32 @USB_PHY_BARRIER(%struct.mtk_usb_phy_softc* %44)
  ret void
}

declare dso_local %struct.mtk_usb_phy_softc* @device_get_softc(i32) #1

declare dso_local i32 @USB_PHY_WRITE_U2(%struct.mtk_usb_phy_softc*, i32, i32) #1

declare dso_local i32 @USB_PHY_BARRIER(%struct.mtk_usb_phy_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
