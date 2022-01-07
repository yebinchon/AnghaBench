; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__*, %struct.ieee80211com* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211com = type { %struct.ipw_softc* }
%struct.ipw_softc = type { i32 }
%struct.ifmediareq = type { i32 }

@IPW_INFO_CURRENT_TX_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @ipw_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ipw_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %5, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 1
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %6, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load %struct.ipw_softc*, %struct.ipw_softc** %15, align 8
  store %struct.ipw_softc* %16, %struct.ipw_softc** %7, align 8
  %17 = load %struct.ipw_softc*, %struct.ipw_softc** %7, align 8
  %18 = load i32, i32* @IPW_INFO_CURRENT_TX_RATE, align 4
  %19 = call i32 @ipw_read_table1(%struct.ipw_softc* %17, i32 %18)
  %20 = and i32 %19, 15
  %21 = call i32 @ipw_cvtrate(i32 %20)
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %27 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %28 = call i32 @ieee80211_media_status(%struct.ifnet* %26, %struct.ifmediareq* %27)
  ret void
}

declare dso_local i32 @ipw_cvtrate(i32) #1

declare dso_local i32 @ipw_read_table1(%struct.ipw_softc*, i32) #1

declare dso_local i32 @ieee80211_media_status(%struct.ifnet*, %struct.ifmediareq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
