; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_status_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_status_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, i64, i32, i32, i32, i32 }
%struct.msk_dmamap_arg = type { i64 }

@MSK_RX_RING_CNT = common dso_local global i32 0, align 4
@MSK_TX_RING_CNT = common dso_local global i32 0, align 4
@MSK_STAT_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to create status DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to allocate DMA'able memory for status ring\0A\00", align 1
@msk_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"failed to load DMA'able memory for status ring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msk_softc*)* @msk_status_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_status_dma_alloc(%struct.msk_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca %struct.msk_dmamap_arg, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msk_softc* %0, %struct.msk_softc** %3, align 8
  %8 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %9 = mul nsw i32 3, %8
  %10 = load i32, i32* @MSK_TX_RING_CNT, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @roundup2(i32 %12, i32 1024)
  %14 = call i32 @imin(i32 4096, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %17 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %23 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bus_get_dma_tag(i32 %24)
  %26 = load i32, i32* @MSK_STAT_ALIGN, align 4
  %27 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %28 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %32 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %31, i32 0, i32 5
  %33 = call i32 @bus_dma_tag_create(i32 %25, i32 %26, i32 0, i32 %27, i32 %28, i32* null, i32* null, i32 %29, i32 1, i32 %30, i32 0, i32* null, i32* null, i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %38 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %93

42:                                               ; preds = %1
  %43 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %44 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %47 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %46, i32 0, i32 3
  %48 = bitcast i32* %47 to i8**
  %49 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %50 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @BUS_DMA_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %55 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %54, i32 0, i32 4
  %56 = call i32 @bus_dmamem_alloc(i32 %45, i8** %48, i32 %53, i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %42
  %60 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %61 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %93

65:                                               ; preds = %42
  %66 = getelementptr inbounds %struct.msk_dmamap_arg, %struct.msk_dmamap_arg* %4, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %68 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %71 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %74 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @msk_dmamap_cb, align 4
  %78 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %79 = call i32 @bus_dmamap_load(i32 %69, i32 %72, i32 %75, i32 %76, i32 %77, %struct.msk_dmamap_arg* %4, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %65
  %83 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %84 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %93

88:                                               ; preds = %65
  %89 = getelementptr inbounds %struct.msk_dmamap_arg, %struct.msk_dmamap_arg* %4, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %92 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %82, %59, %36
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.msk_dmamap_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
