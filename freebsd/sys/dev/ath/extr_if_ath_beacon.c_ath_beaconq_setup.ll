; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_beacon.c_ath_beaconq_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_beacon.c_ath_beaconq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i64, %struct.ath_hal* }
%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8* }

@HAL_TXQ_USEDEFAULT = common dso_local global i8* null, align 8
@HAL_TXQ_TXDESCINT_ENABLE = common dso_local global i32 0, align 4
@HAL_TXQ_TXOKINT_ENABLE = common dso_local global i32 0, align 4
@HAL_TXQ_TXERRINT_ENABLE = common dso_local global i32 0, align 4
@HAL_TX_QUEUE_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_beaconq_setup(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 1
  %7 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  store %struct.ath_hal* %7, %struct.ath_hal** %3, align 8
  %8 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 32)
  %9 = load i8*, i8** @HAL_TXQ_USEDEFAULT, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** @HAL_TXQ_USEDEFAULT, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** @HAL_TXQ_USEDEFAULT, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @HAL_TXQ_TXDESCINT_ENABLE, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @HAL_TXQ_TXOKINT_ENABLE, align 4
  %23 = load i32, i32* @HAL_TXQ_TXERRINT_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = load i32, i32* @HAL_TX_QUEUE_BEACON, align 4
  %31 = call i32 @ath_hal_setuptxqueue(%struct.ath_hal* %29, i32 %30, %struct.TYPE_4__* %4)
  ret i32 %31
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ath_hal_setuptxqueue(%struct.ath_hal*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
