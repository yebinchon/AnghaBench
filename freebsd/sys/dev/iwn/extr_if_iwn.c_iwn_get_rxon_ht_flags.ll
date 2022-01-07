; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_get_rxon_ht_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_get_rxon_ht_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IWN_RXON_HT_MODEPURE40 = common dso_local global i32 0, align 4
@IWN_RXON_HT_MODEMIXED = common dso_local global i32 0, align 4
@IWN_RXON_HT_HT40MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwn_softc*, %struct.ieee80211_channel*)* @iwn_get_rxon_ht_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn_get_rxon_ht_flags(%struct.iwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwn_softc*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  store %struct.iwn_softc* %0, %struct.iwn_softc** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %8 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %9 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %8, i32 0, i32 0
  store %struct.ieee80211com* %9, %struct.ieee80211com** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %11 = call i32 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IWN_RXON_HT_PROTMODE(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %22 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %32 [
    i32 128, label %28
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @IWN_RXON_HT_MODEPURE40, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @IWN_RXON_HT_MODEMIXED, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %14
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %39 = call i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @IWN_RXON_HT_HT40MINUS, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

declare dso_local i32 @IWN_RXON_HT_PROTMODE(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
