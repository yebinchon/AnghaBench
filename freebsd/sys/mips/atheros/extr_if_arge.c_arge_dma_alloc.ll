; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.arge_rxdesc*, i32*, i32, %struct.arge_txdesc*, i32, i32, i32, i32, i32 }
%struct.arge_rxdesc = type { i32*, i32* }
%struct.arge_txdesc = type { i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }
%struct.arge_dmamap_arg = type { i64 }

@ARGE_HW_FLG_TX_DESC_ALIGN_1BYTE = common dso_local global i32 0, align 4
@ARGE_HW_FLG_RX_DESC_ALIGN_1BYTE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to create parent DMA tag\0A\00", align 1
@ARGE_RING_ALIGN = common dso_local global i32 0, align 4
@ARGE_TX_DMA_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create Tx ring DMA tag\0A\00", align 1
@ARGE_RX_DMA_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create Rx ring DMA tag\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@ARGE_MAXFRAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to create Tx DMA tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create Rx DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Tx ring\0A\00", align 1
@arge_dmamap_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Tx ring\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Rx ring\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Rx ring\0A\00", align 1
@ARGE_TX_RING_COUNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to create Tx dmamap\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to create spare Rx dmamap\0A\00", align 1
@ARGE_RX_RING_COUNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to create Rx dmamap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arge_softc*)* @arge_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arge_dma_alloc(%struct.arge_softc* %0) #0 {
  %2 = alloca %struct.arge_softc*, align 8
  %3 = alloca %struct.arge_dmamap_arg, align 8
  %4 = alloca %struct.arge_txdesc*, align 8
  %5 = alloca %struct.arge_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.arge_softc* %0, %struct.arge_softc** %2, align 8
  store i32 4, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %10 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ARGE_HW_FLG_TX_DESC_ALIGN_1BYTE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ARGE_HW_FLG_RX_DESC_ALIGN_1BYTE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %27 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bus_get_dma_tag(i32 %28)
  %30 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %31 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %32 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %33 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %34 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %35 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 9
  %37 = call i32 @bus_dma_tag_create(i32 %29, i32 1, i32 0, i32 %30, i32 %31, i32* null, i32* null, i32 %32, i32 0, i32 %33, i32 0, i32* null, i32* null, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %42 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %335

45:                                               ; preds = %25
  %46 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %47 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ARGE_RING_ALIGN, align 4
  %51 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %52 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %53 = load i32, i32* @ARGE_TX_DMA_SIZE, align 4
  %54 = load i32, i32* @ARGE_TX_DMA_SIZE, align 4
  %55 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %56 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 8
  %58 = call i32 @bus_dma_tag_create(i32 %49, i32 %50, i32 0, i32 %51, i32 %52, i32* null, i32* null, i32 %53, i32 1, i32 %54, i32 0, i32* null, i32* null, i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %63 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %335

66:                                               ; preds = %45
  %67 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %68 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ARGE_RING_ALIGN, align 4
  %72 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %73 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %74 = load i32, i32* @ARGE_RX_DMA_SIZE, align 4
  %75 = load i32, i32* @ARGE_RX_DMA_SIZE, align 4
  %76 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %77 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  %79 = call i32 @bus_dma_tag_create(i32 %70, i32 %71, i32 0, i32 %72, i32 %73, i32* null, i32* null, i32 %74, i32 1, i32 %75, i32 0, i32* null, i32* null, i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %66
  %83 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %84 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %335

87:                                               ; preds = %66
  %88 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %89 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %94 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %95 = load i32, i32* @MCLBYTES, align 4
  %96 = load i32, i32* @ARGE_MAXFRAGS, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* @ARGE_MAXFRAGS, align 4
  %99 = load i32, i32* @MCLBYTES, align 4
  %100 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %101 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = call i32 @bus_dma_tag_create(i32 %91, i32 %92, i32 0, i32 %93, i32 %94, i32* null, i32* null, i32 %97, i32 %98, i32 %99, i32 0, i32* null, i32* null, i32* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %87
  %107 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %108 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %335

111:                                              ; preds = %87
  %112 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %113 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %118 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %119 = load i32, i32* @MCLBYTES, align 4
  %120 = load i32, i32* @ARGE_MAXFRAGS, align 4
  %121 = load i32, i32* @MCLBYTES, align 4
  %122 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %123 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32 @bus_dma_tag_create(i32 %115, i32 %116, i32 0, i32 %117, i32 %118, i32* null, i32* null, i32 %119, i32 %120, i32 %121, i32 0, i32* null, i32* null, i32* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %111
  %129 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %130 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @device_printf(i32 %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %335

133:                                              ; preds = %111
  %134 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %135 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %139 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = bitcast i32* %140 to i8**
  %142 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %143 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @BUS_DMA_ZERO, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %148 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 7
  %150 = call i32 @bus_dmamem_alloc(i32 %137, i8** %141, i32 %146, i32* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %133
  %154 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %155 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %335

158:                                              ; preds = %133
  %159 = getelementptr inbounds %struct.arge_dmamap_arg, %struct.arge_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %159, align 8
  %160 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %161 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %165 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %169 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ARGE_TX_DMA_SIZE, align 4
  %173 = load i32, i32* @arge_dmamap_cb, align 4
  %174 = call i32 @bus_dmamap_load(i32 %163, i32 %167, i32 %171, i32 %172, i32 %173, %struct.arge_dmamap_arg* %3, i32 0)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %158
  %178 = getelementptr inbounds %struct.arge_dmamap_arg, %struct.arge_dmamap_arg* %3, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %177, %158
  %182 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %183 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @device_printf(i32 %184, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %335

186:                                              ; preds = %177
  %187 = getelementptr inbounds %struct.arge_dmamap_arg, %struct.arge_dmamap_arg* %3, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %190 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i64 %188, i64* %191, align 8
  %192 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %193 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %197 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  %199 = bitcast i32* %198 to i8**
  %200 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %201 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @BUS_DMA_ZERO, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %206 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 5
  %208 = call i32 @bus_dmamem_alloc(i32 %195, i8** %199, i32 %204, i32* %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %186
  %212 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %213 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @device_printf(i32 %214, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %335

216:                                              ; preds = %186
  %217 = getelementptr inbounds %struct.arge_dmamap_arg, %struct.arge_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %217, align 8
  %218 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %219 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %223 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %227 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @ARGE_RX_DMA_SIZE, align 4
  %231 = load i32, i32* @arge_dmamap_cb, align 4
  %232 = call i32 @bus_dmamap_load(i32 %221, i32 %225, i32 %229, i32 %230, i32 %231, %struct.arge_dmamap_arg* %3, i32 0)
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %216
  %236 = getelementptr inbounds %struct.arge_dmamap_arg, %struct.arge_dmamap_arg* %3, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %235, %216
  %240 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %241 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @device_printf(i32 %242, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %335

244:                                              ; preds = %235
  %245 = getelementptr inbounds %struct.arge_dmamap_arg, %struct.arge_dmamap_arg* %3, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %248 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  store i64 %246, i64* %249, align 8
  store i32 0, i32* %7, align 4
  br label %250

250:                                              ; preds = %281, %244
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @ARGE_TX_RING_COUNT, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %284

254:                                              ; preds = %250
  %255 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %256 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 4
  %258 = load %struct.arge_txdesc*, %struct.arge_txdesc** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %258, i64 %260
  store %struct.arge_txdesc* %261, %struct.arge_txdesc** %4, align 8
  %262 = load %struct.arge_txdesc*, %struct.arge_txdesc** %4, align 8
  %263 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %262, i32 0, i32 1
  store i32* null, i32** %263, align 8
  %264 = load %struct.arge_txdesc*, %struct.arge_txdesc** %4, align 8
  %265 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %264, i32 0, i32 0
  store i32* null, i32** %265, align 8
  %266 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %267 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.arge_txdesc*, %struct.arge_txdesc** %4, align 8
  %271 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %270, i32 0, i32 0
  %272 = call i32 @bus_dmamap_create(i32 %269, i32 0, i32** %271)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %254
  %276 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %277 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @device_printf(i32 %278, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %335

280:                                              ; preds = %254
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %7, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %7, align 4
  br label %250

284:                                              ; preds = %250
  %285 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %286 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %290 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 2
  %292 = call i32 @bus_dmamap_create(i32 %288, i32 0, i32** %291)
  store i32 %292, i32* %6, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %284
  %295 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %296 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @device_printf(i32 %297, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %335

299:                                              ; preds = %284
  store i32 0, i32* %7, align 4
  br label %300

300:                                              ; preds = %331, %299
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* @ARGE_RX_RING_COUNT, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %334

304:                                              ; preds = %300
  %305 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %306 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 1
  %308 = load %struct.arge_rxdesc*, %struct.arge_rxdesc** %307, align 8
  %309 = load i32, i32* %7, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.arge_rxdesc, %struct.arge_rxdesc* %308, i64 %310
  store %struct.arge_rxdesc* %311, %struct.arge_rxdesc** %5, align 8
  %312 = load %struct.arge_rxdesc*, %struct.arge_rxdesc** %5, align 8
  %313 = getelementptr inbounds %struct.arge_rxdesc, %struct.arge_rxdesc* %312, i32 0, i32 1
  store i32* null, i32** %313, align 8
  %314 = load %struct.arge_rxdesc*, %struct.arge_rxdesc** %5, align 8
  %315 = getelementptr inbounds %struct.arge_rxdesc, %struct.arge_rxdesc* %314, i32 0, i32 0
  store i32* null, i32** %315, align 8
  %316 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %317 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.arge_rxdesc*, %struct.arge_rxdesc** %5, align 8
  %321 = getelementptr inbounds %struct.arge_rxdesc, %struct.arge_rxdesc* %320, i32 0, i32 0
  %322 = call i32 @bus_dmamap_create(i32 %319, i32 0, i32** %321)
  store i32 %322, i32* %6, align 4
  %323 = load i32, i32* %6, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %304
  %326 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %327 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @device_printf(i32 %328, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %335

330:                                              ; preds = %304
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %7, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %7, align 4
  br label %300

334:                                              ; preds = %300
  br label %335

335:                                              ; preds = %334, %325, %294, %275, %239, %211, %181, %153, %128, %106, %82, %61, %40
  %336 = load i32, i32* %6, align 4
  ret i32 %336
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.arge_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
