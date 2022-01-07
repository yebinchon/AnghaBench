; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_chan.c_r92e_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_chan.c_r92e_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, %struct.r92e_softc* }
%struct.r92e_softc = type { i32* }
%struct.ieee80211_channel = type { i32 }

@R92C_RF_CHNLBW = common dso_local global i32 0, align 4
@R92C_RF_CHNLBW_CHNL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92e_set_chan(%struct.rtwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.r92e_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %8, i32 0, i32 1
  %10 = load %struct.r92e_softc*, %struct.r92e_softc** %9, align 8
  store %struct.r92e_softc* %10, %struct.r92e_softc** %5, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %12 = call i32 @rtwn_chan2centieee(%struct.ieee80211_channel* %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %32, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %16 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @R92C_RF_CHNLBW, align 4
  %23 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %24 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @R92C_RF_CHNLBW_CHNL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @RW(i32 %27, i32 %28, i32 %29)
  %31 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %20, i32 %21, i32 %22, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %37 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %43 = call i32 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %42)
  %44 = call i32 @r92e_set_bw40(%struct.rtwn_softc* %40, i32 %41, i32 %43)
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @r92e_set_bw20(%struct.rtwn_softc* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %52 = call i32 @r92e_set_txpower(%struct.rtwn_softc* %50, %struct.ieee80211_channel* %51)
  ret void
}

declare dso_local i32 @rtwn_chan2centieee(%struct.ieee80211_channel*) #1

declare dso_local i32 @rtwn_rf_write(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @RW(i32, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @r92e_set_bw40(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel*) #1

declare dso_local i32 @r92e_set_bw20(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @r92e_set_txpower(%struct.rtwn_softc*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
