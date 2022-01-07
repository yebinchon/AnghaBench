; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_alloc_cmd_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_alloc_cmd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.iwi_cmd_ring = type { i32, i32, i32, i32, i32, i64, i64, i64 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@IWI_CMD_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create desc DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not allocate DMA memory\0A\00", align 1
@iwi_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not load desc DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, %struct.iwi_cmd_ring*, i32)* @iwi_alloc_cmd_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_alloc_cmd_ring(%struct.iwi_softc* %0, %struct.iwi_cmd_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwi_softc*, align 8
  %6 = alloca %struct.iwi_cmd_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %5, align 8
  store %struct.iwi_cmd_ring* %1, %struct.iwi_cmd_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %11 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %13 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %15 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %17 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  %19 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bus_get_dma_tag(i32 %20)
  %22 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %23 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IWI_CMD_DESC_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IWI_CMD_DESC_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %31 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %30, i32 0, i32 4
  %32 = call i32 @bus_dma_tag_create(i32 %21, i32 4, i32 0, i32 %22, i32 %23, i32* null, i32* null, i32 %26, i32 1, i32 %29, i32 0, i32* null, i32* null, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  %37 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %85

40:                                               ; preds = %3
  %41 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %42 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %45 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %44, i32 0, i32 2
  %46 = bitcast i32* %45 to i8**
  %47 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %48 = load i32, i32* @BUS_DMA_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %51 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %50, i32 0, i32 3
  %52 = call i32 @bus_dmamem_alloc(i32 %43, i8** %46, i32 %49, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  %57 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %85

60:                                               ; preds = %40
  %61 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %62 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %65 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %68 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @IWI_CMD_DESC_SIZE, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* @iwi_dma_map_addr, align 4
  %74 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %75 = getelementptr inbounds %struct.iwi_cmd_ring, %struct.iwi_cmd_ring* %74, i32 0, i32 1
  %76 = call i32 @bus_dmamap_load(i32 %63, i32 %66, i32 %69, i32 %72, i32 %73, i32* %75, i32 0)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %60
  %80 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  %81 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %85

84:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %90

85:                                               ; preds = %79, %55, %35
  %86 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  %87 = load %struct.iwi_cmd_ring*, %struct.iwi_cmd_ring** %6, align 8
  %88 = call i32 @iwi_free_cmd_ring(%struct.iwi_softc* %86, %struct.iwi_cmd_ring* %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %84
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @iwi_free_cmd_ring(%struct.iwi_softc*, %struct.iwi_cmd_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
