; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_848x3_link_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_848x3_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i64 }
%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823 = common dso_local global i64 0, align 8
@MISC_REGISTERS_GPIO_3 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_LOW = common dso_local global i32 0, align 4
@MDIO_CTL_DEVAD = common dso_local global i32 0, align 4
@MDIO_84833_TOP_CFG_XGPHY_STRAP1 = common dso_local global i32 0, align 4
@MDIO_84833_SUPER_ISOLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*)* @elink_848x3_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_848x3_link_reset(%struct.elink_phy* %0, %struct.elink_params* %1) #0 {
  %3 = alloca %struct.elink_phy*, align 8
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %3, align 8
  store %struct.elink_params* %1, %struct.elink_params** %4, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 1
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %5, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %12 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %16 = call i32 @SC_PATH(%struct.bxe_softc* %15)
  store i32 %16, i32* %6, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %19 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load %struct.elink_phy*, %struct.elink_phy** %3, align 8
  %23 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %29 = load i32, i32* @MISC_REGISTERS_GPIO_3, align 4
  %30 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @elink_cb_gpio_write(%struct.bxe_softc* %28, i32 %29, i32 %30, i32 %31)
  br label %48

33:                                               ; preds = %21
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %35 = load %struct.elink_phy*, %struct.elink_phy** %3, align 8
  %36 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %37 = load i32, i32* @MDIO_84833_TOP_CFG_XGPHY_STRAP1, align 4
  %38 = call i32 @elink_cl45_read(%struct.bxe_softc* %34, %struct.elink_phy* %35, i32 %36, i32 %37, i32* %7)
  %39 = load i32, i32* @MDIO_84833_SUPER_ISOLATE, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %43 = load %struct.elink_phy*, %struct.elink_phy** %3, align 8
  %44 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %45 = load i32, i32* @MDIO_84833_TOP_CFG_XGPHY_STRAP1, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @elink_cl45_write(%struct.bxe_softc* %42, %struct.elink_phy* %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @elink_cb_gpio_write(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
