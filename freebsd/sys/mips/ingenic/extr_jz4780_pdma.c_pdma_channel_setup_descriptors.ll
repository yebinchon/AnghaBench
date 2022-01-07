; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_channel_setup_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_channel_setup_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdma_channel = type { i32, i32, i32, i32 }
%struct.pdma_softc = type { i32 }

@PDMA_DESC_RING_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@CHAN_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not create TX ring DMA tag.\0A\00", align 1
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not allocate TX descriptor ring.\0A\00", align 1
@dwc_get1paddr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"could not load TX descriptor ring map.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pdma_channel*)* @pdma_channel_setup_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdma_channel_setup_descriptors(i32 %0, %struct.pdma_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pdma_channel*, align 8
  %6 = alloca %struct.pdma_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pdma_channel* %1, %struct.pdma_channel** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.pdma_softc* @device_get_softc(i32 %8)
  store %struct.pdma_softc* %9, %struct.pdma_softc** %6, align 8
  %10 = load %struct.pdma_softc*, %struct.pdma_softc** %6, align 8
  %11 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bus_get_dma_tag(i32 %12)
  %14 = load i32, i32* @PDMA_DESC_RING_ALIGN, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %16 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %17 = load i32, i32* @CHAN_DESC_SIZE, align 4
  %18 = load i32, i32* @CHAN_DESC_SIZE, align 4
  %19 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %20 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %19, i32 0, i32 3
  %21 = call i32 @bus_dma_tag_create(i32 %13, i32 %14, i32 0, i32 %15, i32 %16, i32* null, i32* null, i32 %17, i32 1, i32 %18, i32 0, i32* null, i32* null, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.pdma_softc*, %struct.pdma_softc** %6, align 8
  %26 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %74

29:                                               ; preds = %2
  %30 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %31 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %34 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %33, i32 0, i32 1
  %35 = bitcast i32* %34 to i8**
  %36 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %37 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BUS_DMA_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %42 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %41, i32 0, i32 2
  %43 = call i32 @bus_dmamem_alloc(i32 %32, i8** %35, i32 %40, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.pdma_softc*, %struct.pdma_softc** %6, align 8
  %48 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %74

51:                                               ; preds = %29
  %52 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %53 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %56 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %59 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CHAN_DESC_SIZE, align 4
  %62 = load i32, i32* @dwc_get1paddr, align 4
  %63 = load %struct.pdma_channel*, %struct.pdma_channel** %5, align 8
  %64 = getelementptr inbounds %struct.pdma_channel, %struct.pdma_channel* %63, i32 0, i32 0
  %65 = call i32 @bus_dmamap_load(i32 %54, i32 %57, i32 %60, i32 %61, i32 %62, i32* %64, i32 0)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  %69 = load %struct.pdma_softc*, %struct.pdma_softc** %6, align 8
  %70 = getelementptr inbounds %struct.pdma_softc, %struct.pdma_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %74

73:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %68, %46, %24
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.pdma_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
