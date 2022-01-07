; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_setup_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i32, %struct.TYPE_5__*, i32, i64, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__*, i32, i64, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.mbuf = type { i32 }

@DWC_DESC_RING_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not create TX ring DMA tag.\0A\00", align 1
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not allocate TX descriptor ring.\0A\00", align 1
@dwc_get1paddr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"could not load TX descriptor ring map.\0A\00", align 1
@TX_DESC_COUNT = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"could not create TX buffer DMA map.\0A\00", align 1
@RX_DESC_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"could not create RX ring DMA tag.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"could not allocate RX descriptor ring.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"could not load RX descriptor ring map.\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"could not create RX buf DMA tag.\0A\00", align 1
@RX_DESC_COUNT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"could not create RX buffer DMA map.\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Could not alloc mbuf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"could not create new RX buffer.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_softc*)* @setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_dma(%struct.dwc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc_softc* %0, %struct.dwc_softc** %3, align 8
  %8 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_get_dma_tag(i32 %10)
  %12 = load i32, i32* @DWC_DESC_RING_ALIGN, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %15 = load i32, i32* @TX_DESC_SIZE, align 4
  %16 = load i32, i32* @TX_DESC_SIZE, align 4
  %17 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %17, i32 0, i32 12
  %19 = call i32 @bus_dma_tag_create(i32 %11, i32 %12, i32 0, i32 %13, i32 %14, i32* null, i32* null, i32 %15, i32 1, i32 %16, i32 0, i32* null, i32* null, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %282

27:                                               ; preds = %1
  %28 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %32 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %31, i32 0, i32 10
  %33 = bitcast %struct.TYPE_6__** %32 to i8**
  %34 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %35 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BUS_DMA_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %40 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %39, i32 0, i32 11
  %41 = call i32 @bus_dmamem_alloc(i32 %30, i8** %33, i32 %38, i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %27
  %45 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %282

49:                                               ; preds = %27
  %50 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %51 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %56, i32 0, i32 10
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* @TX_DESC_SIZE, align 4
  %60 = load i32, i32* @dwc_get1paddr, align 4
  %61 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %61, i32 0, i32 9
  %63 = call i32 @bus_dmamap_load(i32 %52, i32 %55, %struct.TYPE_6__* %58, i32 %59, i32 %60, i64* %62, i32 0)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %49
  %67 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %68 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %282

71:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @TX_DESC_COUNT, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @next_txidx(%struct.dwc_softc* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %81 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = add i64 %82, %85
  %87 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %88 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %87, i32 0, i32 10
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i64 %86, i64* %93, align 8
  br label %94

94:                                               ; preds = %76
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %72

97:                                               ; preds = %72
  %98 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %99 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @bus_get_dma_tag(i32 %100)
  %102 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %103 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %104 = load i32, i32* @MCLBYTES, align 4
  %105 = load i32, i32* @MCLBYTES, align 4
  %106 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %107 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %106, i32 0, i32 8
  %108 = call i32 @bus_dma_tag_create(i32 %101, i32 1, i32 0, i32 %102, i32 %103, i32* null, i32* null, i32 %104, i32 1, i32 %105, i32 0, i32* null, i32* null, i32* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %97
  %112 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %113 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %282

116:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %145, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @TX_DESC_COUNT, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %117
  %122 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %123 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %126 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %127 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %126, i32 0, i32 7
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @bus_dmamap_create(i32 %124, i32 %125, i32* %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %121
  %137 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %138 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @device_printf(i32 %139, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %282

141:                                              ; preds = %121
  %142 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @dwc_setup_txdesc(%struct.dwc_softc* %142, i32 %143, i32 0, i32 0)
  br label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %117

148:                                              ; preds = %117
  %149 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %150 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @bus_get_dma_tag(i32 %151)
  %153 = load i32, i32* @DWC_DESC_RING_ALIGN, align 4
  %154 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %155 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %156 = load i32, i32* @RX_DESC_SIZE, align 4
  %157 = load i32, i32* @RX_DESC_SIZE, align 4
  %158 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %159 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %158, i32 0, i32 6
  %160 = call i32 @bus_dma_tag_create(i32 %152, i32 %153, i32 0, i32 %154, i32 %155, i32* null, i32* null, i32 %156, i32 1, i32 %157, i32 0, i32* null, i32* null, i32* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %148
  %164 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %165 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %282

168:                                              ; preds = %148
  %169 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %170 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %173 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %172, i32 0, i32 4
  %174 = bitcast %struct.TYPE_6__** %173 to i8**
  %175 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %176 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @BUS_DMA_ZERO, align 4
  %179 = or i32 %177, %178
  %180 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %181 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %180, i32 0, i32 5
  %182 = call i32 @bus_dmamem_alloc(i32 %171, i8** %174, i32 %179, i32* %181)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %168
  %186 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %187 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @device_printf(i32 %188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %282

190:                                              ; preds = %168
  %191 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %192 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %195 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %198 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %197, i32 0, i32 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* @RX_DESC_SIZE, align 4
  %201 = load i32, i32* @dwc_get1paddr, align 4
  %202 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %203 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %202, i32 0, i32 3
  %204 = call i32 @bus_dmamap_load(i32 %193, i32 %196, %struct.TYPE_6__* %199, i32 %200, i32 %201, i64* %203, i32 0)
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %190
  %208 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %209 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @device_printf(i32 %210, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %282

212:                                              ; preds = %190
  %213 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %214 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @bus_get_dma_tag(i32 %215)
  %217 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %218 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %219 = load i32, i32* @MCLBYTES, align 4
  %220 = load i32, i32* @MCLBYTES, align 4
  %221 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %222 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %221, i32 0, i32 2
  %223 = call i32 @bus_dma_tag_create(i32 %216, i32 1, i32 0, i32 %217, i32 %218, i32* null, i32* null, i32 %219, i32 1, i32 %220, i32 0, i32* null, i32* null, i32* %222)
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* %5, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %212
  %227 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %228 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @device_printf(i32 %229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %282

231:                                              ; preds = %212
  store i32 0, i32* %7, align 4
  br label %232

232:                                              ; preds = %278, %231
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* @RX_DESC_COUNT, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %281

236:                                              ; preds = %232
  %237 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %238 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %241 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %242 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %241, i32 0, i32 1
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = call i32 @bus_dmamap_create(i32 %239, i32 %240, i32* %247)
  store i32 %248, i32* %5, align 4
  %249 = load i32, i32* %5, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %236
  %252 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %253 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @device_printf(i32 %254, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %282

256:                                              ; preds = %236
  %257 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %258 = call %struct.mbuf* @dwc_alloc_mbufcl(%struct.dwc_softc* %257)
  store %struct.mbuf* %258, %struct.mbuf** %4, align 8
  %259 = icmp eq %struct.mbuf* %258, null
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %262 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @device_printf(i32 %263, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %265 = load i32, i32* @ENOMEM, align 4
  store i32 %265, i32* %5, align 4
  br label %282

266:                                              ; preds = %256
  %267 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %270 = call i32 @dwc_setup_rxbuf(%struct.dwc_softc* %267, i32 %268, %struct.mbuf* %269)
  store i32 %270, i32* %5, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %274 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @device_printf(i32 %275, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %282

277:                                              ; preds = %266
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %7, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %7, align 4
  br label %232

281:                                              ; preds = %232
  br label %282

282:                                              ; preds = %281, %272, %260, %251, %226, %207, %185, %163, %136, %111, %66, %44, %22
  %283 = load i32, i32* %5, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %282
  %286 = load i32, i32* @ENXIO, align 4
  store i32 %286, i32* %2, align 4
  br label %288

287:                                              ; preds = %282
  store i32 0, i32* %2, align 4
  br label %288

288:                                              ; preds = %287, %285
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, %struct.TYPE_6__*, i32, i32, i64*, i32) #1

declare dso_local i32 @next_txidx(%struct.dwc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @dwc_setup_txdesc(%struct.dwc_softc*, i32, i32, i32) #1

declare dso_local %struct.mbuf* @dwc_alloc_mbufcl(%struct.dwc_softc*) #1

declare dso_local i32 @dwc_setup_rxbuf(%struct.dwc_softc*, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
