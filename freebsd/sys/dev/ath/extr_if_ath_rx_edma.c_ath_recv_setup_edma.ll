; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_recv_setup_edma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_recv_setup_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"RX status length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"RX buffer size: %d\0A\00", align 1
@ath_edma_stoprecv = common dso_local global i32 0, align 4
@ath_edma_startrecv = common dso_local global i32 0, align 4
@ath_edma_recv_flush = common dso_local global i32 0, align 4
@ath_edma_recv_tasklet = common dso_local global i32 0, align 4
@ath_edma_rxbuf_init = common dso_local global i32 0, align 4
@ath_edma_dma_rxsetup = common dso_local global i32 0, align 4
@ath_edma_dma_rxteardown = common dso_local global i32 0, align 4
@ath_edma_recv_sched = common dso_local global i32 0, align 4
@ath_edma_recv_sched_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_recv_setup_edma(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %3 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %3, i32 0, i32 0
  store i32 4096, i32* %4, align 4
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 1
  %10 = call i32 @ath_hal_getrxstatuslen(i32 %7, i32* %9)
  %11 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = call i32 @ath_hal_setrxbufsize(i32 %13, i32 %20)
  %22 = load i64, i64* @bootverbose, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %1
  %25 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %24, %1
  %40 = load i32, i32* @ath_edma_stoprecv, align 4
  %41 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 8
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @ath_edma_startrecv, align 4
  %45 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @ath_edma_recv_flush, align 4
  %49 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @ath_edma_recv_tasklet, align 4
  %53 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ath_edma_rxbuf_init, align 4
  %57 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @ath_edma_dma_rxsetup, align 4
  %61 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @ath_edma_dma_rxteardown, align 4
  %65 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @ath_edma_recv_sched, align 4
  %69 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @ath_edma_recv_sched_queue, align 4
  %73 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %74 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  ret void
}

declare dso_local i32 @ath_hal_getrxstatuslen(i32, i32*) #1

declare dso_local i32 @ath_hal_setrxbufsize(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
