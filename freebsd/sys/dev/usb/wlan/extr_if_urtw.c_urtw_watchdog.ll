; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i64, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @urtw_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.urtw_softc*
  store %struct.urtw_softc* %6, %struct.urtw_softc** %3, align 8
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %8 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %7, i32 0, i32 3
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %10 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %15 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %21 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @counter_u64_add(i32 %26, i32 1)
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %29 = call i32 @ieee80211_restart_all(%struct.ieee80211com* %28)
  br label %36

30:                                               ; preds = %13
  %31 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %32 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %31, i32 0, i32 1
  %33 = load i32, i32* @hz, align 4
  %34 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %35 = call i32 @callout_reset(i32* %32, i32 %33, void (i8*)* @urtw_watchdog, %struct.urtw_softc* %34)
  br label %36

36:                                               ; preds = %19, %30, %1
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ieee80211_restart_all(%struct.ieee80211com*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.urtw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
