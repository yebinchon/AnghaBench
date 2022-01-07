; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_txrx_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_txrx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@FE_TX_DMA_BUSY = common dso_local global i32 0, align 4
@FE_RX_DMA_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout waiting for DMA engine\0A\00", align 1
@FE_TX_WB_DDONE = common dso_local global i32 0, align 4
@FE_RX_DMA_EN = common dso_local global i32 0, align 4
@FE_TX_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_softc*)* @rt_txrx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_txrx_enable(%struct.rt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt_softc* %0, %struct.rt_softc** %3, align 8
  %7 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 200
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %15 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %16 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @RT_READ(%struct.rt_softc* %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FE_TX_DMA_BUSY, align 4
  %21 = load i32, i32* @FE_RX_DMA_BUSY, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  br label %31

26:                                               ; preds = %13
  %27 = call i32 @DELAY(i32 1000)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %10

31:                                               ; preds = %25, %10
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 200
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %54

39:                                               ; preds = %31
  %40 = call i32 @DELAY(i32 50)
  %41 = load i32, i32* @FE_TX_WB_DDONE, align 4
  %42 = load i32, i32* @FE_RX_DMA_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FE_TX_DMA_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %49 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %50 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @RT_WRITE(%struct.rt_softc* %48, i32 %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %39, %34
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @RT_READ(%struct.rt_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RT_WRITE(%struct.rt_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
