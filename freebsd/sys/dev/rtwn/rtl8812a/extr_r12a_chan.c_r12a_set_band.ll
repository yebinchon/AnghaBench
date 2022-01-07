; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_chan.c_r12a_set_band.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_chan.c_r12a_set_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, %struct.r12a_softc*, %struct.ieee80211com }
%struct.r12a_softc = type { i32, i32 }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_channel = type { i32 }

@RTWN_STARTED = common dso_local global i32 0, align 4
@RTWN_RUNNING = common dso_local global i32 0, align 4
@R12A_CCK_CHECK = common dso_local global i32 0, align 4
@R12A_CCK_CHECK_5GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wrong channel flags %08X\0A\00", align 1
@R12A_TX_SCALE_SWING_M = common dso_local global i32 0, align 4
@R12A_TX_SCALE_SWING_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.ieee80211_channel*)* @r12a_set_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12a_set_band(%struct.rtwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.r12a_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %11, i32 0, i32 2
  store %struct.ieee80211com* %12, %struct.ieee80211com** %5, align 8
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %13, i32 0, i32 1
  %15 = load %struct.r12a_softc*, %struct.r12a_softc** %14, align 8
  store %struct.r12a_softc* %15, %struct.r12a_softc** %6, align 8
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RTWN_STARTED, align 4
  %20 = load i32, i32* @RTWN_RUNNING, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @RTWN_STARTED, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %27 = call i32 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %26)
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %29 = load i32, i32* @R12A_CCK_CHECK, align 4
  %30 = call i32 @rtwn_read_1(%struct.rtwn_softc* %28, i32 %29)
  %31 = load i32, i32* @R12A_CCK_CHECK_5GHZ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = xor i32 %27, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %100

39:                                               ; preds = %25, %2
  %40 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %41 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %43 = call i32 @ieee80211_get_suprates(%struct.ieee80211com* %41, %struct.ieee80211_channel* %42)
  %44 = call i32 @rtwn_get_rates(%struct.rtwn_softc* %40, i32 %43, i32* null, i32* %7, i32* null, i32 1)
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %46 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rtwn_r12a_set_band_2ghz(%struct.rtwn_softc* %49, i32 %50)
  %52 = load %struct.r12a_softc*, %struct.r12a_softc** %6, align 8
  %53 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  br label %74

55:                                               ; preds = %39
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %57 = call i32 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @rtwn_r12a_set_band_5ghz(%struct.rtwn_softc* %60, i32 %61)
  %63 = load %struct.r12a_softc*, %struct.r12a_softc** %6, align 8
  %64 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  br label %73

66:                                               ; preds = %55
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @KASSERT(i32 0, i8* %71)
  br label %100

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %48
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %97, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 2
  %82 = ashr i32 %79, %81
  %83 = and i32 %82, 3
  switch i32 %83, label %88 [
    i32 0, label %84
    i32 1, label %85
    i32 2, label %86
    i32 3, label %87
  ]

84:                                               ; preds = %78
  store i32 512, i32* %10, align 4
  br label %88

85:                                               ; preds = %78
  store i32 362, i32* %10, align 4
  br label %88

86:                                               ; preds = %78
  store i32 257, i32* %10, align 4
  br label %88

87:                                               ; preds = %78
  store i32 182, i32* %10, align 4
  br label %88

88:                                               ; preds = %78, %87, %86, %85, %84
  %89 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @R12A_TX_SCALE(i32 %90)
  %92 = load i32, i32* @R12A_TX_SCALE_SWING_M, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @R12A_TX_SCALE_SWING_S, align 4
  %95 = shl i32 %93, %94
  %96 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %89, i32 %91, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %75

100:                                              ; preds = %38, %66, %75
  ret void
}

declare dso_local i32 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @rtwn_read_1(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_get_rates(%struct.rtwn_softc*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_get_suprates(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @rtwn_r12a_set_band_2ghz(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_r12a_set_band_5ghz(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @R12A_TX_SCALE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
