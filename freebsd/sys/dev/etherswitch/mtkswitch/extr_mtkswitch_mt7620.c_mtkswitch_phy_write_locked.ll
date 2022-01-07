; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_phy_write_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_phy_write_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MTKSWITCH_PIAC = common dso_local global i32 0, align 4
@PIAC_PHY_ACS_ST = common dso_local global i32 0, align 4
@PIAC_MDIO_ST = common dso_local global i32 0, align 4
@PIAC_MDIO_REG_ADDR_OFF = common dso_local global i32 0, align 4
@PIAC_MDIO_PHY_ADDR_OFF = common dso_local global i32 0, align 4
@PIAC_MDIO_RW_DATA_MASK = common dso_local global i32 0, align 4
@PIAC_MDIO_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, i32, i32, i32)* @mtkswitch_phy_write_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_phy_write_locked(%struct.mtkswitch_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtkswitch_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %5, align 8
  %10 = load i32, i32* @MTKSWITCH_PIAC, align 4
  %11 = load i32, i32* @PIAC_PHY_ACS_ST, align 4
  %12 = load i32, i32* @PIAC_MDIO_ST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PIAC_MDIO_REG_ADDR_OFF, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %13, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PIAC_MDIO_PHY_ADDR_OFF, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PIAC_MDIO_RW_DATA_MASK, align 4
  %24 = and i32 %22, %23
  %25 = or i32 %21, %24
  %26 = load i32, i32* @PIAC_MDIO_CMD_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %9, i32 %10, i32 %27)
  br label %29

29:                                               ; preds = %36, %4
  %30 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %5, align 8
  %31 = load i32, i32* @MTKSWITCH_PIAC, align 4
  %32 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %30, i32 %31)
  %33 = load i32, i32* @PIAC_PHY_ACS_ST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %29

37:                                               ; preds = %29
  ret i32 0
}

declare dso_local i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc*, i32, i32) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
