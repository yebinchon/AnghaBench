; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com, %struct.bwn_mac* }
%struct.ieee80211com = type { i32 }
%struct.bwn_mac = type { i32, i32, i32*, i32, i32, i32 }

@BWN_FLAG_INVALID = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bwn_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.bwn_softc* @device_get_softc(i32 %6)
  store %struct.bwn_softc* %7, %struct.bwn_softc** %3, align 8
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %8, i32 0, i32 11
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %9, align 8
  store %struct.bwn_mac* %10, %struct.bwn_mac** %4, align 8
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %11, i32 0, i32 10
  store %struct.ieee80211com* %12, %struct.ieee80211com** %5, align 8
  %13 = load i32, i32* @BWN_FLAG_INVALID, align 4
  %14 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @device_is_attached(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %1
  %24 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %25 = call i32 @BWN_LOCK(%struct.bwn_softc* %24)
  %26 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %27 = call i32 @bwn_stop(%struct.bwn_softc* %26)
  %28 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %29 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %28)
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %31 = call i32 @bwn_dma_free(%struct.bwn_mac* %30)
  %32 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %33 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %32, i32 0, i32 7
  %34 = call i32 @callout_drain(i32* %33)
  %35 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %35, i32 0, i32 6
  %37 = call i32 @callout_drain(i32* %36)
  %38 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %38, i32 0, i32 5
  %40 = call i32 @callout_drain(i32* %39)
  %41 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %42 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %41, i32 0, i32 4
  %43 = call i32 @callout_drain(i32* %42)
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %45 = call i32 @bwn_phy_detach(%struct.bwn_mac* %44)
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %48 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %47, i32 0, i32 5
  %49 = call i32 @ieee80211_draintask(%struct.ieee80211com* %46, i32* %48)
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %52 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %51, i32 0, i32 4
  %53 = call i32 @ieee80211_draintask(%struct.ieee80211com* %50, i32* %52)
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %55 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %54)
  br label %56

56:                                               ; preds = %23, %1
  %57 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %58 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %61 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %60, i32 0, i32 3
  %62 = call i32 @taskqueue_drain(i32 %59, i32* %61)
  %63 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %64 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @taskqueue_free(i32 %65)
  %67 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %68 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %56
  %72 = load i32, i32* %2, align 4
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %74 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %77 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @bus_teardown_intr(i32 %72, i32 %75, i32* %78)
  %80 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %81 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %71, %56
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @bhnd_release_pmu(i32 %83)
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @SYS_RES_MEMORY, align 4
  %87 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %88 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %91 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bus_release_resource(i32 %85, i32 %86, i32 %89, i32 %92)
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @SYS_RES_IRQ, align 4
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %97 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %100 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @bus_release_resource(i32 %94, i32 %95, i32 %98, i32 %101)
  %103 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %104 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %103, i32 0, i32 0
  %105 = call i32 @mbufq_drain(i32* %104)
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %107 = call i32 @bwn_release_firmware(%struct.bwn_mac* %106)
  %108 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %109 = call i32 @BWN_LOCK_DESTROY(%struct.bwn_softc* %108)
  %110 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %111 = call i32 @bwn_release_bus_providers(%struct.bwn_softc* %110)
  ret i32 0
}

declare dso_local %struct.bwn_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @BWN_LOCK(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_stop(%struct.bwn_softc*) #1

declare dso_local i32 @BWN_UNLOCK(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_dma_free(%struct.bwn_mac*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bwn_phy_detach(%struct.bwn_mac*) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bhnd_release_pmu(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @bwn_release_firmware(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_LOCK_DESTROY(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_release_bus_providers(%struct.bwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
