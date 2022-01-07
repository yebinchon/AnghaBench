; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32, %struct.et_txbuf_data, i32, i32, %struct.et_rxdesc_ring*, %struct.et_rxbuf_data*, i32, i32, i32, %struct.et_rxstatus_data, %struct.et_rxstat_ring, %struct.et_txstatus_data, %struct.et_txdesc_ring, i32 }
%struct.et_txbuf_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.et_rxdesc_ring = type { i32, i32, i32, i32, i32 }
%struct.et_rxbuf_data = type { %struct.TYPE_3__*, %struct.et_rxdesc_ring*, %struct.et_softc*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.et_rxstatus_data = type { i32, i32, i32, i32 }
%struct.et_rxstat_ring = type { i32, i32, i32, i32 }
%struct.et_txstatus_data = type { i32, i32, i32, i32 }
%struct.et_txdesc_ring = type { i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not allocate parent dma tag\0A\00", align 1
@ET_RING_ALIGN = common dso_local global i32 0, align 4
@ET_TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TX ring\00", align 1
@ET_STATUS_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"TX status block\00", align 1
@ET_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"RX ring 0\00", align 1
@ET_RX_RING0_POS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"RX ring 1\00", align 1
@ET_RX_RING1_POS = common dso_local global i32 0, align 4
@ET_RXSTAT_RING_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"RX stat ring\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"RX status block\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"could not allocate parent dma tag for mbuf\0A\00", align 1
@MHLEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"could not create mini RX dma tag\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"could not create RX dma tag\0A\00", align 1
@ET_NSEG_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"could not create TX dma tag\0A\00", align 1
@ET_RXDMA_CTRL_RING0_128 = common dso_local global i32 0, align 4
@et_newbuf_hdr = common dso_local global i32 0, align 4
@et_rxbuf_discard = common dso_local global i8* null, align 8
@ET_RX_NDESC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"could not create DMA map for mini RX mbufs\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"could not create spare DMA map for mini RX mbuf\0A\00", align 1
@ET_RXDMA_CTRL_RING1_2048 = common dso_local global i32 0, align 4
@et_newbuf_cluster = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [44 x i8] c"could not create spare DMA map for RX mbuf\0A\00", align 1
@ET_TX_NDESC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"could not create DMA map for TX mbufs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et_softc*)* @et_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_dma_alloc(%struct.et_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca %struct.et_txdesc_ring*, align 8
  %5 = alloca %struct.et_rxdesc_ring*, align 8
  %6 = alloca %struct.et_rxstat_ring*, align 8
  %7 = alloca %struct.et_rxstatus_data*, align 8
  %8 = alloca %struct.et_rxbuf_data*, align 8
  %9 = alloca %struct.et_txbuf_data*, align 8
  %10 = alloca %struct.et_txstatus_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %3, align 8
  %13 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %14 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bus_get_dma_tag(i32 %15)
  %17 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %18 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %19 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %20 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %21 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %22 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %21, i32 0, i32 14
  %23 = call i32 @bus_dma_tag_create(i32 %16, i32 1, i32 0, i32 %17, i32 %18, i32* null, i32* null, i32 %19, i32 0, i32 %20, i32 0, i32* null, i32* null, i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %28 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %2, align 4
  br label %404

32:                                               ; preds = %1
  %33 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %34 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %33, i32 0, i32 13
  store %struct.et_txdesc_ring* %34, %struct.et_txdesc_ring** %4, align 8
  %35 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %36 = load i32, i32* @ET_RING_ALIGN, align 4
  %37 = load i32, i32* @ET_TX_RING_SIZE, align 4
  %38 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %4, align 8
  %39 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %38, i32 0, i32 3
  %40 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %4, align 8
  %41 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %40, i32 0, i32 2
  %42 = bitcast i32* %41 to i32**
  %43 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %4, align 8
  %44 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %43, i32 0, i32 1
  %45 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %4, align 8
  %46 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %45, i32 0, i32 0
  %47 = call i32 @et_dma_ring_alloc(%struct.et_softc* %35, i32 %36, i32 %37, i32* %39, i32** %42, i32* %44, i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %2, align 4
  br label %404

52:                                               ; preds = %32
  %53 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %54 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %53, i32 0, i32 12
  store %struct.et_txstatus_data* %54, %struct.et_txstatus_data** %10, align 8
  %55 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %56 = load i32, i32* @ET_STATUS_ALIGN, align 4
  %57 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %10, align 8
  %58 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %57, i32 0, i32 3
  %59 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %10, align 8
  %60 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %59, i32 0, i32 2
  %61 = bitcast i32* %60 to i32**
  %62 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %10, align 8
  %63 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %62, i32 0, i32 1
  %64 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %10, align 8
  %65 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %64, i32 0, i32 0
  %66 = call i32 @et_dma_ring_alloc(%struct.et_softc* %55, i32 %56, i32 4, i32* %58, i32** %61, i32* %63, i32* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %2, align 4
  br label %404

71:                                               ; preds = %52
  %72 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %73 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %72, i32 0, i32 5
  %74 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %73, align 8
  %75 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %74, i64 0
  store %struct.et_rxdesc_ring* %75, %struct.et_rxdesc_ring** %5, align 8
  %76 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %77 = load i32, i32* @ET_RING_ALIGN, align 4
  %78 = load i32, i32* @ET_RX_RING_SIZE, align 4
  %79 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %80 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %79, i32 0, i32 4
  %81 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %82 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %81, i32 0, i32 3
  %83 = bitcast i32* %82 to i32**
  %84 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %85 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %84, i32 0, i32 2
  %86 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %87 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %86, i32 0, i32 1
  %88 = call i32 @et_dma_ring_alloc(%struct.et_softc* %76, i32 %77, i32 %78, i32* %80, i32** %83, i32* %85, i32* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* @ET_RX_RING0_POS, align 4
  %90 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %91 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %71
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %2, align 4
  br label %404

96:                                               ; preds = %71
  %97 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %98 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %97, i32 0, i32 5
  %99 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %98, align 8
  %100 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %99, i64 1
  store %struct.et_rxdesc_ring* %100, %struct.et_rxdesc_ring** %5, align 8
  %101 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %102 = load i32, i32* @ET_RING_ALIGN, align 4
  %103 = load i32, i32* @ET_RX_RING_SIZE, align 4
  %104 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %105 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %104, i32 0, i32 4
  %106 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %107 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %106, i32 0, i32 3
  %108 = bitcast i32* %107 to i32**
  %109 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %110 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %109, i32 0, i32 2
  %111 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %112 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %111, i32 0, i32 1
  %113 = call i32 @et_dma_ring_alloc(%struct.et_softc* %101, i32 %102, i32 %103, i32* %105, i32** %108, i32* %110, i32* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* @ET_RX_RING1_POS, align 4
  %115 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %5, align 8
  %116 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %96
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %2, align 4
  br label %404

121:                                              ; preds = %96
  %122 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %123 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %122, i32 0, i32 11
  store %struct.et_rxstat_ring* %123, %struct.et_rxstat_ring** %6, align 8
  %124 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %125 = load i32, i32* @ET_RING_ALIGN, align 4
  %126 = load i32, i32* @ET_RXSTAT_RING_SIZE, align 4
  %127 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %128 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %127, i32 0, i32 3
  %129 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %130 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %129, i32 0, i32 2
  %131 = bitcast i32* %130 to i32**
  %132 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %133 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %132, i32 0, i32 1
  %134 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %6, align 8
  %135 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %134, i32 0, i32 0
  %136 = call i32 @et_dma_ring_alloc(%struct.et_softc* %124, i32 %125, i32 %126, i32* %128, i32** %131, i32* %133, i32* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %121
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %2, align 4
  br label %404

141:                                              ; preds = %121
  %142 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %143 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %142, i32 0, i32 10
  store %struct.et_rxstatus_data* %143, %struct.et_rxstatus_data** %7, align 8
  %144 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %145 = load i32, i32* @ET_STATUS_ALIGN, align 4
  %146 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %7, align 8
  %147 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %146, i32 0, i32 3
  %148 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %7, align 8
  %149 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %148, i32 0, i32 2
  %150 = bitcast i32* %149 to i32**
  %151 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %7, align 8
  %152 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %151, i32 0, i32 1
  %153 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %7, align 8
  %154 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %153, i32 0, i32 0
  %155 = call i32 @et_dma_ring_alloc(%struct.et_softc* %144, i32 %145, i32 4, i32* %147, i32** %150, i32* %152, i32* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %141
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %2, align 4
  br label %404

160:                                              ; preds = %141
  %161 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %162 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @bus_get_dma_tag(i32 %163)
  %165 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %166 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %167 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %168 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %169 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %170 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %169, i32 0, i32 9
  %171 = call i32 @bus_dma_tag_create(i32 %164, i32 1, i32 0, i32 %165, i32 %166, i32* null, i32* null, i32 %167, i32 0, i32 %168, i32 0, i32* null, i32* null, i32* %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %160
  %175 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %176 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @device_printf(i32 %177, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %2, align 4
  br label %404

180:                                              ; preds = %160
  %181 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %182 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %185 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %186 = load i32, i32* @MHLEN, align 4
  %187 = load i32, i32* @MHLEN, align 4
  %188 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %189 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %188, i32 0, i32 8
  %190 = call i32 @bus_dma_tag_create(i32 %183, i32 1, i32 0, i32 %184, i32 %185, i32* null, i32* null, i32 %186, i32 1, i32 %187, i32 0, i32* null, i32* null, i32* %189)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %180
  %194 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %195 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @device_printf(i32 %196, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %2, align 4
  br label %404

199:                                              ; preds = %180
  %200 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %201 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %204 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %205 = load i32, i32* @MCLBYTES, align 4
  %206 = load i32, i32* @MCLBYTES, align 4
  %207 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %208 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %207, i32 0, i32 4
  %209 = call i32 @bus_dma_tag_create(i32 %202, i32 1, i32 0, i32 %203, i32 %204, i32* null, i32* null, i32 %205, i32 1, i32 %206, i32 0, i32* null, i32* null, i32* %208)
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %199
  %213 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %214 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @device_printf(i32 %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %217 = load i32, i32* %12, align 4
  store i32 %217, i32* %2, align 4
  br label %404

218:                                              ; preds = %199
  %219 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %220 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %223 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %224 = load i32, i32* @MCLBYTES, align 4
  %225 = load i32, i32* @ET_NSEG_MAX, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* @ET_NSEG_MAX, align 4
  %228 = load i32, i32* @MCLBYTES, align 4
  %229 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %230 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %229, i32 0, i32 1
  %231 = call i32 @bus_dma_tag_create(i32 %221, i32 1, i32 0, i32 %222, i32 %223, i32* null, i32* null, i32 %226, i32 %227, i32 %228, i32 0, i32* null, i32* null, i32* %230)
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %12, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %218
  %235 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %236 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @device_printf(i32 %237, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %239 = load i32, i32* %12, align 4
  store i32 %239, i32* %2, align 4
  br label %404

240:                                              ; preds = %218
  %241 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %242 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %241, i32 0, i32 6
  %243 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %242, align 8
  %244 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %243, i64 0
  store %struct.et_rxbuf_data* %244, %struct.et_rxbuf_data** %8, align 8
  %245 = load i32, i32* @ET_RXDMA_CTRL_RING0_128, align 4
  %246 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %247 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* @et_newbuf_hdr, align 4
  %249 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %250 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  %251 = load i8*, i8** @et_rxbuf_discard, align 8
  %252 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %253 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %252, i32 0, i32 3
  store i8* %251, i8** %253, align 8
  %254 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %255 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %256 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %255, i32 0, i32 2
  store %struct.et_softc* %254, %struct.et_softc** %256, align 8
  %257 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %258 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %257, i32 0, i32 5
  %259 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %258, align 8
  %260 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %259, i64 0
  %261 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %262 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %261, i32 0, i32 1
  store %struct.et_rxdesc_ring* %260, %struct.et_rxdesc_ring** %262, align 8
  store i32 0, i32* %11, align 4
  br label %263

263:                                              ; preds = %288, %240
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* @ET_RX_NDESC, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %291

267:                                              ; preds = %263
  %268 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %269 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %272 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %271, i32 0, i32 0
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = call i32 @bus_dmamap_create(i32 %270, i32 0, i32* %277)
  store i32 %278, i32* %12, align 4
  %279 = load i32, i32* %12, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %267
  %282 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %283 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @device_printf(i32 %284, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %286 = load i32, i32* %12, align 4
  store i32 %286, i32* %2, align 4
  br label %404

287:                                              ; preds = %267
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %11, align 4
  br label %263

291:                                              ; preds = %263
  %292 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %293 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %296 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %295, i32 0, i32 7
  %297 = call i32 @bus_dmamap_create(i32 %294, i32 0, i32* %296)
  store i32 %297, i32* %12, align 4
  %298 = load i32, i32* %12, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %291
  %301 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %302 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @device_printf(i32 %303, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  %305 = load i32, i32* %12, align 4
  store i32 %305, i32* %2, align 4
  br label %404

306:                                              ; preds = %291
  %307 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %308 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %307, i32 0, i32 6
  %309 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %308, align 8
  %310 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %309, i64 1
  store %struct.et_rxbuf_data* %310, %struct.et_rxbuf_data** %8, align 8
  %311 = load i32, i32* @ET_RXDMA_CTRL_RING1_2048, align 4
  %312 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %313 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %312, i32 0, i32 5
  store i32 %311, i32* %313, align 4
  %314 = load i32, i32* @et_newbuf_cluster, align 4
  %315 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %316 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %315, i32 0, i32 4
  store i32 %314, i32* %316, align 8
  %317 = load i8*, i8** @et_rxbuf_discard, align 8
  %318 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %319 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %318, i32 0, i32 3
  store i8* %317, i8** %319, align 8
  %320 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %321 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %322 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %321, i32 0, i32 2
  store %struct.et_softc* %320, %struct.et_softc** %322, align 8
  %323 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %324 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %323, i32 0, i32 5
  %325 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %324, align 8
  %326 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %325, i64 1
  %327 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %328 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %327, i32 0, i32 1
  store %struct.et_rxdesc_ring* %326, %struct.et_rxdesc_ring** %328, align 8
  store i32 0, i32* %11, align 4
  br label %329

329:                                              ; preds = %354, %306
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* @ET_RX_NDESC, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %357

333:                                              ; preds = %329
  %334 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %335 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %8, align 8
  %338 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %337, i32 0, i32 0
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %338, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 0
  %344 = call i32 @bus_dmamap_create(i32 %336, i32 0, i32* %343)
  store i32 %344, i32* %12, align 4
  %345 = load i32, i32* %12, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %333
  %348 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %349 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @device_printf(i32 %350, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %352 = load i32, i32* %12, align 4
  store i32 %352, i32* %2, align 4
  br label %404

353:                                              ; preds = %333
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %11, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %11, align 4
  br label %329

357:                                              ; preds = %329
  %358 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %359 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %362 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %361, i32 0, i32 3
  %363 = call i32 @bus_dmamap_create(i32 %360, i32 0, i32* %362)
  store i32 %363, i32* %12, align 4
  %364 = load i32, i32* %12, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %357
  %367 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %368 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @device_printf(i32 %369, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %371 = load i32, i32* %12, align 4
  store i32 %371, i32* %2, align 4
  br label %404

372:                                              ; preds = %357
  %373 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %374 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %373, i32 0, i32 2
  store %struct.et_txbuf_data* %374, %struct.et_txbuf_data** %9, align 8
  store i32 0, i32* %11, align 4
  br label %375

375:                                              ; preds = %400, %372
  %376 = load i32, i32* %11, align 4
  %377 = load i32, i32* @ET_TX_NDESC, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %403

379:                                              ; preds = %375
  %380 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %381 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %9, align 8
  %384 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %383, i32 0, i32 0
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %384, align 8
  %386 = load i32, i32* %11, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  %390 = call i32 @bus_dmamap_create(i32 %382, i32 0, i32* %389)
  store i32 %390, i32* %12, align 4
  %391 = load i32, i32* %12, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %379
  %394 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %395 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @device_printf(i32 %396, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %398 = load i32, i32* %12, align 4
  store i32 %398, i32* %2, align 4
  br label %404

399:                                              ; preds = %379
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %11, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %11, align 4
  br label %375

403:                                              ; preds = %375
  store i32 0, i32* %2, align 4
  br label %404

404:                                              ; preds = %403, %393, %366, %347, %300, %281, %234, %212, %193, %174, %158, %139, %119, %94, %69, %50, %26
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @et_dma_ring_alloc(%struct.et_softc*, i32, i32, i32*, i32**, i32*, i32*, i8*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
