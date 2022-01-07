; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.are_softc = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, %struct.are_rxdesc*, i32*, i32, %struct.are_txdesc*, i32, i32, i32, i32, i32 }
%struct.are_rxdesc = type { i32*, i32* }
%struct.are_txdesc = type { i32*, i32* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.are_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to create parent DMA tag\0A\00", align 1
@ARE_RING_ALIGN = common dso_local global i32 0, align 4
@ARE_TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create Tx ring DMA tag\0A\00", align 1
@ARE_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create Rx ring DMA tag\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@ARE_MAXFRAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to create Tx DMA tag\0A\00", align 1
@ARE_RX_ALIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create Rx DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Tx ring\0A\00", align 1
@are_dmamap_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Tx ring\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Rx ring\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Rx ring\0A\00", align 1
@ARE_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to create Tx dmamap\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to create spare Rx dmamap\0A\00", align 1
@ARE_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to create Rx dmamap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.are_softc*)* @are_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_dma_alloc(%struct.are_softc* %0) #0 {
  %2 = alloca %struct.are_softc*, align 8
  %3 = alloca %struct.are_dmamap_arg, align 8
  %4 = alloca %struct.are_txdesc*, align 8
  %5 = alloca %struct.are_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.are_softc* %0, %struct.are_softc** %2, align 8
  %8 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %9 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_get_dma_tag(i32 %10)
  %12 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %16 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %17 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 9
  %19 = call i32 @bus_dma_tag_create(i32 %11, i32 1, i32 0, i32 %12, i32 %13, i32* null, i32* null, i32 %14, i32 0, i32 %15, i32 0, i32* null, i32* null, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %24 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %315

27:                                               ; preds = %1
  %28 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %29 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ARE_RING_ALIGN, align 4
  %33 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @ARE_TX_RING_SIZE, align 4
  %36 = load i32, i32* @ARE_TX_RING_SIZE, align 4
  %37 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %38 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 8
  %40 = call i32 @bus_dma_tag_create(i32 %31, i32 %32, i32 0, i32 %33, i32 %34, i32* null, i32* null, i32 %35, i32 1, i32 %36, i32 0, i32* null, i32* null, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %45 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %315

48:                                               ; preds = %27
  %49 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %50 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ARE_RING_ALIGN, align 4
  %54 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %56 = load i32, i32* @ARE_RX_RING_SIZE, align 4
  %57 = load i32, i32* @ARE_RX_RING_SIZE, align 4
  %58 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %59 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 6
  %61 = call i32 @bus_dma_tag_create(i32 %52, i32 %53, i32 0, i32 %54, i32 %55, i32* null, i32* null, i32 %56, i32 1, i32 %57, i32 0, i32* null, i32* null, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %66 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %315

69:                                               ; preds = %48
  %70 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %71 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %76 = load i32, i32* @MCLBYTES, align 4
  %77 = load i32, i32* @ARE_MAXFRAGS, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* @ARE_MAXFRAGS, align 4
  %80 = load i32, i32* @MCLBYTES, align 4
  %81 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %82 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = call i32 @bus_dma_tag_create(i32 %73, i32 4, i32 0, i32 %74, i32 %75, i32* null, i32* null, i32 %78, i32 %79, i32 %80, i32 0, i32* null, i32* null, i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %69
  %88 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %89 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %315

92:                                               ; preds = %69
  %93 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %94 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ARE_RX_ALIGN, align 4
  %98 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %99 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %100 = load i32, i32* @MCLBYTES, align 4
  %101 = load i32, i32* @MCLBYTES, align 4
  %102 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %103 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 @bus_dma_tag_create(i32 %96, i32 %97, i32 0, i32 %98, i32 %99, i32* null, i32* null, i32 %100, i32 1, i32 %101, i32 0, i32* null, i32* null, i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %92
  %109 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %110 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %315

113:                                              ; preds = %92
  %114 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %115 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %119 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = bitcast i32* %120 to i8**
  %122 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %123 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @BUS_DMA_ZERO, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %128 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 7
  %130 = call i32 @bus_dmamem_alloc(i32 %117, i8** %121, i32 %126, i32* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %113
  %134 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %135 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @device_printf(i32 %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %315

138:                                              ; preds = %113
  %139 = getelementptr inbounds %struct.are_dmamap_arg, %struct.are_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %141 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %145 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %149 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ARE_TX_RING_SIZE, align 4
  %153 = load i32, i32* @are_dmamap_cb, align 4
  %154 = call i32 @bus_dmamap_load(i32 %143, i32 %147, i32 %151, i32 %152, i32 %153, %struct.are_dmamap_arg* %3, i32 0)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %138
  %158 = getelementptr inbounds %struct.are_dmamap_arg, %struct.are_dmamap_arg* %3, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157, %138
  %162 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %163 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @device_printf(i32 %164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %315

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.are_dmamap_arg, %struct.are_dmamap_arg* %3, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %170 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i64 %168, i64* %171, align 8
  %172 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %173 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %177 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = bitcast i32* %178 to i8**
  %180 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %181 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @BUS_DMA_ZERO, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %186 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 5
  %188 = call i32 @bus_dmamem_alloc(i32 %175, i8** %179, i32 %184, i32* %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %166
  %192 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %193 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @device_printf(i32 %194, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %315

196:                                              ; preds = %166
  %197 = getelementptr inbounds %struct.are_dmamap_arg, %struct.are_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %197, align 8
  %198 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %199 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %203 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %207 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @ARE_RX_RING_SIZE, align 4
  %211 = load i32, i32* @are_dmamap_cb, align 4
  %212 = call i32 @bus_dmamap_load(i32 %201, i32 %205, i32 %209, i32 %210, i32 %211, %struct.are_dmamap_arg* %3, i32 0)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %196
  %216 = getelementptr inbounds %struct.are_dmamap_arg, %struct.are_dmamap_arg* %3, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %215, %196
  %220 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %221 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @device_printf(i32 %222, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %315

224:                                              ; preds = %215
  %225 = getelementptr inbounds %struct.are_dmamap_arg, %struct.are_dmamap_arg* %3, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %228 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  store i64 %226, i64* %229, align 8
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %261, %224
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @ARE_TX_RING_CNT, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %264

234:                                              ; preds = %230
  %235 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %236 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 4
  %238 = load %struct.are_txdesc*, %struct.are_txdesc** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %238, i64 %240
  store %struct.are_txdesc* %241, %struct.are_txdesc** %4, align 8
  %242 = load %struct.are_txdesc*, %struct.are_txdesc** %4, align 8
  %243 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %242, i32 0, i32 1
  store i32* null, i32** %243, align 8
  %244 = load %struct.are_txdesc*, %struct.are_txdesc** %4, align 8
  %245 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %244, i32 0, i32 0
  store i32* null, i32** %245, align 8
  %246 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %247 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.are_txdesc*, %struct.are_txdesc** %4, align 8
  %251 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %250, i32 0, i32 0
  %252 = call i32 @bus_dmamap_create(i32 %249, i32 0, i32** %251)
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %234
  %256 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %257 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @device_printf(i32 %258, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %315

260:                                              ; preds = %234
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %7, align 4
  br label %230

264:                                              ; preds = %230
  %265 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %266 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %270 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 2
  %272 = call i32 @bus_dmamap_create(i32 %268, i32 0, i32** %271)
  store i32 %272, i32* %6, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %264
  %275 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %276 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @device_printf(i32 %277, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %315

279:                                              ; preds = %264
  store i32 0, i32* %7, align 4
  br label %280

280:                                              ; preds = %311, %279
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* @ARE_RX_RING_CNT, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %314

284:                                              ; preds = %280
  %285 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %286 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 1
  %288 = load %struct.are_rxdesc*, %struct.are_rxdesc** %287, align 8
  %289 = load i32, i32* %7, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %288, i64 %290
  store %struct.are_rxdesc* %291, %struct.are_rxdesc** %5, align 8
  %292 = load %struct.are_rxdesc*, %struct.are_rxdesc** %5, align 8
  %293 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %292, i32 0, i32 1
  store i32* null, i32** %293, align 8
  %294 = load %struct.are_rxdesc*, %struct.are_rxdesc** %5, align 8
  %295 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %294, i32 0, i32 0
  store i32* null, i32** %295, align 8
  %296 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %297 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.are_rxdesc*, %struct.are_rxdesc** %5, align 8
  %301 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %300, i32 0, i32 0
  %302 = call i32 @bus_dmamap_create(i32 %299, i32 0, i32** %301)
  store i32 %302, i32* %6, align 4
  %303 = load i32, i32* %6, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %284
  %306 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %307 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @device_printf(i32 %308, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %315

310:                                              ; preds = %284
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %7, align 4
  br label %280

314:                                              ; preds = %280
  br label %315

315:                                              ; preds = %314, %305, %274, %255, %219, %191, %161, %133, %108, %87, %64, %43, %22
  %316 = load i32, i32* %6, align 4
  ret i32 %316
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.are_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
