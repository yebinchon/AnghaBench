; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_monitor_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_monitor_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.rsu_softc* }
%struct.rsu_softc = type { i32 }
%struct.rsu_vap = type { i32 (%struct.ieee80211vap.0*, i32, i32)* }
%struct.ieee80211vap.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32)* @rsu_monitor_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_monitor_newstate(%struct.ieee80211vap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.rsu_softc*, align 8
  %9 = alloca %struct.rsu_vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %7, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load %struct.rsu_softc*, %struct.rsu_softc** %14, align 8
  store %struct.rsu_softc* %15, %struct.rsu_softc** %8, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %17 = call %struct.rsu_vap* @RSU_VAP(%struct.ieee80211vap* %16)
  store %struct.rsu_vap* %17, %struct.rsu_vap** %9, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %3
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %25 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %24)
  %26 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %27 = call i32 @RSU_LOCK(%struct.rsu_softc* %26)
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %39 [
    i32 129, label %29
    i32 128, label %34
  ]

29:                                               ; preds = %23
  %30 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %31 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %33 = call i32 @rsu_set_led(%struct.rsu_softc* %32, i32 0)
  br label %40

34:                                               ; preds = %23
  %35 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %36 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %38 = call i32 @rsu_set_led(%struct.rsu_softc* %37, i32 1)
  br label %40

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %34, %29
  %41 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %42 = call i32 @rsu_rxfilter_refresh(%struct.rsu_softc* %41)
  %43 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %44 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %43)
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %46 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %45)
  br label %47

47:                                               ; preds = %40, %3
  %48 = load %struct.rsu_vap*, %struct.rsu_vap** %9, align 8
  %49 = getelementptr inbounds %struct.rsu_vap, %struct.rsu_vap* %48, i32 0, i32 0
  %50 = load i32 (%struct.ieee80211vap.0*, i32, i32)*, i32 (%struct.ieee80211vap.0*, i32, i32)** %49, align 8
  %51 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %52 = bitcast %struct.ieee80211vap* %51 to %struct.ieee80211vap.0*
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 %50(%struct.ieee80211vap.0* %52, i32 %53, i32 %54)
  ret i32 %55
}

declare dso_local %struct.rsu_vap* @RSU_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @RSU_LOCK(%struct.rsu_softc*) #1

declare dso_local i32 @rsu_set_led(%struct.rsu_softc*, i32) #1

declare dso_local i32 @rsu_rxfilter_refresh(%struct.rsu_softc*) #1

declare dso_local i32 @RSU_UNLOCK(%struct.rsu_softc*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
