; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_dma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { i32* }

@MALO_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malo_softc*)* @malo_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_dma_setup(%struct.malo_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.malo_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.malo_softc* %0, %struct.malo_softc** %3, align 8
  %6 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %7 = call i32 @malo_rxdma_setup(%struct.malo_softc* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %42, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MALO_NUM_TX_QUEUES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %19 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %20 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @malo_txdma_setup(%struct.malo_softc* %18, i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %30 = call i32 @malo_dma_cleanup(%struct.malo_softc* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %46

32:                                               ; preds = %17
  %33 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %34 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %35 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @malo_txq_init(%struct.malo_softc* %33, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %13

45:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %28, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @malo_rxdma_setup(%struct.malo_softc*) #1

declare dso_local i32 @malo_txdma_setup(%struct.malo_softc*, i32*) #1

declare dso_local i32 @malo_dma_cleanup(%struct.malo_softc*) #1

declare dso_local i32 @malo_txq_init(%struct.malo_softc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
