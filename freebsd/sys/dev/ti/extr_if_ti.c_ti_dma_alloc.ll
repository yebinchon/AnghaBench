; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i64, i64, i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not allocate parent dma tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TI_RING_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"GIB\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"event ring\00", align 1
@TI_EVENT_RING_SZ = common dso_local global i32 0, align 4
@TI_STD_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"RX ring\00", align 1
@TI_JUMBO_RING_ALIGN = common dso_local global i32 0, align 4
@TI_JUMBO_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"jumbo RX ring\00", align 1
@TI_RX_RETURN_RING_SZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"RX return ring\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"could not allocate RX dma tag\0A\00", align 1
@MJUM9BYTES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"could not allocate jumbo RX dma tag\0A\00", align 1
@TI_MAXTXSEGS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"could not allocate TX dma tag\0A\00", align 1
@TI_STD_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"could not create DMA map for RX\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"could not create spare DMA map for RX\0A\00", align 1
@TI_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"could not create DMA map for jumbo RX\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"could not create spare DMA map for jumbo RX\0A\00", align 1
@TI_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"could not create DMA map for TX\0A\00", align 1
@TI_HWREV_TIGON = common dso_local global i64 0, align 8
@TI_TX_RING_SZ = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"TX ring\00", align 1
@TI_MINI_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"mini RX ring\00", align 1
@MHLEN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"could not allocate mini RX dma tag\0A\00", align 1
@TI_MINI_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [38 x i8] c"could not create DMA map for mini RX\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"could not create spare DMA map for mini RX\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*)* @ti_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dma_alloc(%struct.ti_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %3, align 8
  %7 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @bus_get_dma_tag(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %21 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %22 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %23 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = call i32 @bus_dma_tag_create(i32 %18, i32 1, i32 0, i32 %19, i32 %20, i32* null, i32* null, i32 %21, i32 0, i32 %22, i32 0, i32* null, i32* null, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %14
  %30 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %2, align 4
  br label %476

35:                                               ; preds = %14
  %36 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %37 = load i32, i32* @TI_RING_ALIGN, align 4
  %38 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 27
  %41 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 15
  %44 = bitcast i32* %43 to i32**
  %45 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 26
  %48 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 14
  %51 = call i32 @ti_dma_ring_alloc(%struct.ti_softc* %36, i32 %37, i32 4, i32* %40, i32** %44, i32* %47, i32* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %476

56:                                               ; preds = %35
  %57 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %58 = load i32, i32* @TI_RING_ALIGN, align 4
  %59 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 25
  %62 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 13
  %65 = bitcast i32* %64 to i32**
  %66 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 24
  %69 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 12
  %72 = call i32 @ti_dma_ring_alloc(%struct.ti_softc* %57, i32 %58, i32 4, i32* %61, i32** %65, i32* %68, i32* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %56
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %476

77:                                               ; preds = %56
  %78 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %79 = load i32, i32* @TI_RING_ALIGN, align 4
  %80 = load i32, i32* @TI_EVENT_RING_SZ, align 4
  %81 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 23
  %84 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %85 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 11
  %87 = bitcast i32* %86 to i32**
  %88 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 22
  %91 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 10
  %94 = call i32 @ti_dma_ring_alloc(%struct.ti_softc* %78, i32 %79, i32 %80, i32* %83, i32** %87, i32* %90, i32* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %77
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %476

99:                                               ; preds = %77
  %100 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %101 = load i32, i32* @TI_RING_ALIGN, align 4
  %102 = load i32, i32* @TI_STD_RX_RING_SZ, align 4
  %103 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 21
  %106 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 9
  %109 = bitcast i32* %108 to i32**
  %110 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 20
  %113 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 8
  %116 = call i32 @ti_dma_ring_alloc(%struct.ti_softc* %100, i32 %101, i32 %102, i32* %105, i32** %109, i32* %112, i32* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %99
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %476

121:                                              ; preds = %99
  %122 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %123 = load i32, i32* @TI_JUMBO_RING_ALIGN, align 4
  %124 = load i32, i32* @TI_JUMBO_RX_RING_SZ, align 4
  %125 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %126 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 19
  %128 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %129 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 7
  %131 = bitcast i32* %130 to i32**
  %132 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %133 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 18
  %135 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %136 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 6
  %138 = call i32 @ti_dma_ring_alloc(%struct.ti_softc* %122, i32 %123, i32 %124, i32* %127, i32** %131, i32* %134, i32* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %121
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %476

143:                                              ; preds = %121
  %144 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %145 = load i32, i32* @TI_RING_ALIGN, align 4
  %146 = load i32, i32* @TI_RX_RETURN_RING_SZ, align 4
  %147 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 17
  %150 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %151 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  %153 = bitcast i32* %152 to i32**
  %154 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %155 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 16
  %157 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %158 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 4
  %160 = call i32 @ti_dma_ring_alloc(%struct.ti_softc* %144, i32 %145, i32 %146, i32* %149, i32** %153, i32* %156, i32* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %143
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %476

165:                                              ; preds = %143
  %166 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %167 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %171 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %172 = load i32, i32* @MCLBYTES, align 4
  %173 = load i32, i32* @MCLBYTES, align 4
  %174 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %175 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 14
  %177 = call i32 @bus_dma_tag_create(i32 %169, i32 1, i32 0, i32 %170, i32 %171, i32* null, i32* null, i32 %172, i32 1, i32 %173, i32 0, i32* null, i32* null, i32* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %165
  %181 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %182 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %476

186:                                              ; preds = %165
  %187 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %188 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %192 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %193 = load i32, i32* @MJUM9BYTES, align 4
  %194 = load i32, i32* @MJUM9BYTES, align 4
  %195 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %196 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 11
  %198 = call i32 @bus_dma_tag_create(i32 %190, i32 1, i32 0, i32 %191, i32 %192, i32* null, i32* null, i32 %193, i32 1, i32 %194, i32 0, i32* null, i32* null, i32* %197)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %186
  %202 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %203 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @device_printf(i32 %204, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %476

207:                                              ; preds = %186
  %208 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %209 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %213 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %214 = load i32, i32* @MCLBYTES, align 4
  %215 = load i32, i32* @TI_MAXTXSEGS, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* @TI_MAXTXSEGS, align 4
  %218 = load i32, i32* @MCLBYTES, align 4
  %219 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %220 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 9
  %222 = call i32 @bus_dma_tag_create(i32 %211, i32 1, i32 0, i32 %212, i32 %213, i32* null, i32* null, i32 %216, i32 %217, i32 %218, i32 0, i32* null, i32* null, i32* %221)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %207
  %226 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %227 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @device_printf(i32 %228, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %230 = load i32, i32* @ENOMEM, align 4
  store i32 %230, i32* %2, align 4
  br label %476

231:                                              ; preds = %207
  store i32 0, i32* %5, align 4
  br label %232

232:                                              ; preds = %258, %231
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* @TI_STD_RX_RING_CNT, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %261

236:                                              ; preds = %232
  %237 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %238 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 14
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %242 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 15
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = call i32 @bus_dmamap_create(i32 %240, i32 0, i32* %247)
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %236
  %252 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %253 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @device_printf(i32 %254, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %256 = load i32, i32* %6, align 4
  store i32 %256, i32* %2, align 4
  br label %476

257:                                              ; preds = %236
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %5, align 4
  br label %232

261:                                              ; preds = %232
  %262 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %263 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 14
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %267 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 13
  %269 = call i32 @bus_dmamap_create(i32 %265, i32 0, i32* %268)
  store i32 %269, i32* %6, align 4
  %270 = load i32, i32* %6, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %261
  %273 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %274 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @device_printf(i32 %275, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %277 = load i32, i32* %6, align 4
  store i32 %277, i32* %2, align 4
  br label %476

278:                                              ; preds = %261
  store i32 0, i32* %5, align 4
  br label %279

279:                                              ; preds = %305, %278
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* @TI_JUMBO_RX_RING_CNT, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %308

283:                                              ; preds = %279
  %284 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %285 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 11
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %289 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 12
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %5, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = call i32 @bus_dmamap_create(i32 %287, i32 0, i32* %294)
  store i32 %295, i32* %6, align 4
  %296 = load i32, i32* %6, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %283
  %299 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %300 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @device_printf(i32 %301, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %303 = load i32, i32* %6, align 4
  store i32 %303, i32* %2, align 4
  br label %476

304:                                              ; preds = %283
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %5, align 4
  br label %279

308:                                              ; preds = %279
  %309 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %310 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 11
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %314 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 10
  %316 = call i32 @bus_dmamap_create(i32 %312, i32 0, i32* %315)
  store i32 %316, i32* %6, align 4
  %317 = load i32, i32* %6, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %308
  %320 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %321 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @device_printf(i32 %322, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %324 = load i32, i32* %6, align 4
  store i32 %324, i32* %2, align 4
  br label %476

325:                                              ; preds = %308
  store i32 0, i32* %5, align 4
  br label %326

326:                                              ; preds = %353, %325
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* @TI_TX_RING_CNT, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %356

330:                                              ; preds = %326
  %331 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %332 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 9
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %336 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 8
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %337, align 8
  %339 = load i32, i32* %5, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = call i32 @bus_dmamap_create(i32 %334, i32 0, i32* %342)
  store i32 %343, i32* %6, align 4
  %344 = load i32, i32* %6, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %330
  %347 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %348 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @device_printf(i32 %349, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %351 = load i32, i32* @ENOMEM, align 4
  store i32 %351, i32* %2, align 4
  br label %476

352:                                              ; preds = %330
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %5, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %5, align 4
  br label %326

356:                                              ; preds = %326
  %357 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %358 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @TI_HWREV_TIGON, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %356
  store i32 0, i32* %2, align 4
  br label %476

363:                                              ; preds = %356
  %364 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %365 = load i32, i32* @TI_RING_ALIGN, align 4
  %366 = load i32, i32* @TI_TX_RING_SZ, align 4
  %367 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %368 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 7
  %370 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %371 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %370, i32 0, i32 4
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 3
  %373 = bitcast i32* %372 to i32**
  %374 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %375 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 6
  %377 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %378 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %377, i32 0, i32 4
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 2
  %380 = call i32 @ti_dma_ring_alloc(%struct.ti_softc* %364, i32 %365, i32 %366, i32* %369, i32** %373, i32* %376, i32* %379, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  store i32 %380, i32* %6, align 4
  %381 = load i32, i32* %6, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %363
  %384 = load i32, i32* %6, align 4
  store i32 %384, i32* %2, align 4
  br label %476

385:                                              ; preds = %363
  %386 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %387 = load i32, i32* @TI_RING_ALIGN, align 4
  %388 = load i32, i32* @TI_MINI_RX_RING_SZ, align 4
  %389 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %390 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %390, i32 0, i32 5
  %392 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %393 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %392, i32 0, i32 4
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 1
  %395 = bitcast i32* %394 to i32**
  %396 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %397 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 4
  %399 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %400 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %399, i32 0, i32 4
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 0
  %402 = call i32 @ti_dma_ring_alloc(%struct.ti_softc* %386, i32 %387, i32 %388, i32* %391, i32** %395, i32* %398, i32* %401, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store i32 %402, i32* %6, align 4
  %403 = load i32, i32* %6, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %385
  %406 = load i32, i32* %6, align 4
  store i32 %406, i32* %2, align 4
  br label %476

407:                                              ; preds = %385
  %408 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %409 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %413 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %414 = load i32, i32* @MHLEN, align 4
  %415 = load i32, i32* @MHLEN, align 4
  %416 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %417 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 1
  %419 = call i32 @bus_dma_tag_create(i32 %411, i32 1, i32 0, i32 %412, i32 %413, i32* null, i32* null, i32 %414, i32 1, i32 %415, i32 0, i32* null, i32* null, i32* %418)
  store i32 %419, i32* %6, align 4
  %420 = load i32, i32* %6, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %407
  %423 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %424 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @device_printf(i32 %425, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %427 = load i32, i32* %6, align 4
  store i32 %427, i32* %2, align 4
  br label %476

428:                                              ; preds = %407
  store i32 0, i32* %5, align 4
  br label %429

429:                                              ; preds = %455, %428
  %430 = load i32, i32* %5, align 4
  %431 = load i32, i32* @TI_MINI_RX_RING_CNT, align 4
  %432 = icmp slt i32 %430, %431
  br i1 %432, label %433, label %458

433:                                              ; preds = %429
  %434 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %435 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %439 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %438, i32 0, i32 3
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 2
  %441 = load i32*, i32** %440, align 8
  %442 = load i32, i32* %5, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = call i32 @bus_dmamap_create(i32 %437, i32 0, i32* %444)
  store i32 %445, i32* %6, align 4
  %446 = load i32, i32* %6, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %454

448:                                              ; preds = %433
  %449 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %450 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @device_printf(i32 %451, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  %453 = load i32, i32* %6, align 4
  store i32 %453, i32* %2, align 4
  br label %476

454:                                              ; preds = %433
  br label %455

455:                                              ; preds = %454
  %456 = load i32, i32* %5, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %5, align 4
  br label %429

458:                                              ; preds = %429
  %459 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %460 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %459, i32 0, i32 3
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %464 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %463, i32 0, i32 3
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 0
  %466 = call i32 @bus_dmamap_create(i32 %462, i32 0, i32* %465)
  store i32 %466, i32* %6, align 4
  %467 = load i32, i32* %6, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %458
  %470 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %471 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = call i32 @device_printf(i32 %472, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0))
  %474 = load i32, i32* %6, align 4
  store i32 %474, i32* %2, align 4
  br label %476

475:                                              ; preds = %458
  store i32 0, i32* %2, align 4
  br label %476

476:                                              ; preds = %475, %469, %448, %422, %405, %383, %362, %346, %319, %298, %272, %251, %225, %201, %180, %163, %141, %119, %97, %75, %54, %29
  %477 = load i32, i32* %2, align 4
  ret i32 %477
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ti_dma_ring_alloc(%struct.ti_softc*, i32, i32, i32*, i32**, i32*, i32*, i8*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
