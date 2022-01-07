; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.iwi_tx_ring = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i8*, i8*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@IWI_TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create desc DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not allocate DMA memory\0A\00", align 1
@iwi_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not load desc DMA map\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not allocate soft data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@IWI_MAX_NSEG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"could not create data DMA tag\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"could not create DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, %struct.iwi_tx_ring*, i32, i8*, i8*)* @iwi_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_alloc_tx_ring(%struct.iwi_softc* %0, %struct.iwi_tx_ring* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwi_softc*, align 8
  %8 = alloca %struct.iwi_tx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %7, align 8
  store %struct.iwi_tx_ring* %1, %struct.iwi_tx_ring** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %16 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %18 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %17, i32 0, i32 11
  store i64 0, i64* %18, align 8
  %19 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %20 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %22 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %21, i32 0, i32 10
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %25 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %28 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %30 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bus_get_dma_tag(i32 %31)
  %33 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @IWI_TX_DESC_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IWI_TX_DESC_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %42 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %41, i32 0, i32 6
  %43 = call i32 @bus_dma_tag_create(i32 %32, i32 4, i32 0, i32 %33, i32 %34, i32* null, i32* null, i32 %37, i32 1, i32 %40, i32 0, i32* null, i32* null, i32* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %5
  %47 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %48 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %166

51:                                               ; preds = %5
  %52 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %53 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %56 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %55, i32 0, i32 4
  %57 = bitcast i32* %56 to i8**
  %58 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %59 = load i32, i32* @BUS_DMA_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %62 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %61, i32 0, i32 5
  %63 = call i32 @bus_dmamem_alloc(i32 %54, i8** %57, i32 %60, i32* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %68 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %166

71:                                               ; preds = %51
  %72 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %73 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %76 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %79 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @IWI_TX_DESC_SIZE, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* @iwi_dma_map_addr, align 4
  %85 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %86 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %85, i32 0, i32 3
  %87 = call i32 @bus_dmamap_load(i32 %74, i32 %77, i32 %80, i32 %83, i32 %84, i32* %86, i32 0)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %71
  %91 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %92 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %166

95:                                               ; preds = %71
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @M_DEVBUF, align 4
  %101 = load i32, i32* @M_NOWAIT, align 4
  %102 = load i32, i32* @M_ZERO, align 4
  %103 = or i32 %101, %102
  %104 = call %struct.TYPE_2__* @malloc(i32 %99, i32 %100, i32 %103)
  %105 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %106 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %105, i32 0, i32 1
  store %struct.TYPE_2__* %104, %struct.TYPE_2__** %106, align 8
  %107 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %108 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = icmp eq %struct.TYPE_2__* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %95
  %112 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %113 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @ENOMEM, align 4
  store i32 %116, i32* %13, align 4
  br label %166

117:                                              ; preds = %95
  %118 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %119 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bus_get_dma_tag(i32 %120)
  %122 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %123 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %124 = load i32, i32* @MCLBYTES, align 4
  %125 = load i32, i32* @IWI_MAX_NSEG, align 4
  %126 = load i32, i32* @MCLBYTES, align 4
  %127 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %128 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %127, i32 0, i32 2
  %129 = call i32 @bus_dma_tag_create(i32 %121, i32 1, i32 0, i32 %122, i32 %123, i32* null, i32* null, i32 %124, i32 %125, i32 %126, i32 0, i32* null, i32* null, i32* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %117
  %133 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %134 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %166

137:                                              ; preds = %117
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %162, %137
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %165

142:                                              ; preds = %138
  %143 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %144 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %147 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = call i32 @bus_dmamap_create(i32 %145, i32 0, i32* %152)
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %142
  %157 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %158 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @device_printf(i32 %159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %166

161:                                              ; preds = %142
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %138

165:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %171

166:                                              ; preds = %156, %132, %111, %90, %66, %46
  %167 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %168 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %8, align 8
  %169 = call i32 @iwi_free_tx_ring(%struct.iwi_softc* %167, %struct.iwi_tx_ring* %168)
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %166, %165
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @iwi_free_tx_ring(%struct.iwi_softc*, %struct.iwi_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
