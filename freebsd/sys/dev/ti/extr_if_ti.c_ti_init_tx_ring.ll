; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ti_txdesc*, i32 }
%struct.ti_txdesc = type { i32 }

@TI_TX_RING_CNT = common dso_local global i32 0, align 4
@tx_q = common dso_local global i32 0, align 4
@TI_MB_SENDPROD_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*)* @ti_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_init_tx_ring(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca %struct.ti_txdesc*, align 8
  %4 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %5 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @STAILQ_INIT(i32* %7)
  %9 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = call i32 @STAILQ_INIT(i32* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %31, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TI_TX_RING_CNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.ti_txdesc*, %struct.ti_txdesc** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %21, i64 %23
  store %struct.ti_txdesc* %24, %struct.ti_txdesc** %3, align 8
  %25 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %29 = load i32, i32* @tx_q, align 4
  %30 = call i32 @STAILQ_INSERT_TAIL(i32* %27, %struct.ti_txdesc* %28, i32 %29)
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %13

34:                                               ; preds = %13
  %35 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %42 = load i32, i32* @TI_MB_SENDPROD_IDX, align 4
  %43 = call i32 @CSR_WRITE_4(%struct.ti_softc* %41, i32 %42, i32 0)
  ret i32 0
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ti_txdesc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
