; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i32, %struct.ipw_softc* }
%struct.ipw_softc = type { i32 }

@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @ipw_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_set_channel(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ipw_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 2
  %6 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  store %struct.ipw_softc* %6, %struct.ipw_softc** %3, align 8
  %7 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %8 = call i32 @IPW_LOCK(%struct.ipw_softc* %7)
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %16 = call i32 @ipw_disable(%struct.ipw_softc* %15)
  %17 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ipw_setchannel(%struct.ipw_softc* %17, i32 %20)
  %22 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %23 = call i32 @ipw_enable(%struct.ipw_softc* %22)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %26 = call i32 @IPW_UNLOCK(%struct.ipw_softc* %25)
  ret void
}

declare dso_local i32 @IPW_LOCK(%struct.ipw_softc*) #1

declare dso_local i32 @ipw_disable(%struct.ipw_softc*) #1

declare dso_local i32 @ipw_setchannel(%struct.ipw_softc*, i32) #1

declare dso_local i32 @ipw_enable(%struct.ipw_softc*) #1

declare dso_local i32 @IPW_UNLOCK(%struct.ipw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
