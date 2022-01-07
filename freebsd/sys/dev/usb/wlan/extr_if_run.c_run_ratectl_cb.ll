; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_ratectl_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_ratectl_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i64, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32 }
%struct.ieee80211vap = type { i64 }

@IEEE80211_M_STA = common dso_local global i64 0, align 8
@run_iter_func = common dso_local global i32 0, align 4
@RUN_RATECTL_OFF = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@run_ratectl_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @run_ratectl_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_ratectl_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.run_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.run_softc*
  store %struct.run_softc* %9, %struct.run_softc** %5, align 8
  %10 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %11 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %10, i32 0, i32 3
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 1
  %14 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %13)
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %7, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %16 = icmp eq %struct.ieee80211vap* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %61

18:                                               ; preds = %2
  %19 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %20 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE80211_M_STA, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23, %18
  %30 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %31 = call i32 @RUN_LOCK(%struct.run_softc* %30)
  %32 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %33 = call i32 @run_reset_livelock(%struct.run_softc* %32)
  %34 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %35 = call i32 @run_drain_fifo(%struct.run_softc* %34)
  %36 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %37 = call i32 @RUN_UNLOCK(%struct.run_softc* %36)
  br label %38

38:                                               ; preds = %29, %23
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 0
  %41 = load i32, i32* @run_iter_func, align 4
  %42 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %43 = call i32 @ieee80211_iterate_nodes(i32* %40, i32 %41, %struct.run_softc* %42)
  %44 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %45 = call i32 @RUN_LOCK(%struct.run_softc* %44)
  %46 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %47 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RUN_RATECTL_OFF, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %38
  %52 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %53 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %52, i32 0, i32 2
  %54 = load i32, i32* @hz, align 4
  %55 = load i32, i32* @run_ratectl_to, align 4
  %56 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %57 = call i32 @usb_callout_reset(i32* %53, i32 %54, i32 %55, %struct.run_softc* %56)
  br label %58

58:                                               ; preds = %51, %38
  %59 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %60 = call i32 @RUN_UNLOCK(%struct.run_softc* %59)
  br label %61

61:                                               ; preds = %58, %17
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @run_reset_livelock(%struct.run_softc*) #1

declare dso_local i32 @run_drain_fifo(%struct.run_softc*) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i32 @ieee80211_iterate_nodes(i32*, i32, %struct.run_softc*) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.run_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
