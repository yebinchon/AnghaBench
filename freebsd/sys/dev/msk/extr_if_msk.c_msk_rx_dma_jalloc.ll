; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rx_dma_jalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rx_dma_jalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.msk_rxdesc*, i32*, i32, i32, i32 }
%struct.msk_rxdesc = type { i32*, i32* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.msk_dmamap_arg = type { i64 }

@jumbo_disable = common dso_local global i64 0, align 8
@MSK_FLAG_JUMBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"disabling jumbo frame support\0A\00", align 1
@MSK_RING_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MSK_JUMBO_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to create jumbo Rx ring DMA tag\0A\00", align 1
@MSK_FLAG_RAMBUF = common dso_local global i32 0, align 4
@MSK_RX_BUF_ALIGN = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to create jumbo Rx DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"failed to allocate DMA'able memory for jumbo Rx ring\0A\00", align 1
@msk_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"failed to load DMA'able memory for jumbo Rx ring\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to create spare jumbo Rx dmamap\0A\00", align 1
@MSK_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to create jumbo Rx dmamap\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"disabling jumbo frame support due to resource shortage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msk_if_softc*)* @msk_rx_dma_jalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_rx_dma_jalloc(%struct.msk_if_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_if_softc*, align 8
  %4 = alloca %struct.msk_dmamap_arg, align 8
  %5 = alloca %struct.msk_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %3, align 8
  %9 = load i64, i64* @jumbo_disable, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %13 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %22 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %26 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %200

29:                                               ; preds = %11
  %30 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %31 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MSK_RING_ALIGN, align 4
  %35 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %36 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %37 = load i32, i32* @MSK_JUMBO_RX_RING_SZ, align 4
  %38 = load i32, i32* @MSK_JUMBO_RX_RING_SZ, align 4
  %39 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %40 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = call i32 @bus_dma_tag_create(i32 %33, i32 %34, i32 0, i32 %35, i32 %36, i32* null, i32* null, i32 %37, i32 1, i32 %38, i32 0, i32* null, i32* null, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %47 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %186

50:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  %51 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %52 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MSK_FLAG_RAMBUF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @MSK_RX_BUF_ALIGN, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %50
  %60 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %61 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %66 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %67 = load i32, i32* @MJUM9BYTES, align 4
  %68 = load i32, i32* @MJUM9BYTES, align 4
  %69 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %70 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @bus_dma_tag_create(i32 %63, i32 %64, i32 0, i32 %65, i32 %66, i32* null, i32* null, i32 %67, i32 1, i32 %68, i32 0, i32* null, i32* null, i32* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %59
  %76 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %77 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %186

80:                                               ; preds = %59
  %81 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %82 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %86 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = bitcast i32* %87 to i8**
  %89 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %90 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @BUS_DMA_ZERO, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %95 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = call i32 @bus_dmamem_alloc(i32 %84, i8** %88, i32 %93, i32* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %80
  %101 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %102 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %186

105:                                              ; preds = %80
  %106 = getelementptr inbounds %struct.msk_dmamap_arg, %struct.msk_dmamap_arg* %4, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %108 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %112 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %116 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @MSK_JUMBO_RX_RING_SZ, align 4
  %120 = load i32, i32* @msk_dmamap_cb, align 4
  %121 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %122 = call i32 @bus_dmamap_load(i32 %110, i32 %114, i32 %118, i32 %119, i32 %120, %struct.msk_dmamap_arg* %4, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %105
  %126 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %127 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @device_printf(i32 %128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %186

130:                                              ; preds = %105
  %131 = getelementptr inbounds %struct.msk_dmamap_arg, %struct.msk_dmamap_arg* %4, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %134 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store i64 %132, i64* %135, align 8
  %136 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %137 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %141 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = call i32 @bus_dmamap_create(i32 %139, i32 0, i32** %142)
  store i32 %143, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %130
  %146 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %147 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %186

150:                                              ; preds = %130
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %182, %150
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @MSK_JUMBO_RX_RING_CNT, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %185

155:                                              ; preds = %151
  %156 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %157 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %159, i64 %161
  store %struct.msk_rxdesc* %162, %struct.msk_rxdesc** %5, align 8
  %163 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %164 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %163, i32 0, i32 1
  store i32* null, i32** %164, align 8
  %165 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %166 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %165, i32 0, i32 0
  store i32* null, i32** %166, align 8
  %167 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %168 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %172 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %171, i32 0, i32 0
  %173 = call i32 @bus_dmamap_create(i32 %170, i32 0, i32** %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %155
  %177 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %178 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @device_printf(i32 %179, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %186

181:                                              ; preds = %155
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %151

185:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %200

186:                                              ; preds = %176, %145, %125, %100, %75, %45
  %187 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %188 = call i32 @msk_rx_dma_jfree(%struct.msk_if_softc* %187)
  %189 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %190 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @device_printf(i32 %191, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %193 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %196 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %186, %185, %18
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.msk_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

declare dso_local i32 @msk_rx_dma_jfree(%struct.msk_if_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
