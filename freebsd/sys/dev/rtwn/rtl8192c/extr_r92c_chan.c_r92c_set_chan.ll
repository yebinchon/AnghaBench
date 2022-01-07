; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_chan.c_r92c_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_chan.c_r92c_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, %struct.r92c_softc* }
%struct.r92c_softc = type { i32* }
%struct.ieee80211_channel = type { i32 }

@R92C_RF_CHNLBW = common dso_local global i32 0, align 4
@R92C_RF_CHNLBW_CHNL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_set_chan(%struct.rtwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.r92c_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %8, i32 0, i32 1
  %10 = load %struct.r92c_softc*, %struct.r92c_softc** %9, align 8
  store %struct.r92c_softc* %10, %struct.r92c_softc** %5, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %12 = call i32 @rtwn_chan2centieee(%struct.ieee80211_channel* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %15 = call i32 @r92c_set_txpower(%struct.rtwn_softc* %13, %struct.ieee80211_channel* %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %37, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %19 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @R92C_RF_CHNLBW, align 4
  %26 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  %27 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @R92C_RF_CHNLBW_CHNL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @RW(i32 %32, i32 %33, i32 %34)
  %36 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %23, i32 %24, i32 %25, i32 %35)
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %42 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %48 = call i32 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %47)
  %49 = call i32 @r92c_set_bw40(%struct.rtwn_softc* %45, i32 %46, i32 %48)
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @rtwn_r92c_set_bw20(%struct.rtwn_softc* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @rtwn_chan2centieee(%struct.ieee80211_channel*) #1

declare dso_local i32 @r92c_set_txpower(%struct.rtwn_softc*, %struct.ieee80211_channel*) #1

declare dso_local i32 @rtwn_rf_write(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @RW(i32, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @r92c_set_bw40(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel*) #1

declare dso_local i32 @rtwn_r92c_set_bw20(%struct.rtwn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
