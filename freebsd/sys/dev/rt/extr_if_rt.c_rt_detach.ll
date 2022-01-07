; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@RT_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"detaching\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_COUNT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rt_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.rt_softc* @device_get_softc(i32 %6)
  store %struct.rt_softc* %7, %struct.rt_softc** %3, align 8
  %8 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %8, i32 0, i32 16
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %12 = load i32, i32* @RT_DEBUG_ANY, align 4
  %13 = call i32 @RT_DPRINTF(%struct.rt_softc* %11, i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %15 = call i32 @RT_SOFTC_LOCK(%struct.rt_softc* %14)
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %24, i32 0, i32 15
  %26 = call i32 @callout_stop(i32* %25)
  %27 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %28 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %27, i32 0, i32 14
  %29 = call i32 @callout_stop(i32* %28)
  %30 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %33, i32 0, i32 13
  %35 = call i32 @taskqueue_drain(i32 %32, i32* %34)
  %36 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %40 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %39, i32 0, i32 12
  %41 = call i32 @taskqueue_drain(i32 %38, i32* %40)
  %42 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %46 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %45, i32 0, i32 11
  %47 = call i32 @taskqueue_drain(i32 %44, i32* %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %61, %1
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @RT_SOFTC_TX_RING_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %54 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %55 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %54, i32 0, i32 10
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @rt_free_tx_ring(%struct.rt_softc* %53, i32* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %48

64:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %68 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %73 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %74 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %73, i32 0, i32 9
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @rt_free_rx_ring(%struct.rt_softc* %72, i32* %78)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %85 = call i32 @RT_SOFTC_UNLOCK(%struct.rt_softc* %84)
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = call i32 @ether_ifdetach(%struct.ifnet* %86)
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = call i32 @if_free(%struct.ifnet* %88)
  %90 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %91 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @taskqueue_free(i32 %92)
  %94 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %95 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %94, i32 0, i32 6
  %96 = call i32 @mtx_destroy(i32* %95)
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @bus_generic_detach(i32 %97)
  %99 = load i32, i32* %2, align 4
  %100 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %101 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %104 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bus_teardown_intr(i32 %99, i32 %102, i32 %105)
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @SYS_RES_IRQ, align 4
  %109 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %110 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %113 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bus_release_resource(i32 %107, i32 %108, i32 %111, i32 %114)
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @SYS_RES_MEMORY, align 4
  %118 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %119 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %122 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @bus_release_resource(i32 %116, i32 %117, i32 %120, i32 %123)
  ret i32 0
}

declare dso_local %struct.rt_softc* @device_get_softc(i32) #1

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*) #1

declare dso_local i32 @RT_SOFTC_LOCK(%struct.rt_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @rt_free_tx_ring(%struct.rt_softc*, i32*) #1

declare dso_local i32 @rt_free_rx_ring(%struct.rt_softc*, i32*) #1

declare dso_local i32 @RT_SOFTC_UNLOCK(%struct.rt_softc*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
