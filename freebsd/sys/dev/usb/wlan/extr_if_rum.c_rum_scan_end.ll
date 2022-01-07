; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_scan_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_scan_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i64, %struct.rum_softc* }
%struct.rum_softc = type { i32 }

@IEEE80211_FEXT_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_M_AHDEMO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @rum_scan_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_scan_end(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rum_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 2
  %6 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  store %struct.rum_softc* %6, %struct.rum_softc** %3, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IEEE80211_FEXT_BGSCAN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %15 = call i32 @RUM_LOCK(%struct.rum_softc* %14)
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IEEE80211_M_AHDEMO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %23 = call i32 @rum_enable_tsf_sync(%struct.rum_softc* %22)
  br label %27

24:                                               ; preds = %13
  %25 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %26 = call i32 @rum_enable_tsf(%struct.rum_softc* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %29 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rum_set_bssid(%struct.rum_softc* %28, i32 %31)
  %33 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %34 = call i32 @RUM_UNLOCK(%struct.rum_softc* %33)
  br label %35

35:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @rum_enable_tsf_sync(%struct.rum_softc*) #1

declare dso_local i32 @rum_enable_tsf(%struct.rum_softc*) #1

declare dso_local i32 @rum_set_bssid(%struct.rum_softc*, i32) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
