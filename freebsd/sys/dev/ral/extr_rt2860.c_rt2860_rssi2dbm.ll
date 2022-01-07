; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_rssi2dbm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_rssi2dbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32*, i32*, i32*, %struct.ieee80211com }
%struct.ieee80211com = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rt2860_softc*, i64, i64)* @rt2860_rssi2dbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rt2860_rssi2dbm(%struct.rt2860_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rt2860_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %12 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %11, i32 0, i32 3
  store %struct.ieee80211com* %12, %struct.ieee80211com** %7, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  store %struct.ieee80211_channel* %15, %struct.ieee80211_channel** %8, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %3
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %22 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %20, %struct.ieee80211_channel* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %24 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sle i32 %29, 64
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %33 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %59

39:                                               ; preds = %19
  %40 = load i32, i32* %10, align 4
  %41 = icmp sle i32 %40, 128
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %44 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %58

50:                                               ; preds = %39
  %51 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %52 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %50, %42
  br label %59

59:                                               ; preds = %58, %31
  br label %73

60:                                               ; preds = %3
  %61 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %62 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rt2860_softc*, %struct.rt2860_softc** %4, align 8
  %68 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %66, %71
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %60, %59
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 -12, %74
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %5, align 8
  %78 = sub i64 %76, %77
  ret i64 %78
}

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
