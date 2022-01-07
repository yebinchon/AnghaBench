; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_rxfilter_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_rxfilter_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i64, %struct.ieee80211com }
%struct.ieee80211com = type { i64, i64 }

@R92S_RCR_ACF = common dso_local global i32 0, align 4
@R92S_RCR_AAP = common dso_local global i32 0, align 4
@R92S_RCR_APM = common dso_local global i32 0, align 4
@R92S_RCR_CBSSID = common dso_local global i32 0, align 4
@R92S_RCR_ADF = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@R92S_RXFLTMAP_MGT_DEF = common dso_local global i64 0, align 8
@R92S_RXFLTMAP_MGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsu_softc*)* @rsu_rxfilter_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_rxfilter_refresh(%struct.rsu_softc* %0) #0 {
  %2 = alloca %struct.rsu_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.rsu_softc* %0, %struct.rsu_softc** %2, align 8
  %7 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %7, i32 0, i32 1
  store %struct.ieee80211com* %8, %struct.ieee80211com** %3, align 8
  %9 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %10 = call i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc* %9)
  %11 = load i32, i32* @R92S_RCR_ACF, align 4
  %12 = load i32, i32* @R92S_RCR_AAP, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @R92S_RCR_APM, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %16 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @R92S_RCR_CBSSID, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @R92S_RCR_ADF, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %35 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 0, i64* %6, align 8
  br label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @R92S_RXFLTMAP_MGT_DEF, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %39, %38
  %42 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %43 = load i32, i32* @R92S_RXFLTMAP_MGT, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @rsu_write_2(%struct.rsu_softc* %42, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %27
  %47 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @rsu_rxfilter_set(%struct.rsu_softc* %58, i32 %59, i32 %60)
  br label %67

62:                                               ; preds = %51, %46
  %63 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @rsu_rxfilter_set(%struct.rsu_softc* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc*) #1

declare dso_local i32 @rsu_write_2(%struct.rsu_softc*, i32, i64) #1

declare dso_local i32 @rsu_rxfilter_set(%struct.rsu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
