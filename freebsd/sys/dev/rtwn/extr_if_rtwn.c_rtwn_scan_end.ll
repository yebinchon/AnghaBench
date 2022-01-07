; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_scan_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_scan_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.rtwn_softc* }
%struct.rtwn_softc = type { i64, i64 }

@RTWN_LED_LINK = common dso_local global i32 0, align 4
@R92C_TXPAUSE = common dso_local global i32 0, align 4
@R92C_TX_QUEUE_BCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @rtwn_scan_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_scan_end(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rtwn_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 1
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  store %struct.rtwn_softc* %6, %struct.rtwn_softc** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %8 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %7)
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %20 = call i32 @rtwn_set_rx_bssid_all(%struct.rtwn_softc* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %13, %1
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %23 = load i32, i32* @RTWN_LED_LINK, align 4
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @rtwn_set_led(%struct.rtwn_softc* %22, i32 %23, i32 %28)
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %31 = call i32 @rtwn_calc_basicrates(%struct.rtwn_softc* %30)
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %33 = load i32, i32* @R92C_TXPAUSE, align 4
  %34 = load i32, i32* @R92C_TX_QUEUE_BCN, align 4
  %35 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %37 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %36)
  ret void
}

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_set_rx_bssid_all(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_set_led(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_calc_basicrates(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
