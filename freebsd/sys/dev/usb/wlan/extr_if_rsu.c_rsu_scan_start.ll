; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_scan_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.ieee80211_scan_state*, %struct.rsu_softc* }
%struct.ieee80211_scan_state = type { i32, i64, i32* }
%struct.rsu_softc = type { i32, i32 }
%struct.ieee80211vap = type { i32 }

@IEEE80211_SCAN_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not send site survey command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @rsu_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_scan_start(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rsu_softc*, align 8
  %4 = alloca %struct.ieee80211_scan_state*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 2
  %9 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  store %struct.rsu_softc* %9, %struct.rsu_softc** %3, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %11, align 8
  store %struct.ieee80211_scan_state* %12, %struct.ieee80211_scan_state** %4, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %14)
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %5, align 8
  %16 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %17 = call i32 @RSU_LOCK(%struct.rsu_softc* %16)
  %18 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_SCAN_ACTIVE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %28 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %30 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i32* [ %38, %34 ], [ null, %39 ]
  %42 = call i32 @rsu_site_survey(%struct.rsu_softc* %29, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %44 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %49 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %53 = call i32 @ieee80211_cancel_scan(%struct.ieee80211vap* %52)
  br label %54

54:                                               ; preds = %47, %40
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RSU_LOCK(%struct.rsu_softc*) #1

declare dso_local i32 @rsu_site_survey(%struct.rsu_softc*, i32*) #1

declare dso_local i32 @RSU_UNLOCK(%struct.rsu_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ieee80211_cancel_scan(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
