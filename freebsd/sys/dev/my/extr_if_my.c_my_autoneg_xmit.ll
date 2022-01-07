; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_autoneg_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_autoneg_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { i32 }

@PHY_BMCR = common dso_local global i32 0, align 4
@PHY_BMCR_RESET = common dso_local global i32 0, align 4
@PHY_BMCR_AUTONEGENBL = common dso_local global i32 0, align 4
@PHY_BMCR_AUTONEGRSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_softc*)* @my_autoneg_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_autoneg_xmit(%struct.my_softc* %0) #0 {
  %2 = alloca %struct.my_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %5 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %4)
  %6 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %7 = load i32, i32* @PHY_BMCR, align 4
  %8 = load i32, i32* @PHY_BMCR_RESET, align 4
  %9 = call i32 @my_phy_writereg(%struct.my_softc* %6, i32 %7, i32 %8)
  %10 = call i32 @DELAY(i32 500)
  br label %11

11:                                               ; preds = %18, %1
  %12 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %13 = load i32, i32* @PHY_BMCR, align 4
  %14 = call i32 @my_phy_readreg(%struct.my_softc* %12, i32 %13)
  %15 = load i32, i32* @PHY_BMCR_RESET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %11

19:                                               ; preds = %11
  %20 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %21 = load i32, i32* @PHY_BMCR, align 4
  %22 = call i32 @my_phy_readreg(%struct.my_softc* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @PHY_BMCR_AUTONEGENBL, align 4
  %24 = load i32, i32* @PHY_BMCR_AUTONEGRSTR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %29 = load i32, i32* @PHY_BMCR, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @my_phy_writereg(%struct.my_softc* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @my_phy_writereg(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @my_phy_readreg(%struct.my_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
