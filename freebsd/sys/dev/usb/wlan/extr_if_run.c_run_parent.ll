; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.run_softc* }
%struct.run_softc = type { i32, i32, i64 }

@RUN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @run_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  store %struct.run_softc* %7, %struct.run_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %9 = call i32 @RUN_LOCK(%struct.run_softc* %8)
  %10 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %11 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %16 = call i32 @RUN_UNLOCK(%struct.run_softc* %15)
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %24 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RUN_RUNNING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  %30 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %31 = call i32 @run_init_locked(%struct.run_softc* %30)
  br label %35

32:                                               ; preds = %22
  %33 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %34 = call i32 @run_update_promisc_locked(%struct.run_softc* %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %52

36:                                               ; preds = %17
  %37 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %38 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RUN_RUNNING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %45 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %50 = call i32 @run_stop(%struct.run_softc* %49)
  br label %51

51:                                               ; preds = %48, %43, %36
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %54 = call i32 @RUN_UNLOCK(%struct.run_softc* %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %59 = call i32 @ieee80211_start_all(%struct.ieee80211com* %58)
  br label %60

60:                                               ; preds = %14, %57, %52
  ret void
}

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i32 @run_init_locked(%struct.run_softc*) #1

declare dso_local i32 @run_update_promisc_locked(%struct.run_softc*) #1

declare dso_local i32 @run_stop(%struct.run_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
