; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_txstats_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_txstats_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, i32, %struct.bwi_txstats_data* }
%struct.bwi_txstats_data = type { i8*, i8*, i32, i32*, i32, i32, i32*, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't allocate txstats data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BWI_TXSTATS_NDESC = common dso_local global i32 0, align 4
@BWI_RING_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"can't create txstats ring DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"can't allocate txstats ring DMA mem\0A\00", align 1
@bwi_dma_ring_addr = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"can't load txstats ring DMA mem\0A\00", align 1
@BWI_ALIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"can't create txstats DMA tag\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"can't allocate txstats DMA mem\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"can't load txstats DMA mem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*, i32, i32)* @bwi_dma_txstats_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_dma_txstats_alloc(%struct.bwi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bwi_txstats_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.bwi_txstats_data* @malloc(i32 56, i32 %11, i32 %14)
  store %struct.bwi_txstats_data* %15, %struct.bwi_txstats_data** %8, align 8
  %16 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %17 = icmp eq %struct.bwi_txstats_data* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %20 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %4, align 4
  br label %214

24:                                               ; preds = %3
  %25 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %26 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %27 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %26, i32 0, i32 2
  store %struct.bwi_txstats_data* %25, %struct.bwi_txstats_data** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BWI_TXSTATS_NDESC, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @BWI_RING_ALIGN, align 4
  %32 = call i32 @roundup(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %34 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BWI_RING_ALIGN, align 4
  %37 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %38 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %42 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %41, i32 0, i32 6
  %43 = call i32 @bus_dma_tag_create(i32 %35, i32 %36, i32 0, i32 %37, i32 %38, i32* null, i32* null, i32 %39, i32 1, i32 %40, i32 0, i32* null, i32* null, i32** %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %24
  %47 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %48 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %214

52:                                               ; preds = %24
  %53 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %54 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %57 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %56, i32 0, i32 0
  %58 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %59 = load i32, i32* @BUS_DMA_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %62 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %61, i32 0, i32 7
  %63 = call i32 @bus_dmamem_alloc(i32* %55, i8** %57, i32 %60, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %52
  %67 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %68 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %72 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_dma_tag_destroy(i32* %73)
  %75 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %76 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %75, i32 0, i32 6
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %214

78:                                               ; preds = %52
  %79 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %80 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %83 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %86 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @bwi_dma_ring_addr, align 4
  %90 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %91 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %90, i32 0, i32 8
  %92 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %93 = call i32 @bus_dmamap_load(i32* %81, i32 %84, i8* %87, i32 %88, i32 %89, i32* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %78
  %97 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %98 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %102 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %101, i32 0, i32 6
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %105 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %108 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @bus_dmamem_free(i32* %103, i8* %106, i32 %109)
  %111 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %112 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @bus_dma_tag_destroy(i32* %113)
  %115 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %116 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %115, i32 0, i32 6
  store i32* null, i32** %116, align 8
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %214

118:                                              ; preds = %78
  %119 = load i32, i32* @BWI_TXSTATS_NDESC, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 4, %120
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* @BWI_ALIGN, align 4
  %124 = call i32 @roundup(i32 %122, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %126 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @BWI_ALIGN, align 4
  %129 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %130 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %134 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %133, i32 0, i32 3
  %135 = call i32 @bus_dma_tag_create(i32 %127, i32 %128, i32 0, i32 %129, i32 %130, i32* null, i32* null, i32 %131, i32 1, i32 %132, i32 0, i32* null, i32* null, i32** %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %118
  %139 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %140 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @device_printf(i32 %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %4, align 4
  br label %214

144:                                              ; preds = %118
  %145 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %146 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %149 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %148, i32 0, i32 1
  %150 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %151 = load i32, i32* @BUS_DMA_ZERO, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %154 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %153, i32 0, i32 4
  %155 = call i32 @bus_dmamem_alloc(i32* %147, i8** %149, i32 %152, i32* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %144
  %159 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %160 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @device_printf(i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %163 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %164 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @bus_dma_tag_destroy(i32* %165)
  %167 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %168 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %167, i32 0, i32 3
  store i32* null, i32** %168, align 8
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %4, align 4
  br label %214

170:                                              ; preds = %144
  %171 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %172 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %175 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %178 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @bwi_dma_ring_addr, align 4
  %182 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %183 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %182, i32 0, i32 5
  %184 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %185 = call i32 @bus_dmamap_load(i32* %173, i32 %176, i8* %179, i32 %180, i32 %181, i32* %183, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %210

188:                                              ; preds = %170
  %189 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %190 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @device_printf(i32 %191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %193 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %194 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %197 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %200 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @bus_dmamem_free(i32* %195, i8* %198, i32 %201)
  %203 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %204 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @bus_dma_tag_destroy(i32* %205)
  %207 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %208 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %207, i32 0, i32 3
  store i32* null, i32** %208, align 8
  %209 = load i32, i32* %10, align 4
  store i32 %209, i32* %4, align 4
  br label %214

210:                                              ; preds = %170
  %211 = load i32, i32* %6, align 4
  %212 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %8, align 8
  %213 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  store i32 0, i32* %4, align 4
  br label %214

214:                                              ; preds = %210, %188, %158, %138, %96, %66, %46, %18
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local %struct.bwi_txstats_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @bus_dmamem_alloc(i32*, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_load(i32*, i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
