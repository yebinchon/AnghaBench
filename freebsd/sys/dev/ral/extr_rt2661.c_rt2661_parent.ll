; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.rt2661_softc* }
%struct.rt2661_softc = type { i32 }

@RAL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @rt2661_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2661_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rt2661_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  store %struct.rt2661_softc* %7, %struct.rt2661_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %9 = call i32 @RAL_LOCK(%struct.rt2661_softc* %8)
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %16 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RAL_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %23 = call i32 @rt2661_init_locked(%struct.rt2661_softc* %22)
  store i32 1, i32* %4, align 4
  br label %27

24:                                               ; preds = %14
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %26 = call i32 @rt2661_update_promisc(%struct.ieee80211com* %25)
  br label %27

27:                                               ; preds = %24, %21
  br label %39

28:                                               ; preds = %1
  %29 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RAL_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %37 = call i32 @rt2661_stop_locked(%struct.rt2661_softc* %36)
  br label %38

38:                                               ; preds = %35, %28
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %41 = call i32 @RAL_UNLOCK(%struct.rt2661_softc* %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %46 = call i32 @ieee80211_start_all(%struct.ieee80211com* %45)
  br label %47

47:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @RAL_LOCK(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_init_locked(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_update_promisc(%struct.ieee80211com*) #1

declare dso_local i32 @rt2661_stop_locked(%struct.rt2661_softc*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.rt2661_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
