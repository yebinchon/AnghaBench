; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_jumbo_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_jumbo_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i64 }

@ETHER_MAX_LEN = common dso_local global i64 0, align 8
@MII_MODEL_BROADCOM_BCM5401 = common dso_local global i64 0, align 8
@BRGPHY_MII_AUXCTL = common dso_local global i32 0, align 4
@BRGPHY_AUXCTL_LONG_PKT = common dso_local global i32 0, align 4
@BRGPHY_MII_PHY_EXTCTL = common dso_local global i32 0, align 4
@BRGPHY_PHY_EXTCTL_HIGH_LA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*, i64)* @brgphy_jumbo_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brgphy_jumbo_settings(%struct.mii_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @ETHER_MAX_LEN, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MII_MODEL_BROADCOM_BCM5401, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %17 = load i32, i32* @BRGPHY_MII_AUXCTL, align 4
  %18 = call i32 @PHY_WRITE(%struct.mii_softc* %16, i32 %17, i32 19488)
  br label %32

19:                                               ; preds = %9
  %20 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %21 = load i32, i32* @BRGPHY_MII_AUXCTL, align 4
  %22 = call i32 @PHY_WRITE(%struct.mii_softc* %20, i32 %21, i32 7)
  %23 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %24 = load i32, i32* @BRGPHY_MII_AUXCTL, align 4
  %25 = call i32 @PHY_READ(%struct.mii_softc* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %27 = load i32, i32* @BRGPHY_MII_AUXCTL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BRGPHY_AUXCTL_LONG_PKT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @PHY_WRITE(%struct.mii_softc* %26, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %19, %15
  %33 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %34 = load i32, i32* @BRGPHY_MII_PHY_EXTCTL, align 4
  %35 = call i32 @PHY_READ(%struct.mii_softc* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %37 = load i32, i32* @BRGPHY_MII_PHY_EXTCTL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BRGPHY_PHY_EXTCTL_HIGH_LA, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @PHY_WRITE(%struct.mii_softc* %36, i32 %37, i32 %40)
  br label %67

42:                                               ; preds = %2
  %43 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %44 = load i32, i32* @BRGPHY_MII_AUXCTL, align 4
  %45 = call i32 @PHY_WRITE(%struct.mii_softc* %43, i32 %44, i32 7)
  %46 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %47 = load i32, i32* @BRGPHY_MII_AUXCTL, align 4
  %48 = call i32 @PHY_READ(%struct.mii_softc* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %50 = load i32, i32* @BRGPHY_MII_AUXCTL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @BRGPHY_AUXCTL_LONG_PKT, align 4
  %53 = or i32 %52, 7
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  %56 = call i32 @PHY_WRITE(%struct.mii_softc* %49, i32 %50, i32 %55)
  %57 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %58 = load i32, i32* @BRGPHY_MII_PHY_EXTCTL, align 4
  %59 = call i32 @PHY_READ(%struct.mii_softc* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %61 = load i32, i32* @BRGPHY_MII_PHY_EXTCTL, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @BRGPHY_PHY_EXTCTL_HIGH_LA, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @PHY_WRITE(%struct.mii_softc* %60, i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %42, %32
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
