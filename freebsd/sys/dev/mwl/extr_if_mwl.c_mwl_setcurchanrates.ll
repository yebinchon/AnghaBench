; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setcurchanrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setcurchanrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_rateset = type { i32* }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_softc*)* @mwl_setcurchanrates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_setcurchanrates(%struct.mwl_softc* %0) #0 {
  %2 = alloca %struct.mwl_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_rateset*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  store %struct.mwl_softc* %0, %struct.mwl_softc** %2, align 8
  %6 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %6, i32 0, i32 1
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = call i32 @memset(%struct.TYPE_4__* %5, i32 0, i32 8)
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ieee80211_rateset* @ieee80211_get_suprates(%struct.ieee80211com* %9, i32 %12)
  store %struct.ieee80211_rateset* %13, %struct.ieee80211_rateset** %4, align 8
  %14 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %20 = and i32 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mwl_hal_settxrate_auto(i32 %27, %struct.TYPE_4__* %5)
  ret i32 %28
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.ieee80211_rateset* @ieee80211_get_suprates(%struct.ieee80211com*, i32) #1

declare dso_local i32 @mwl_hal_settxrate_auto(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
