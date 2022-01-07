; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_alloc_jrx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_alloc_jrx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.nfe_rx_data* }
%struct.nfe_rx_data = type { i32*, i32* }
%struct.nfe_jrx_ring = type { i32, i32*, i64, i32, i32, i8*, i8*, i64, i64 }
%struct.nfe_dmamap_arg = type { i64 }

@NFE_JUMBO_SUP = common dso_local global i32 0, align 4
@jumbo_disable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"disabling jumbo frame support\0A\00", align 1
@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_RING_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@NFE_JUMBO_RX_RING_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not create jumbo ring DMA tag\0A\00", align 1
@MJUM9BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"could not create jumbo Rx buffer DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"could not allocate DMA'able memory for jumbo Rx ring\0A\00", align 1
@nfe_dma_map_segs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"could not load DMA'able memory for jumbo Rx ring\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"could not create jumbo Rx DMA spare map\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"could not create jumbo Rx DMA map\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"disabling jumbo frame support due to resource shortage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*, %struct.nfe_jrx_ring*)* @nfe_alloc_jrx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_alloc_jrx_ring(%struct.nfe_softc* %0, %struct.nfe_jrx_ring* %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.nfe_jrx_ring*, align 8
  %5 = alloca %struct.nfe_dmamap_arg, align 8
  %6 = alloca %struct.nfe_rx_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store %struct.nfe_jrx_ring* %1, %struct.nfe_jrx_ring** %4, align 8
  %11 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %12 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %206

18:                                               ; preds = %2
  %19 = load i64, i64* @jumbo_disable, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %23 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %27 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  br label %206

28:                                               ; preds = %18
  %29 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %30 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %37 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %36, i32 0, i32 6
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %7, align 8
  store i32 4, i32* %10, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %41 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %40, i32 0, i32 5
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  store i32 4, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %45 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %47 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %49 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NFE_RING_ALIGN, align 4
  %52 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %53 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %54 = load i32, i32* @NFE_JUMBO_RX_RING_COUNT, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* @NFE_JUMBO_RX_RING_COUNT, align 4
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %61 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %60, i32 0, i32 4
  %62 = call i32 @bus_dma_tag_create(i32 %50, i32 %51, i32 0, i32 %52, i32 %53, i32* null, i32* null, i32 %56, i32 1, i32 %59, i32 0, i32* null, i32* null, i32* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %43
  %66 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %67 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %196

70:                                               ; preds = %43
  %71 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %72 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %76 = load i32, i32* @MJUM9BYTES, align 4
  %77 = load i32, i32* @MJUM9BYTES, align 4
  %78 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %79 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %78, i32 0, i32 0
  %80 = call i32 @bus_dma_tag_create(i32 %73, i32 1, i32 0, i32 %74, i32 %75, i32* null, i32* null, i32 %76, i32 1, i32 %77, i32 0, i32* null, i32* null, i32* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %70
  %84 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %85 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %196

88:                                               ; preds = %70
  %89 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %90 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %93 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @BUS_DMA_ZERO, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %98 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %97, i32 0, i32 3
  %99 = call i32 @bus_dmamem_alloc(i32 %91, i8** %7, i32 %96, i32* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %88
  %103 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %104 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %196

107:                                              ; preds = %88
  %108 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %109 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i8*, i8** %7, align 8
  %116 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %117 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  br label %122

118:                                              ; preds = %107
  %119 = load i8*, i8** %7, align 8
  %120 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %121 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = getelementptr inbounds %struct.nfe_dmamap_arg, %struct.nfe_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %125 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %128 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* @NFE_JUMBO_RX_RING_COUNT, align 4
  %132 = load i32, i32* %10, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* @nfe_dma_map_segs, align 4
  %135 = call i32 @bus_dmamap_load(i32 %126, i32 %129, i8* %130, i32 %133, i32 %134, %struct.nfe_dmamap_arg* %5, i32 0)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %122
  %139 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %140 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @device_printf(i32 %141, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %196

143:                                              ; preds = %122
  %144 = getelementptr inbounds %struct.nfe_dmamap_arg, %struct.nfe_dmamap_arg* %5, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %147 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %149 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %152 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %151, i32 0, i32 1
  %153 = call i32 @bus_dmamap_create(i32 %150, i32 0, i32** %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %143
  %157 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %158 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @device_printf(i32 %159, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %196

161:                                              ; preds = %143
  store i32 0, i32* %8, align 4
  br label %162

162:                                              ; preds = %192, %161
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @NFE_JUMBO_RX_RING_COUNT, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %195

166:                                              ; preds = %162
  %167 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %168 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %170, i64 %172
  store %struct.nfe_rx_data* %173, %struct.nfe_rx_data** %6, align 8
  %174 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %6, align 8
  %175 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %174, i32 0, i32 0
  store i32* null, i32** %175, align 8
  %176 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %6, align 8
  %177 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %176, i32 0, i32 1
  store i32* null, i32** %177, align 8
  %178 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %179 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %6, align 8
  %182 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %181, i32 0, i32 0
  %183 = call i32 @bus_dmamap_create(i32 %180, i32 0, i32** %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %166
  %187 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %188 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @device_printf(i32 %189, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %196

191:                                              ; preds = %166
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %162

195:                                              ; preds = %162
  br label %206

196:                                              ; preds = %186, %156, %138, %102, %83, %65
  %197 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %198 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %4, align 8
  %199 = call i32 @nfe_free_jrx_ring(%struct.nfe_softc* %197, %struct.nfe_jrx_ring* %198)
  %200 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %201 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @device_printf(i32 %202, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %204 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %205 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %204, i32 0, i32 1
  store i32 1, i32* %205, align 4
  br label %206

206:                                              ; preds = %196, %195, %21, %17
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.nfe_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

declare dso_local i32 @nfe_free_jrx_ring(%struct.nfe_softc*, %struct.nfe_jrx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
