; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_usb_timeout_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_usb_timeout_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.run_softc* }
%struct.run_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@IEEE80211_S_SCAN = common dso_local global i64 0, align 8
@RUN_DEBUG_USB = common dso_local global i32 0, align 4
@RUN_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"timeout caused by scan\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"timeout by unknown cause\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_usb_timeout_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_usb_timeout_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.run_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ieee80211vap*
  store %struct.ieee80211vap* %6, %struct.ieee80211vap** %3, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.run_softc*, %struct.run_softc** %10, align 8
  store %struct.run_softc* %11, %struct.run_softc** %4, align 8
  %12 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @RUN_LOCK_ASSERT(%struct.run_softc* %12, i32 %13)
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IEEE80211_S_RUN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IEEE80211_M_STA, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %28 = call i32 @run_reset_livelock(%struct.run_softc* %27)
  br label %50

29:                                               ; preds = %20, %1
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE80211_S_SCAN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %37 = load i32, i32* @RUN_DEBUG_USB, align 4
  %38 = load i32, i32* @RUN_DEBUG_STATE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @RUN_DPRINTF(%struct.run_softc* %36, i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %42 = call i32 @ieee80211_cancel_scan(%struct.ieee80211vap* %41)
  br label %49

43:                                               ; preds = %29
  %44 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %45 = load i32, i32* @RUN_DEBUG_USB, align 4
  %46 = load i32, i32* @RUN_DEBUG_STATE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @RUN_DPRINTF(%struct.run_softc* %44, i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %35
  br label %50

50:                                               ; preds = %49, %26
  ret void
}

declare dso_local i32 @RUN_LOCK_ASSERT(%struct.run_softc*, i32) #1

declare dso_local i32 @run_reset_livelock(%struct.run_softc*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*) #1

declare dso_local i32 @ieee80211_cancel_scan(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
