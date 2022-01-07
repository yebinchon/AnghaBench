; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_setup_xdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_setup_xdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i32*, i32*, i32, i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not find DMA controller.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Can't alloc virtual DMA TX channel.\0A\00", align 1
@xae_xdma_tx_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Can't setup xDMA TX interrupt handler.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Can't alloc virtual DMA RX channel.\0A\00", align 1
@xae_xdma_rx_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Can't setup xDMA RX interrupt handler.\0A\00", align 1
@TX_QUEUE_SIZE = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xae_softc*)* @setup_xdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_xdma(%struct.xae_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xae_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.xae_softc* %0, %struct.xae_softc** %3, align 8
  %7 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %8 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %11 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @xdma_ofw_get(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %16 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %15, i32 0, i32 6
  store i32* %14, i32** %16, align 8
  %17 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %18 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %140

25:                                               ; preds = %1
  %26 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %27 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @xdma_ofw_get(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %32 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %34 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %140

41:                                               ; preds = %25
  %42 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %43 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = call i8* @xdma_channel_alloc(i32* %44, i32 0)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %48 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %50 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %140

57:                                               ; preds = %41
  %58 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %59 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @xae_xdma_tx_intr, align 4
  %62 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %63 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %64 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %63, i32 0, i32 5
  %65 = call i32 @xdma_setup_intr(i32* %60, i32 %61, %struct.xae_softc* %62, i32* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %70 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %2, align 4
  br label %140

74:                                               ; preds = %57
  %75 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %76 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = call i8* @xdma_channel_alloc(i32* %77, i32 0)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %81 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %83 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %2, align 4
  br label %140

90:                                               ; preds = %74
  %91 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %92 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @xae_xdma_rx_intr, align 4
  %95 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %96 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %97 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %96, i32 0, i32 3
  %98 = call i32 @xdma_setup_intr(i32* %93, i32 %94, %struct.xae_softc* %95, i32* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %103 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @device_printf(i32 %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* @ENXIO, align 4
  store i32 %106, i32* %2, align 4
  br label %140

107:                                              ; preds = %90
  %108 = load i32, i32* %4, align 4
  %109 = call i32* @xdma_get_memory(i32 %108)
  store i32* %109, i32** %5, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %114 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @xchan_set_memory(i32* %115, i32* %116)
  %118 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %119 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @xchan_set_memory(i32* %120, i32* %121)
  br label %123

123:                                              ; preds = %112, %107
  %124 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %125 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @TX_QUEUE_SIZE, align 4
  %128 = load i32, i32* @MCLBYTES, align 4
  %129 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %130 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %131 = call i32 @xdma_prep_sg(i32* %126, i32 %127, i32 %128, i32 8, i32 16, i32 0, i32 %129, i32 %130)
  %132 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %133 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %136 = load i32, i32* @MCLBYTES, align 4
  %137 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %138 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %139 = call i32 @xdma_prep_sg(i32* %134, i32 %135, i32 %136, i32 1, i32 16, i32 0, i32 %137, i32 %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %123, %101, %86, %68, %53, %37, %21
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i8* @xdma_ofw_get(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @xdma_channel_alloc(i32*, i32) #1

declare dso_local i32 @xdma_setup_intr(i32*, i32, %struct.xae_softc*, i32*) #1

declare dso_local i32* @xdma_get_memory(i32) #1

declare dso_local i32 @xchan_set_memory(i32*, i32*) #1

declare dso_local i32 @xdma_prep_sg(i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
