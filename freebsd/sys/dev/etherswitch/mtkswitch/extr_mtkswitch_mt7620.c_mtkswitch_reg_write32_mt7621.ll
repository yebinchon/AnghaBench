; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_reg_write32_mt7621.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_reg_write32_mt7621.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MTKSWITCH_GLOBAL_PHY = common dso_local global i32 0, align 4
@MTKSWITCH_GLOBAL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, i32, i32)* @mtkswitch_reg_write32_mt7621 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_reg_write32_mt7621(%struct.mtkswitch_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %8 = load i32, i32* @MTKSWITCH_GLOBAL_PHY, align 4
  %9 = load i32, i32* @MTKSWITCH_GLOBAL_REG, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @MTKSWITCH_REG_ADDR(i32 %10)
  %12 = call i32 @mtkswitch_phy_write_locked(%struct.mtkswitch_softc* %7, i32 %8, i32 %9, i32 %11)
  %13 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %14 = load i32, i32* @MTKSWITCH_GLOBAL_PHY, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @MTKSWITCH_REG_LO(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MTKSWITCH_VAL_LO(i32 %17)
  %19 = call i32 @mtkswitch_phy_write_locked(%struct.mtkswitch_softc* %13, i32 %14, i32 %16, i32 %18)
  %20 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %21 = load i32, i32* @MTKSWITCH_GLOBAL_PHY, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @MTKSWITCH_REG_HI(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @MTKSWITCH_VAL_HI(i32 %24)
  %26 = call i32 @mtkswitch_phy_write_locked(%struct.mtkswitch_softc* %20, i32 %21, i32 %23, i32 %25)
  ret i32 0
}

declare dso_local i32 @mtkswitch_phy_write_locked(%struct.mtkswitch_softc*, i32, i32, i32) #1

declare dso_local i32 @MTKSWITCH_REG_ADDR(i32) #1

declare dso_local i32 @MTKSWITCH_REG_LO(i32) #1

declare dso_local i32 @MTKSWITCH_VAL_LO(i32) #1

declare dso_local i32 @MTKSWITCH_REG_HI(i32) #1

declare dso_local i32 @MTKSWITCH_VAL_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
