; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i32, %struct.rsu_softc* }
%struct.rsu_softc = type { i32 }
%struct.ieee80211vap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @rsu_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rsu_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 2
  %7 = load %struct.rsu_softc*, %struct.rsu_softc** %6, align 8
  store %struct.rsu_softc* %7, %struct.rsu_softc** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %14 = call i64 @rsu_init(%struct.rsu_softc* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %18 = call i32 @ieee80211_start_all(%struct.ieee80211com* %17)
  br label %29

19:                                               ; preds = %12
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 1
  %22 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %21)
  store %struct.ieee80211vap* %22, %struct.ieee80211vap** %4, align 8
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %24 = icmp ne %struct.ieee80211vap* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %27 = call i32 @ieee80211_stop(%struct.ieee80211vap* %26)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %16
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %32 = call i32 @rsu_stop(%struct.rsu_softc* %31)
  br label %33

33:                                               ; preds = %30, %29
  ret void
}

declare dso_local i64 @rsu_init(%struct.rsu_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ieee80211_stop(%struct.ieee80211vap*) #1

declare dso_local i32 @rsu_stop(%struct.rsu_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
