; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_dma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32* }

@MWL_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_softc*)* @mwl_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_dma_setup(%struct.mwl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mwl_softc* %0, %struct.mwl_softc** %3, align 8
  %6 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %7 = call i32 @mwl_rxdma_setup(%struct.mwl_softc* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %12 = call i32 @mwl_rxdma_cleanup(%struct.mwl_softc* %11)
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MWL_NUM_TX_QUEUES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %21 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @mwl_txdma_setup(%struct.mwl_softc* %20, i32* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %32 = call i32 @mwl_dma_cleanup(%struct.mwl_softc* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %15

38:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %30, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @mwl_rxdma_setup(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_rxdma_cleanup(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_txdma_setup(%struct.mwl_softc*, i32*) #1

declare dso_local i32 @mwl_dma_cleanup(%struct.mwl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
