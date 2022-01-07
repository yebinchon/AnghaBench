; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_set_basicrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_set_basicrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_rateset = type { i32, i32* }

@IEEE80211_RATE_BASIC = common dso_local global i32 0, align 4
@RT2860_LEGACY_BASIC_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2860_set_basicrates(%struct.rt2860_softc* %0, %struct.ieee80211_rateset* %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca %struct.ieee80211_rateset*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store %struct.ieee80211_rateset* %1, %struct.ieee80211_rateset** %4, align 8
  %9 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %9, i32 0, i32 0
  store %struct.ieee80211com* %10, %struct.ieee80211com** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %40

30:                                               ; preds = %17
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @IEEE80211_RV(i32 %34)
  %36 = call i32 @ieee80211_legacy_rate_lookup(i32 %33, i32 %35)
  %37 = shl i32 1, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %30, %29
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %45 = load i32, i32* @RT2860_LEGACY_BASIC_RATE, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @RAL_WRITE(%struct.rt2860_softc* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @ieee80211_legacy_rate_lookup(i32, i32) #1

declare dso_local i32 @IEEE80211_RV(i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
