; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_update_aifs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_update_aifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.wmeParams*, %struct.TYPE_2__ }
%struct.wmeParams = type { i64 }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@WME_AC_BE = common dso_local global i64 0, align 8
@WME_NUM_AC = common dso_local global i64 0, align 8
@IEEE80211_DUR_OFDM_SIFS = common dso_local global i64 0, align 8
@IEEE80211_DUR_SIFS = common dso_local global i64 0, align 8
@wme2reg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i64)* @rtwn_update_aifs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_update_aifs(%struct.rtwn_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.wmeParams*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  store %struct.ieee80211_channel* %12, %struct.ieee80211_channel** %5, align 8
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %13, i32 0, i32 0
  %15 = load %struct.wmeParams*, %struct.wmeParams** %14, align 8
  store %struct.wmeParams* %15, %struct.wmeParams** %6, align 8
  %16 = load i64, i64* @WME_AC_BE, align 8
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %46, %2
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @WME_NUM_AC, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.wmeParams*, %struct.wmeParams** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %22, i64 %23
  %25 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = mul i64 %26, %27
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* @IEEE80211_DUR_OFDM_SIFS, align 8
  br label %36

34:                                               ; preds = %21
  %35 = load i64, i64* @IEEE80211_DUR_SIFS, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = add i64 %28, %37
  store i64 %38, i64* %7, align 8
  %39 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %40 = load i32*, i32** @wme2reg, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @rtwn_write_1(%struct.rtwn_softc* %39, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %17

49:                                               ; preds = %17
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
