; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@RSU_N_TRANSFER = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rsu_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsu_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rsu_softc* @device_get_softc(i32 %5)
  store %struct.rsu_softc* %6, %struct.rsu_softc** %3, align 8
  %7 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %7, i32 0, i32 5
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %10 = call i32 @rsu_stop(%struct.rsu_softc* %9)
  %11 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %12 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RSU_N_TRANSFER, align 4
  %15 = call i32 @usbd_transfer_unsetup(i32 %13, i32 %14)
  %16 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %17 = call i32 @RSU_LOCK(%struct.rsu_softc* %16)
  %18 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %19 = call i32 @rsu_free_tx_list(%struct.rsu_softc* %18)
  %20 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %21 = call i32 @rsu_free_rx_list(%struct.rsu_softc* %20)
  %22 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %23 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %22)
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %25 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %24)
  %26 = load i32, i32* @taskqueue_thread, align 4
  %27 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %28 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %27, i32 0, i32 3
  %29 = call i32 @taskqueue_drain_timeout(i32 %26, i32* %28)
  %30 = load i32, i32* @taskqueue_thread, align 4
  %31 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %32 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %31, i32 0, i32 2
  %33 = call i32 @taskqueue_drain(i32 %30, i32* %32)
  %34 = load i32, i32* @taskqueue_thread, align 4
  %35 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %35, i32 0, i32 1
  %37 = call i32 @taskqueue_drain(i32 %34, i32* %36)
  %38 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %39 = call i32 @RSU_DELKEY_BMAP_LOCK_DESTROY(%struct.rsu_softc* %38)
  %40 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %41 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %40, i32 0, i32 0
  %42 = call i32 @mtx_destroy(i32* %41)
  ret i32 0
}

declare dso_local %struct.rsu_softc* @device_get_softc(i32) #1

declare dso_local i32 @rsu_stop(%struct.rsu_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @RSU_LOCK(%struct.rsu_softc*) #1

declare dso_local i32 @rsu_free_tx_list(%struct.rsu_softc*) #1

declare dso_local i32 @rsu_free_rx_list(%struct.rsu_softc*) #1

declare dso_local i32 @RSU_UNLOCK(%struct.rsu_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @taskqueue_drain_timeout(i32, i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @RSU_DELKEY_BMAP_LOCK_DESTROY(%struct.rsu_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
