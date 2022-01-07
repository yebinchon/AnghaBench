; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx_edma.c_ath_edma_dma_txsetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx_edma.c_ath_edma_dma_txsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"txcomp\00", align 1
@ATH_TXSTATUS_RING_SIZE = common dso_local global i32 0, align 4
@HAL_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_edma_dma_txsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_edma_dma_txsetup(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 0
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ATH_TXSTATUS_RING_SIZE, align 4
  %13 = call i32 @ath_descdma_alloc_desc(%struct.ath_softc* %6, %struct.TYPE_2__* %8, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %1
  %19 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATH_TXSTATUS_RING_SIZE, align 4
  %32 = call i32 @ath_hal_setuptxstatusring(i32 %21, i8* %26, i32 %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %41, %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HAL_NUM_TX_QUEUES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ath_edma_setup_txfifo(%struct.ath_softc* %38, i32 %39)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %33

44:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ath_descdma_alloc_desc(%struct.ath_softc*, %struct.TYPE_2__*, i32*, i8*, i32, i32) #1

declare dso_local i32 @ath_hal_setuptxstatusring(i32, i8*, i32, i32) #1

declare dso_local i32 @ath_edma_setup_txfifo(%struct.ath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
