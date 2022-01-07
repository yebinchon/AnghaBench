; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iwi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.iwi_softc* @device_get_softc(i32 %5)
  store %struct.iwi_softc* %6, %struct.iwi_softc** %3, align 8
  %7 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %7, i32 0, i32 13
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bus_teardown_intr(i32 %9, i32 %12, i32 %15)
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %18, i32 0, i32 11
  %20 = call i32 @ieee80211_draintask(%struct.ieee80211com* %17, i32* %19)
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %22 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %22, i32 0, i32 10
  %24 = call i32 @ieee80211_draintask(%struct.ieee80211com* %21, i32* %23)
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %26 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %26, i32 0, i32 9
  %28 = call i32 @ieee80211_draintask(%struct.ieee80211com* %25, i32* %27)
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %30 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %30, i32 0, i32 8
  %32 = call i32 @ieee80211_draintask(%struct.ieee80211com* %29, i32* %31)
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %34 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %34, i32 0, i32 7
  %36 = call i32 @ieee80211_draintask(%struct.ieee80211com* %33, i32* %35)
  %37 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %38 = call i32 @iwi_stop(%struct.iwi_softc* %37)
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %40 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %39)
  %41 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %42 = call i32 @iwi_put_firmware(%struct.iwi_softc* %41)
  %43 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %44 = call i32 @iwi_release_fw_dma(%struct.iwi_softc* %43)
  %45 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %46 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %46, i32 0, i32 6
  %48 = call i32 @iwi_free_cmd_ring(%struct.iwi_softc* %45, i32* %47)
  %49 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %50 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %51 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @iwi_free_tx_ring(%struct.iwi_softc* %49, i32* %53)
  %55 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %56 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %57 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i32 @iwi_free_tx_ring(%struct.iwi_softc* %55, i32* %59)
  %61 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %62 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %63 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = call i32 @iwi_free_tx_ring(%struct.iwi_softc* %61, i32* %65)
  %67 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %68 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %69 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = call i32 @iwi_free_tx_ring(%struct.iwi_softc* %67, i32* %71)
  %73 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %74 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %75 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %74, i32 0, i32 4
  %76 = call i32 @iwi_free_rx_ring(%struct.iwi_softc* %73, i32* %75)
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @SYS_RES_IRQ, align 4
  %79 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %80 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rman_get_rid(i32 %81)
  %83 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %84 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bus_release_resource(i32 %77, i32 %78, i32 %82, i32 %85)
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @SYS_RES_MEMORY, align 4
  %89 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %90 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @rman_get_rid(i32 %91)
  %93 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %94 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @bus_release_resource(i32 %87, i32 %88, i32 %92, i32 %95)
  %97 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %98 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @delete_unrhdr(i32 %99)
  %101 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %102 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %101, i32 0, i32 0
  %103 = call i32 @mbufq_drain(i32* %102)
  %104 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %105 = call i32 @IWI_LOCK_DESTROY(%struct.iwi_softc* %104)
  ret i32 0
}

declare dso_local %struct.iwi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @iwi_stop(%struct.iwi_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @iwi_put_firmware(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_release_fw_dma(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_free_cmd_ring(%struct.iwi_softc*, i32*) #1

declare dso_local i32 @iwi_free_tx_ring(%struct.iwi_softc*, i32*) #1

declare dso_local i32 @iwi_free_rx_ring(%struct.iwi_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @delete_unrhdr(i32) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @IWI_LOCK_DESTROY(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
