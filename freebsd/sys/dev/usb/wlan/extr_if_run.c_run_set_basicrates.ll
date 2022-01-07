; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_set_basicrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_set_basicrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@RT2860_LEGACY_BASIC_RATE = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_set_basicrates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_set_basicrates(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %4 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %5 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %4, i32 0, i32 0
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %13 = load i32, i32* @RT2860_LEGACY_BASIC_RATE, align 4
  %14 = call i32 @run_write(%struct.run_softc* %12, i32 %13, i32 3)
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %23 = load i32, i32* @RT2860_LEGACY_BASIC_RATE, align 4
  %24 = call i32 @run_write(%struct.run_softc* %22, i32 %23, i32 336)
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %27 = load i32, i32* @RT2860_LEGACY_BASIC_RATE, align 4
  %28 = call i32 @run_write(%struct.run_softc* %26, i32 %27, i32 351)
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %11
  ret void
}

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
