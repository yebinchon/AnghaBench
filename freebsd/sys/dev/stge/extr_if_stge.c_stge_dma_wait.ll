; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_dma_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_dma_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32 }

@STGE_TIMEOUT = common dso_local global i32 0, align 4
@STGE_DMACtrl = common dso_local global i32 0, align 4
@DMAC_TxDMAInProg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DMA wait timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_dma_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_dma_wait(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @STGE_TIMEOUT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = call i32 @DELAY(i32 2)
  %10 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %11 = load i32, i32* @STGE_DMACtrl, align 4
  %12 = call i32 @CSR_READ_4(%struct.stge_softc* %10, i32 %11)
  %13 = load i32, i32* @DMAC_TxDMAInProg, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %21

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %16, %4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @STGE_TIMEOUT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %27 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
