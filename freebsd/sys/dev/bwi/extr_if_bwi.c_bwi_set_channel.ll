; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.ieee80211_channel*, %struct.bwi_softc* }
%struct.ieee80211_channel = type { i32 }
%struct.bwi_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bwi_mac = type { i32 }

@BWI_REGWIN_T_MAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"current regwin type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @bwi_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_set_channel(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.bwi_mac*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 1
  %8 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  store %struct.bwi_softc* %8, %struct.bwi_softc** %3, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  store %struct.ieee80211_channel* %11, %struct.ieee80211_channel** %4, align 8
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %13 = call i32 @BWI_LOCK(%struct.bwi_softc* %12)
  %14 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BWI_REGWIN_T_MAC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %21, i8* %27)
  %29 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = bitcast %struct.TYPE_2__* %31 to %struct.bwi_mac*
  store %struct.bwi_mac* %32, %struct.bwi_mac** %5, align 8
  %33 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %36 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %34, %struct.ieee80211_channel* %35)
  %37 = call i32 @bwi_rf_set_chan(%struct.bwi_mac* %33, i32 %36, i32 0)
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %39 = call i32 @ieee80211_get_ratetable(%struct.ieee80211_channel* %38)
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %41 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %43 = call i32 @BWI_UNLOCK(%struct.bwi_softc* %42)
  ret void
}

declare dso_local i32 @BWI_LOCK(%struct.bwi_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_rf_set_chan(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ieee80211_get_ratetable(%struct.ieee80211_channel*) #1

declare dso_local i32 @BWI_UNLOCK(%struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
