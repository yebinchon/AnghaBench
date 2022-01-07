; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_update_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_update_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i64, %struct.wi_softc* }
%struct.wi_softc = type { i32 }

@WI_RID_PROMISC = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @wi_update_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wi_update_promisc(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.wi_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 2
  %6 = load %struct.wi_softc*, %struct.wi_softc** %5, align 8
  store %struct.wi_softc* %6, %struct.wi_softc** %3, align 8
  %7 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %8 = call i32 @WI_LOCK(%struct.wi_softc* %7)
  %9 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %10 = load i32, i32* @WI_RID_PROMISC, align 4
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i1 [ true, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @wi_write_val(%struct.wi_softc* %9, i32 %10, i32 %23)
  %25 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %26 = call i32 @WI_UNLOCK(%struct.wi_softc* %25)
  ret void
}

declare dso_local i32 @WI_LOCK(%struct.wi_softc*) #1

declare dso_local i32 @wi_write_val(%struct.wi_softc*, i32, i32) #1

declare dso_local i32 @WI_UNLOCK(%struct.wi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
