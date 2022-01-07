; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.rt_softc* }
%struct.rt_softc = type { i32, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_DATA_COUNT = common dso_local global i64 0, align 8
@RT_DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"if_start: Tx ring with qid=%d is full\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@RT_TX_WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@rt_tx_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @rt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_start(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.rt_softc*, %struct.rt_softc** %7, align 8
  store %struct.rt_softc* %8, %struct.rt_softc** %3, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %110

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %93, %16
  %18 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 1
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = call i32 @IFQ_DRV_DEQUEUE(i32* %19, %struct.mbuf* %20)
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %110

25:                                               ; preds = %17
  %26 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = call i32 @RT_SOFTC_TX_RING_LOCK(%struct.TYPE_5__* %34)
  %36 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RT_SOFTC_TX_RING_DATA_COUNT, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %25
  %47 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %48 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = call i32 @RT_SOFTC_TX_RING_UNLOCK(%struct.TYPE_5__* %52)
  %54 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %55 = load i32, i32* @RT_DEBUG_TX, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @RT_DPRINTF(%struct.rt_softc* %54, i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %59 = call i32 @m_freem(%struct.mbuf* %58)
  %60 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %61 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %66 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %67 = call i32 @if_inc_counter(%struct.ifnet* %65, i32 %66, i32 1)
  %68 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %69 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %110

76:                                               ; preds = %25
  %77 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @rt_tx_data(%struct.rt_softc* %77, %struct.mbuf* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %84 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = call i32 @RT_SOFTC_TX_RING_UNLOCK(%struct.TYPE_5__* %88)
  %90 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %91 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %92 = call i32 @if_inc_counter(%struct.ifnet* %90, i32 %91, i32 1)
  br label %110

93:                                               ; preds = %76
  %94 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %95 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = call i32 @RT_SOFTC_TX_RING_UNLOCK(%struct.TYPE_5__* %99)
  %101 = load i32, i32* @RT_TX_WATCHDOG_TIMEOUT, align 4
  %102 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %103 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %105 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %104, i32 0, i32 0
  %106 = load i32, i32* @hz, align 4
  %107 = load i32, i32* @rt_tx_watchdog, align 4
  %108 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %109 = call i32 @callout_reset(i32* %105, i32 %106, i32 %107, %struct.rt_softc* %108)
  br label %17

110:                                              ; preds = %15, %82, %46, %24
  ret void
}

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @RT_SOFTC_TX_RING_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @RT_SOFTC_TX_RING_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @rt_tx_data(%struct.rt_softc*, %struct.mbuf*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.rt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
