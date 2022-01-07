; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32*, %struct.urtw_softc* }
%struct.urtw_softc = type { i32, i64 (%struct.urtw_softc*, i32)*, i32, i32*, i32 }

@URTW_RUNNING = common dso_local global i32 0, align 4
@URTW_TX_CONF = common dso_local global i32 0, align 4
@URTW_TX_LOOPBACK_MASK = common dso_local global i32 0, align 4
@URTW_TX_LOOPBACK_MAC = common dso_local global i32 0, align 4
@URTW_ATIM_WND = common dso_local global i32 0, align 4
@URTW_ATIM_TR_ITV = common dso_local global i32 0, align 4
@URTW_BEACON_INTERVAL = common dso_local global i32 0, align 4
@URTW_BEACON_INTERVAL_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not change the channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @urtw_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_set_channel(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 1
  %9 = load %struct.urtw_softc*, %struct.urtw_softc** %8, align 8
  store %struct.urtw_softc* %9, %struct.urtw_softc** %3, align 8
  %10 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %11 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @URTW_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %19 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %24 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %95

31:                                               ; preds = %22, %17
  %32 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %33 = call i32 @URTW_LOCK(%struct.urtw_softc* %32)
  %34 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %35 = load i32, i32* @URTW_TX_CONF, align 4
  %36 = call i32 @urtw_read32_m(%struct.urtw_softc* %34, i32 %35, i32* %5)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @URTW_TX_LOOPBACK_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %4, align 4
  %41 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %42 = load i32, i32* @URTW_TX_CONF, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @URTW_TX_LOOPBACK_MAC, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @urtw_write32_m(%struct.urtw_softc* %41, i32 %42, i32 %45)
  %47 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %48 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %47, i32 0, i32 1
  %49 = load i64 (%struct.urtw_softc*, i32)*, i64 (%struct.urtw_softc*, i32)** %48, align 8
  %50 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %51 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %51, i32* %54)
  %56 = call i64 %49(%struct.urtw_softc* %50, i32 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %31
  br label %80

60:                                               ; preds = %31
  %61 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %62 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %61, i32 0, i32 4
  %63 = call i32 @usb_pause_mtx(i32* %62, i32 10)
  %64 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %65 = load i32, i32* @URTW_TX_CONF, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @urtw_write32_m(%struct.urtw_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %69 = load i32, i32* @URTW_ATIM_WND, align 4
  %70 = call i32 @urtw_write16_m(%struct.urtw_softc* %68, i32 %69, i32 2)
  %71 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %72 = load i32, i32* @URTW_ATIM_TR_ITV, align 4
  %73 = call i32 @urtw_write16_m(%struct.urtw_softc* %71, i32 %72, i32 100)
  %74 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %75 = load i32, i32* @URTW_BEACON_INTERVAL, align 4
  %76 = call i32 @urtw_write16_m(%struct.urtw_softc* %74, i32 %75, i32 100)
  %77 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %78 = load i32, i32* @URTW_BEACON_INTERVAL_TIME, align 4
  %79 = call i32 @urtw_write16_m(%struct.urtw_softc* %77, i32 %78, i32 100)
  br label %80

80:                                               ; preds = %60, %59
  %81 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %82 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %81)
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %84 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %87 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %86, i32 0, i32 3
  store i32* %85, i32** %87, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %92 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %16, %30, %90, %80
  ret void
}

declare dso_local i32 @URTW_LOCK(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_read32_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write32_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @urtw_write16_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @URTW_UNLOCK(%struct.urtw_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
