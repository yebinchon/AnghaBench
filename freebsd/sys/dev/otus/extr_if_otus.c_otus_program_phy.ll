; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_program_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_program_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_channel = type { i32 }

@ar5416_phy_vals_2ghz_20mhz = common dso_local global i32* null, align 8
@ar5416_phy_vals_5ghz_20mhz = common dso_local global i32* null, align 8
@ar5416_phy_regs = common dso_local global i32* null, align 8
@AR_PHY_POWER_TX_RATE_MAX = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE1 = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE2 = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE3 = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE4 = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE5 = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE6 = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE7 = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE8 = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE9 = common dso_local global i32 0, align 4
@AR_PWR_REG_PLL_ADDAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otus_program_phy(%struct.otus_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.otus_softc*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.otus_softc* %0, %struct.otus_softc** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %10 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** @ar5416_phy_vals_2ghz_20mhz, align 8
  store i32* %13, i32** %6, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** @ar5416_phy_vals_5ghz_20mhz, align 8
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %14, %12
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** @ar5416_phy_regs, align 8
  %20 = call i32 @nitems(i32* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %24 = load i32*, i32** @ar5416_phy_regs, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AR_PHY(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @otus_write(%struct.otus_softc* %23, i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %42 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %44 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %52 = call i32 @otus_set_board_values(%struct.otus_softc* %50, %struct.ieee80211_channel* %51)
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %102

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %59 = load i32, i32* @AR_PHY_POWER_TX_RATE_MAX, align 4
  %60 = call i32 @otus_write(%struct.otus_softc* %58, i32 %59, i32 127)
  %61 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %62 = load i32, i32* @AR_PHY_POWER_TX_RATE1, align 4
  %63 = call i32 @otus_write(%struct.otus_softc* %61, i32 %62, i32 1061109567)
  %64 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %65 = load i32, i32* @AR_PHY_POWER_TX_RATE2, align 4
  %66 = call i32 @otus_write(%struct.otus_softc* %64, i32 %65, i32 1061109567)
  %67 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %68 = load i32, i32* @AR_PHY_POWER_TX_RATE3, align 4
  %69 = call i32 @otus_write(%struct.otus_softc* %67, i32 %68, i32 1061109567)
  %70 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %71 = load i32, i32* @AR_PHY_POWER_TX_RATE4, align 4
  %72 = call i32 @otus_write(%struct.otus_softc* %70, i32 %71, i32 1061109567)
  %73 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %74 = load i32, i32* @AR_PHY_POWER_TX_RATE5, align 4
  %75 = call i32 @otus_write(%struct.otus_softc* %73, i32 %74, i32 1061109567)
  %76 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %77 = load i32, i32* @AR_PHY_POWER_TX_RATE6, align 4
  %78 = call i32 @otus_write(%struct.otus_softc* %76, i32 %77, i32 1061109567)
  %79 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %80 = load i32, i32* @AR_PHY_POWER_TX_RATE7, align 4
  %81 = call i32 @otus_write(%struct.otus_softc* %79, i32 %80, i32 1061109567)
  %82 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %83 = load i32, i32* @AR_PHY_POWER_TX_RATE8, align 4
  %84 = call i32 @otus_write(%struct.otus_softc* %82, i32 %83, i32 1061109567)
  %85 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %86 = load i32, i32* @AR_PHY_POWER_TX_RATE9, align 4
  %87 = call i32 @otus_write(%struct.otus_softc* %85, i32 %86, i32 1061109567)
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %89 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %57
  %92 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %93 = load i32, i32* @AR_PWR_REG_PLL_ADDAC, align 4
  %94 = call i32 @otus_write(%struct.otus_softc* %92, i32 %93, i32 20835)
  br label %99

95:                                               ; preds = %57
  %96 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %97 = load i32, i32* @AR_PWR_REG_PLL_ADDAC, align 4
  %98 = call i32 @otus_write(%struct.otus_softc* %96, i32 %97, i32 20803)
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %101 = call i32 @otus_write_barrier(%struct.otus_softc* %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %54
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @otus_write(%struct.otus_softc*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local i32 @otus_set_board_values(%struct.otus_softc*, %struct.ieee80211_channel*) #1

declare dso_local i32 @otus_write_barrier(%struct.otus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
