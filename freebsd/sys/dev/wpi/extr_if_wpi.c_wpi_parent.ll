; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i32, %struct.wpi_softc* }
%struct.wpi_softc = type { i32 }
%struct.ieee80211vap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @wpi_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 2
  %7 = load %struct.wpi_softc*, %struct.wpi_softc** %6, align 8
  store %struct.wpi_softc* %7, %struct.wpi_softc** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 1
  %10 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %9)
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %4, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %17 = call i64 @wpi_init(%struct.wpi_softc* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = call i32 @ieee80211_notify_radio(%struct.ieee80211com* %20, i32 1)
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %23 = call i32 @ieee80211_start_all(%struct.ieee80211com* %22)
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %26 = call i32 @ieee80211_notify_radio(%struct.ieee80211com* %25, i32 0)
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %28 = call i32 @ieee80211_stop(%struct.ieee80211vap* %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %32 = call i32 @ieee80211_notify_radio(%struct.ieee80211com* %31, i32 0)
  %33 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %34 = call i32 @wpi_stop(%struct.wpi_softc* %33)
  br label %35

35:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @wpi_init(%struct.wpi_softc*) #1

declare dso_local i32 @ieee80211_notify_radio(%struct.ieee80211com*, i32) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_stop(%struct.ieee80211vap*) #1

declare dso_local i32 @wpi_stop(%struct.wpi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
