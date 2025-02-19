; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_phy_read_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_phy_read_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MTKSWITCH_PIAC = common dso_local global i32 0, align 4
@PIAC_PHY_ACS_ST = common dso_local global i32 0, align 4
@PIAC_MDIO_ST = common dso_local global i32 0, align 4
@PIAC_MDIO_REG_ADDR_OFF = common dso_local global i32 0, align 4
@PIAC_MDIO_PHY_ADDR_OFF = common dso_local global i32 0, align 4
@PIAC_MDIO_CMD_READ = common dso_local global i32 0, align 4
@PIAC_MDIO_RW_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, i32, i32)* @mtkswitch_phy_read_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_phy_read_locked(%struct.mtkswitch_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %9 = load i32, i32* @MTKSWITCH_PIAC, align 4
  %10 = load i32, i32* @PIAC_PHY_ACS_ST, align 4
  %11 = load i32, i32* @PIAC_MDIO_ST, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PIAC_MDIO_REG_ADDR_OFF, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PIAC_MDIO_PHY_ADDR_OFF, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* @PIAC_MDIO_CMD_READ, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %8, i32 %9, i32 %22)
  br label %24

24:                                               ; preds = %31, %3
  %25 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %26 = load i32, i32* @MTKSWITCH_PIAC, align 4
  %27 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @PIAC_PHY_ACS_ST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %24

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @PIAC_MDIO_RW_DATA_MASK, align 4
  %35 = and i32 %33, %34
  ret i32 %35
}

declare dso_local i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc*, i32, i32) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
