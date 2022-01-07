; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_setup_hwdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_setup_hwdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { %struct.TYPE_5__, %struct.malo_txq*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32*, i32 }
%struct.malo_txq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MALO_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@malo_txbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malo_softc*)* @malo_setup_hwdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_setup_hwdma(%struct.malo_softc* %0) #0 {
  %2 = alloca %struct.malo_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.malo_txq*, align 8
  store %struct.malo_softc* %0, %struct.malo_softc** %2, align 8
  %5 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %6 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %10 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %34, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MALO_NUM_TX_QUEUES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %18 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %17, i32 0, i32 1
  %19 = load %struct.malo_txq*, %struct.malo_txq** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %19, i64 %21
  store %struct.malo_txq* %22, %struct.malo_txq** %4, align 8
  %23 = load %struct.malo_txq*, %struct.malo_txq** %4, align 8
  %24 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %28 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %26, i32* %33, align 4
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load i32, i32* @malo_txbuf, align 4
  %39 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %40 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @MALO_NUM_TX_QUEUES, align 4
  %43 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %44 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %47 = call i32 @malo_hal_set_rxtxdma(%struct.malo_softc* %46)
  ret i32 0
}

declare dso_local i32 @malo_hal_set_rxtxdma(%struct.malo_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
