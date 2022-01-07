; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.usb_xfer = type { i32 }
%struct.rsu_data = type { i64, %struct.rsu_softc* }
%struct.rsu_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.r92s_rx_stat = type { i32 }

@RSU_DEBUG_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"xfer too short %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.usb_xfer*, %struct.rsu_data*)* @rsu_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @rsu_rxeof(%struct.usb_xfer* %0, %struct.rsu_data* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca %struct.rsu_data*, align 8
  %6 = alloca %struct.rsu_softc*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.r92s_rx_stat*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %4, align 8
  store %struct.rsu_data* %1, %struct.rsu_data** %5, align 8
  %10 = load %struct.rsu_data*, %struct.rsu_data** %5, align 8
  %11 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %10, i32 0, i32 1
  %12 = load %struct.rsu_softc*, %struct.rsu_softc** %11, align 8
  store %struct.rsu_softc* %12, %struct.rsu_softc** %6, align 8
  %13 = load %struct.rsu_softc*, %struct.rsu_softc** %6, align 8
  %14 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %13, i32 0, i32 0
  store %struct.ieee80211com* %14, %struct.ieee80211com** %7, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %16 = call i32 @usbd_xfer_status(%struct.usb_xfer* %15, i32* %9, i32* null, i32* null, i32* null)
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 4
  %20 = zext i1 %19 to i32
  %21 = call i64 @__predict_false(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.rsu_softc*, %struct.rsu_softc** %6, align 8
  %25 = load i32, i32* @RSU_DEBUG_RX, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @RSU_DPRINTF(%struct.rsu_softc* %24, i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @counter_u64_add(i32 %30, i32 1)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %57

32:                                               ; preds = %2
  %33 = load %struct.rsu_data*, %struct.rsu_data** %5, align 8
  %34 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.r92s_rx_stat*
  store %struct.r92s_rx_stat* %36, %struct.r92s_rx_stat** %8, align 8
  %37 = load %struct.r92s_rx_stat*, %struct.r92s_rx_stat** %8, align 8
  %38 = getelementptr inbounds %struct.r92s_rx_stat, %struct.r92s_rx_stat* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32toh(i32 %39)
  %41 = and i32 %40, 511
  %42 = icmp eq i32 %41, 511
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load %struct.rsu_softc*, %struct.rsu_softc** %6, align 8
  %45 = load %struct.rsu_data*, %struct.rsu_data** %5, align 8
  %46 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @rsu_rx_multi_event(%struct.rsu_softc* %44, i64 %47, i32 %48)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %57

50:                                               ; preds = %32
  %51 = load %struct.rsu_softc*, %struct.rsu_softc** %6, align 8
  %52 = load %struct.rsu_data*, %struct.rsu_data** %5, align 8
  %53 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.mbuf* @rsu_rx_multi_frame(%struct.rsu_softc* %51, i64 %54, i32 %55)
  store %struct.mbuf* %56, %struct.mbuf** %3, align 8
  br label %57

57:                                               ; preds = %50, %43, %23
  %58 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %58
}

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @RSU_DPRINTF(%struct.rsu_softc*, i32, i8*, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @rsu_rx_multi_event(%struct.rsu_softc*, i64, i32) #1

declare dso_local %struct.mbuf* @rsu_rx_multi_frame(%struct.rsu_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
