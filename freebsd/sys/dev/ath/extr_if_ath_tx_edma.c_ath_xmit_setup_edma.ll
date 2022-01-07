; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx_edma.c_ath_xmit_setup_edma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx_edma.c_ath_xmit_setup_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"TX descriptor length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"TX status length: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"TX buffers per descriptor: %d\0A\00", align 1
@ath_edma_dma_txsetup = common dso_local global i32 0, align 4
@ath_edma_dma_txteardown = common dso_local global i32 0, align 4
@ath_edma_attach_comp_func = common dso_local global i32 0, align 4
@ath_edma_dma_restart = common dso_local global i32 0, align 4
@ath_edma_xmit_handoff = common dso_local global i32 0, align 4
@ath_edma_tx_drain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_xmit_setup_edma(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %3 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 4
  %8 = call i32 @ath_hal_gettxdesclen(i32 %5, i32* %7)
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 3
  %14 = call i32 @ath_hal_gettxstatuslen(i32 %11, i32* %13)
  %15 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 1
  %20 = call i32 @ath_hal_getntxmaps(i32 %17, i32* %19)
  %21 = load i64, i64* @bootverbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %1
  %24 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %23, %1
  %46 = load i32, i32* @ath_edma_dma_txsetup, align 4
  %47 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @ath_edma_dma_txteardown, align 4
  %51 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %52 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @ath_edma_attach_comp_func, align 4
  %55 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @ath_edma_dma_restart, align 4
  %59 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @ath_edma_xmit_handoff, align 4
  %63 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @ath_edma_tx_drain, align 4
  %67 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  ret void
}

declare dso_local i32 @ath_hal_gettxdesclen(i32, i32*) #1

declare dso_local i32 @ath_hal_gettxstatuslen(i32, i32*) #1

declare dso_local i32 @ath_hal_getntxmaps(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
