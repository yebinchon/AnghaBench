; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_hsi_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_hsi_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, %struct.bxe_fastpath*, %struct.host_sp_status_block*, %struct.TYPE_15__, %union.event_ring_elem*, %struct.TYPE_15__, %struct.bxe_slowpath*, %struct.TYPE_15__, %struct.eth_spe*, %struct.TYPE_15__, i32*, %struct.TYPE_15__, i32*, i32 }
%struct.bxe_fastpath = type { i32, i32, i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, %struct.TYPE_15__, %struct.eth_rx_sge*, %struct.TYPE_15__, %union.eth_rx_cqe*, %struct.TYPE_15__, %struct.eth_rx_bd*, %struct.TYPE_15__, %union.eth_tx_bd_types*, %struct.TYPE_15__, %struct.TYPE_9__, %struct.bxe_softc* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.eth_rx_sge = type { i8*, i8* }
%union.eth_rx_cqe = type { i32 }
%struct.eth_rx_bd = type { i8*, i8* }
%union.eth_tx_bd_types = type { %struct.eth_tx_next_bd }
%struct.eth_tx_next_bd = type { i8*, i8* }
%struct.TYPE_9__ = type { %struct.host_hc_status_block_e1x*, %struct.host_hc_status_block_e2* }
%struct.host_hc_status_block_e1x = type { i32 }
%struct.host_hc_status_block_e2 = type { i32 }
%struct.host_sp_status_block = type { i32 }
%union.event_ring_elem = type { i32 }
%struct.bxe_slowpath = type { i32 }
%struct.eth_spe = type { i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.eth_rx_cqe_next_page = type { i8*, i8* }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to alloc parent DMA tag (%d)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"default status block\00", align 1
@BCM_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"event queue\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"slow path\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"slow path queue\00", align 1
@FW_BUF_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"fw decompression buffer\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"fp %d status block\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Failed to alloc %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"fp %d tx bd chain\00", align 1
@TX_BD_NUM_PAGES = common dso_local global i32 0, align 4
@TX_BD_TOTAL_PER_PAGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"fp %d rx bd chain\00", align 1
@RX_BD_NUM_PAGES = common dso_local global i32 0, align 4
@RX_BD_TOTAL_PER_PAGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"fp %d rcq chain\00", align 1
@RCQ_NUM_PAGES = common dso_local global i32 0, align 4
@RCQ_TOTAL_PER_PAGE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"fp %d sge chain\00", align 1
@RX_SGE_NUM_PAGES = common dso_local global i32 0, align 4
@RX_SGE_TOTAL_PER_PAGE = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@BXE_TSO_MAX_SIZE = common dso_local global i32 0, align 4
@BXE_TSO_MAX_SEGMENTS = common dso_local global i32 0, align 4
@BXE_TSO_MAX_SEG_SIZE = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BXE_MAX_SEGMENTS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [52 x i8] c"Failed to create dma tag for 'fp %d tx mbufs' (%d)\0A\00", align 1
@TX_BD_TOTAL = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [54 x i8] c"Failed to create dma map for 'fp %d tx mbuf %d' (%d)\0A\00", align 1
@MJUM9BYTES = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [52 x i8] c"Failed to create dma tag for 'fp %d rx mbufs' (%d)\0A\00", align 1
@RX_BD_TOTAL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [54 x i8] c"Failed to create dma map for 'fp %d rx mbuf %d' (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"Failed to create dma map for 'fp %d spare rx mbuf' (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"Failed to create dma tag for 'fp %d rx sge mbufs' (%d)\0A\00", align 1
@RX_SGE_TOTAL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [58 x i8] c"Failed to create dma map for 'fp %d rx sge mbuf %d' (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"Failed to create dma map for 'fp %d spare rx sge mbuf' (%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"Failed to create dma map for 'fp %d rx tpa mbuf %d' (%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"Failed to create dma map for 'fp %d spare rx tpa mbuf' (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_alloc_hsi_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_alloc_hsi_mem(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.bxe_fastpath*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.eth_tx_next_bd*, align 8
  %15 = alloca %struct.eth_rx_bd*, align 8
  %16 = alloca %struct.eth_rx_cqe_next_page*, align 8
  %17 = alloca %struct.eth_rx_sge*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bus_get_dma_tag(i32 %20)
  %22 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %23 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %24 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %25 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %26 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %27, i32 0, i32 1
  %29 = call i32 @bus_dma_tag_create(i32 %21, i32 1, i32 0, i32 %22, i32 %23, i32* null, i32* null, i32 %24, i32 %25, i32 %26, i32 0, i32* null, i32* null, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 1, i32* %2, align 4
  br label %789

36:                                               ; preds = %1
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %38, i32 0, i32 5
  %40 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %37, i32 4, %struct.TYPE_15__* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %44 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bus_dma_tag_destroy(i32 %45)
  store i32 1, i32* %2, align 4
  br label %789

47:                                               ; preds = %36
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %49 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.host_sp_status_block*
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %54 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %53, i32 0, i32 4
  store %struct.host_sp_status_block* %52, %struct.host_sp_status_block** %54, align 8
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %56 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %58 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %57, i32 0, i32 7
  %59 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %55, i32 %56, %struct.TYPE_15__* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %47
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %64 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %63, i32 0, i32 5
  %65 = call i32 @bxe_dma_free(%struct.bxe_softc* %62, %struct.TYPE_15__* %64)
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %67 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %66, i32 0, i32 4
  store %struct.host_sp_status_block* null, %struct.host_sp_status_block** %67, align 8
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bus_dma_tag_destroy(i32 %70)
  store i32 1, i32* %2, align 4
  br label %789

72:                                               ; preds = %47
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %74 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %union.event_ring_elem*
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %79 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %78, i32 0, i32 6
  store %union.event_ring_elem* %77, %union.event_ring_elem** %79, align 8
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %82 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %81, i32 0, i32 9
  %83 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %80, i32 4, %struct.TYPE_15__* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %72
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %88 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %87, i32 0, i32 7
  %89 = call i32 @bxe_dma_free(%struct.bxe_softc* %86, %struct.TYPE_15__* %88)
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %91 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %90, i32 0, i32 6
  store %union.event_ring_elem* null, %union.event_ring_elem** %91, align 8
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %94 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %93, i32 0, i32 5
  %95 = call i32 @bxe_dma_free(%struct.bxe_softc* %92, %struct.TYPE_15__* %94)
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %97 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %96, i32 0, i32 4
  store %struct.host_sp_status_block* null, %struct.host_sp_status_block** %97, align 8
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %99 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @bus_dma_tag_destroy(i32 %100)
  store i32 1, i32* %2, align 4
  br label %789

102:                                              ; preds = %72
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %104 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %103, i32 0, i32 9
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.bxe_slowpath*
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %109 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %108, i32 0, i32 8
  store %struct.bxe_slowpath* %107, %struct.bxe_slowpath** %109, align 8
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %111 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %113 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %112, i32 0, i32 11
  %114 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %110, i32 %111, %struct.TYPE_15__* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %102
  %117 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %118 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %119 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %118, i32 0, i32 9
  %120 = call i32 @bxe_dma_free(%struct.bxe_softc* %117, %struct.TYPE_15__* %119)
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %122 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %121, i32 0, i32 8
  store %struct.bxe_slowpath* null, %struct.bxe_slowpath** %122, align 8
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %125 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %124, i32 0, i32 7
  %126 = call i32 @bxe_dma_free(%struct.bxe_softc* %123, %struct.TYPE_15__* %125)
  %127 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %128 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %127, i32 0, i32 6
  store %union.event_ring_elem* null, %union.event_ring_elem** %128, align 8
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %131 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %130, i32 0, i32 5
  %132 = call i32 @bxe_dma_free(%struct.bxe_softc* %129, %struct.TYPE_15__* %131)
  %133 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %134 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %133, i32 0, i32 4
  store %struct.host_sp_status_block* null, %struct.host_sp_status_block** %134, align 8
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %136 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @bus_dma_tag_destroy(i32 %137)
  store i32 1, i32* %2, align 4
  br label %789

139:                                              ; preds = %102
  %140 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %141 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %140, i32 0, i32 11
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.eth_spe*
  %145 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %146 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %145, i32 0, i32 10
  store %struct.eth_spe* %144, %struct.eth_spe** %146, align 8
  %147 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %148 = load i32, i32* @FW_BUF_SIZE, align 4
  %149 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %150 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %149, i32 0, i32 13
  %151 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %147, i32 %148, %struct.TYPE_15__* %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %182

153:                                              ; preds = %139
  %154 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %155 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %156 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %155, i32 0, i32 11
  %157 = call i32 @bxe_dma_free(%struct.bxe_softc* %154, %struct.TYPE_15__* %156)
  %158 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %159 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %158, i32 0, i32 10
  store %struct.eth_spe* null, %struct.eth_spe** %159, align 8
  %160 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %161 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %162 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %161, i32 0, i32 9
  %163 = call i32 @bxe_dma_free(%struct.bxe_softc* %160, %struct.TYPE_15__* %162)
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %165 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %164, i32 0, i32 8
  store %struct.bxe_slowpath* null, %struct.bxe_slowpath** %165, align 8
  %166 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %167 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %168 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %167, i32 0, i32 7
  %169 = call i32 @bxe_dma_free(%struct.bxe_softc* %166, %struct.TYPE_15__* %168)
  %170 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %171 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %170, i32 0, i32 6
  store %union.event_ring_elem* null, %union.event_ring_elem** %171, align 8
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %173 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %174 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %173, i32 0, i32 5
  %175 = call i32 @bxe_dma_free(%struct.bxe_softc* %172, %struct.TYPE_15__* %174)
  %176 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %177 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %176, i32 0, i32 4
  store %struct.host_sp_status_block* null, %struct.host_sp_status_block** %177, align 8
  %178 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %179 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @bus_dma_tag_destroy(i32 %180)
  store i32 1, i32* %2, align 4
  br label %789

182:                                              ; preds = %139
  %183 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %184 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %183, i32 0, i32 13
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i8*
  %188 = bitcast i8* %187 to i32*
  %189 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %190 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %189, i32 0, i32 12
  store i32* %188, i32** %190, align 8
  %191 = load i32, i32* @M_DEVBUF, align 4
  %192 = load i32, i32* @M_NOWAIT, align 4
  %193 = call i32* @malloc(i32 4, i32 %191, i32 %192)
  %194 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %195 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %194, i32 0, i32 14
  store i32* %193, i32** %195, align 8
  %196 = icmp eq i32* %193, null
  br i1 %196, label %197, label %232

197:                                              ; preds = %182
  %198 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %199 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %200 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %199, i32 0, i32 13
  %201 = call i32 @bxe_dma_free(%struct.bxe_softc* %198, %struct.TYPE_15__* %200)
  %202 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %203 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %202, i32 0, i32 12
  store i32* null, i32** %203, align 8
  %204 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %205 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %206 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %205, i32 0, i32 11
  %207 = call i32 @bxe_dma_free(%struct.bxe_softc* %204, %struct.TYPE_15__* %206)
  %208 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %209 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %208, i32 0, i32 10
  store %struct.eth_spe* null, %struct.eth_spe** %209, align 8
  %210 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %211 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %212 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %211, i32 0, i32 9
  %213 = call i32 @bxe_dma_free(%struct.bxe_softc* %210, %struct.TYPE_15__* %212)
  %214 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %215 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %214, i32 0, i32 8
  store %struct.bxe_slowpath* null, %struct.bxe_slowpath** %215, align 8
  %216 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %217 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %218 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %217, i32 0, i32 7
  %219 = call i32 @bxe_dma_free(%struct.bxe_softc* %216, %struct.TYPE_15__* %218)
  %220 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %221 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %220, i32 0, i32 6
  store %union.event_ring_elem* null, %union.event_ring_elem** %221, align 8
  %222 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %223 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %224 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %223, i32 0, i32 5
  %225 = call i32 @bxe_dma_free(%struct.bxe_softc* %222, %struct.TYPE_15__* %224)
  %226 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %227 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %226, i32 0, i32 4
  store %struct.host_sp_status_block* null, %struct.host_sp_status_block** %227, align 8
  %228 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %229 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @bus_dma_tag_destroy(i32 %230)
  store i32 1, i32* %2, align 4
  br label %789

232:                                              ; preds = %182
  store i32 0, i32* %12, align 4
  br label %233

233:                                              ; preds = %785, %232
  %234 = load i32, i32* %12, align 4
  %235 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %236 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %788

239:                                              ; preds = %233
  %240 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %241 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %240, i32 0, i32 3
  %242 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %242, i64 %244
  store %struct.bxe_fastpath* %245, %struct.bxe_fastpath** %4, align 8
  %246 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %247 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %248 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %247, i32 0, i32 21
  store %struct.bxe_softc* %246, %struct.bxe_softc** %248, align 8
  %249 = load i32, i32* %12, align 4
  %250 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %251 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %253 = load i32, i32* %12, align 4
  %254 = call i32 @snprintf(i8* %252, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %253)
  %255 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %256 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %257 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %256, i32 0, i32 19
  %258 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %259 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %255, i32 4, %struct.TYPE_15__* %257, i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %239
  %262 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %263 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %264 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %262, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %263)
  store i32 1, i32* %2, align 4
  br label %789

265:                                              ; preds = %239
  %266 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %267 = call i64 @CHIP_IS_E2E3(%struct.bxe_softc* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %265
  %270 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %271 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %270, i32 0, i32 19
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = inttoptr i64 %273 to %struct.host_hc_status_block_e2*
  %275 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %276 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %275, i32 0, i32 20
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  store %struct.host_hc_status_block_e2* %274, %struct.host_hc_status_block_e2** %277, align 8
  br label %287

278:                                              ; preds = %265
  %279 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %280 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %279, i32 0, i32 19
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to %struct.host_hc_status_block_e1x*
  %284 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %285 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %284, i32 0, i32 20
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  store %struct.host_hc_status_block_e1x* %283, %struct.host_hc_status_block_e1x** %286, align 8
  br label %287

287:                                              ; preds = %278, %269
  br label %288

288:                                              ; preds = %287
  %289 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %290 = load i32, i32* %12, align 4
  %291 = call i32 @snprintf(i8* %289, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %290)
  %292 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %293 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %294 = load i32, i32* @TX_BD_NUM_PAGES, align 4
  %295 = mul nsw i32 %293, %294
  %296 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %297 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %296, i32 0, i32 17
  %298 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %299 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %292, i32 %295, %struct.TYPE_15__* %297, i8* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %288
  %302 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %303 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %304 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %302, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %303)
  store i32 1, i32* %2, align 4
  br label %789

305:                                              ; preds = %288
  %306 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %307 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %306, i32 0, i32 17
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = inttoptr i64 %309 to %union.eth_tx_bd_types*
  %311 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %312 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %311, i32 0, i32 18
  store %union.eth_tx_bd_types* %310, %union.eth_tx_bd_types** %312, align 8
  br label %313

313:                                              ; preds = %305
  store i32 1, i32* %13, align 4
  br label %314

314:                                              ; preds = %350, %313
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* @TX_BD_NUM_PAGES, align 4
  %317 = icmp sle i32 %315, %316
  br i1 %317, label %318, label %353

318:                                              ; preds = %314
  %319 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %320 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %319, i32 0, i32 18
  %321 = load %union.eth_tx_bd_types*, %union.eth_tx_bd_types** %320, align 8
  %322 = load i32, i32* @TX_BD_TOTAL_PER_PAGE, align 4
  %323 = load i32, i32* %13, align 4
  %324 = mul nsw i32 %322, %323
  %325 = sub nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %union.eth_tx_bd_types, %union.eth_tx_bd_types* %321, i64 %326
  %328 = bitcast %union.eth_tx_bd_types* %327 to %struct.eth_tx_next_bd*
  store %struct.eth_tx_next_bd* %328, %struct.eth_tx_next_bd** %14, align 8
  %329 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %330 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %329, i32 0, i32 17
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* @TX_BD_NUM_PAGES, align 4
  %336 = srem i32 %334, %335
  %337 = mul nsw i32 %333, %336
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %332, %338
  store i64 %339, i64* %5, align 8
  %340 = load i64, i64* %5, align 8
  %341 = call i32 @U64_HI(i64 %340)
  %342 = call i8* @htole32(i32 %341)
  %343 = load %struct.eth_tx_next_bd*, %struct.eth_tx_next_bd** %14, align 8
  %344 = getelementptr inbounds %struct.eth_tx_next_bd, %struct.eth_tx_next_bd* %343, i32 0, i32 1
  store i8* %342, i8** %344, align 8
  %345 = load i64, i64* %5, align 8
  %346 = call i32 @U64_LO(i64 %345)
  %347 = call i8* @htole32(i32 %346)
  %348 = load %struct.eth_tx_next_bd*, %struct.eth_tx_next_bd** %14, align 8
  %349 = getelementptr inbounds %struct.eth_tx_next_bd, %struct.eth_tx_next_bd* %348, i32 0, i32 0
  store i8* %347, i8** %349, align 8
  br label %350

350:                                              ; preds = %318
  %351 = load i32, i32* %13, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %13, align 4
  br label %314

353:                                              ; preds = %314
  %354 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %355 = load i32, i32* %12, align 4
  %356 = call i32 @snprintf(i8* %354, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %355)
  %357 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %358 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %359 = load i32, i32* @RX_BD_NUM_PAGES, align 4
  %360 = mul nsw i32 %358, %359
  %361 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %362 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %361, i32 0, i32 15
  %363 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %364 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %357, i32 %360, %struct.TYPE_15__* %362, i8* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %353
  %367 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %368 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %369 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %367, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %368)
  store i32 1, i32* %2, align 4
  br label %789

370:                                              ; preds = %353
  %371 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %372 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %371, i32 0, i32 15
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = inttoptr i64 %374 to %struct.eth_rx_bd*
  %376 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %377 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %376, i32 0, i32 16
  store %struct.eth_rx_bd* %375, %struct.eth_rx_bd** %377, align 8
  br label %378

378:                                              ; preds = %370
  store i32 1, i32* %13, align 4
  br label %379

379:                                              ; preds = %414, %378
  %380 = load i32, i32* %13, align 4
  %381 = load i32, i32* @RX_BD_NUM_PAGES, align 4
  %382 = icmp sle i32 %380, %381
  br i1 %382, label %383, label %417

383:                                              ; preds = %379
  %384 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %385 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %384, i32 0, i32 16
  %386 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %385, align 8
  %387 = load i32, i32* @RX_BD_TOTAL_PER_PAGE, align 4
  %388 = load i32, i32* %13, align 4
  %389 = mul nsw i32 %387, %388
  %390 = sub nsw i32 %389, 2
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %386, i64 %391
  store %struct.eth_rx_bd* %392, %struct.eth_rx_bd** %15, align 8
  %393 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %394 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %393, i32 0, i32 15
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %398 = load i32, i32* %13, align 4
  %399 = load i32, i32* @RX_BD_NUM_PAGES, align 4
  %400 = srem i32 %398, %399
  %401 = mul nsw i32 %397, %400
  %402 = sext i32 %401 to i64
  %403 = add nsw i64 %396, %402
  store i64 %403, i64* %5, align 8
  %404 = load i64, i64* %5, align 8
  %405 = call i32 @U64_HI(i64 %404)
  %406 = call i8* @htole32(i32 %405)
  %407 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %15, align 8
  %408 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %407, i32 0, i32 1
  store i8* %406, i8** %408, align 8
  %409 = load i64, i64* %5, align 8
  %410 = call i32 @U64_LO(i64 %409)
  %411 = call i8* @htole32(i32 %410)
  %412 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %15, align 8
  %413 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %412, i32 0, i32 0
  store i8* %411, i8** %413, align 8
  br label %414

414:                                              ; preds = %383
  %415 = load i32, i32* %13, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %13, align 4
  br label %379

417:                                              ; preds = %379
  %418 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %419 = load i32, i32* %12, align 4
  %420 = call i32 @snprintf(i8* %418, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %419)
  %421 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %422 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %423 = load i32, i32* @RCQ_NUM_PAGES, align 4
  %424 = mul nsw i32 %422, %423
  %425 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %426 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %425, i32 0, i32 13
  %427 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %428 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %421, i32 %424, %struct.TYPE_15__* %426, i8* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %417
  %431 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %432 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %433 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %431, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %432)
  store i32 1, i32* %2, align 4
  br label %789

434:                                              ; preds = %417
  %435 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %436 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %435, i32 0, i32 13
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = inttoptr i64 %438 to %union.eth_rx_cqe*
  %440 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %441 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %440, i32 0, i32 14
  store %union.eth_rx_cqe* %439, %union.eth_rx_cqe** %441, align 8
  br label %442

442:                                              ; preds = %434
  store i32 1, i32* %13, align 4
  br label %443

443:                                              ; preds = %479, %442
  %444 = load i32, i32* %13, align 4
  %445 = load i32, i32* @RCQ_NUM_PAGES, align 4
  %446 = icmp sle i32 %444, %445
  br i1 %446, label %447, label %482

447:                                              ; preds = %443
  %448 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %449 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %448, i32 0, i32 14
  %450 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %449, align 8
  %451 = load i32, i32* @RCQ_TOTAL_PER_PAGE, align 4
  %452 = load i32, i32* %13, align 4
  %453 = mul nsw i32 %451, %452
  %454 = sub nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %union.eth_rx_cqe, %union.eth_rx_cqe* %450, i64 %455
  %457 = bitcast %union.eth_rx_cqe* %456 to %struct.eth_rx_cqe_next_page*
  store %struct.eth_rx_cqe_next_page* %457, %struct.eth_rx_cqe_next_page** %16, align 8
  %458 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %459 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %458, i32 0, i32 13
  %460 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %463 = load i32, i32* %13, align 4
  %464 = load i32, i32* @RCQ_NUM_PAGES, align 4
  %465 = srem i32 %463, %464
  %466 = mul nsw i32 %462, %465
  %467 = sext i32 %466 to i64
  %468 = add nsw i64 %461, %467
  store i64 %468, i64* %5, align 8
  %469 = load i64, i64* %5, align 8
  %470 = call i32 @U64_HI(i64 %469)
  %471 = call i8* @htole32(i32 %470)
  %472 = load %struct.eth_rx_cqe_next_page*, %struct.eth_rx_cqe_next_page** %16, align 8
  %473 = getelementptr inbounds %struct.eth_rx_cqe_next_page, %struct.eth_rx_cqe_next_page* %472, i32 0, i32 1
  store i8* %471, i8** %473, align 8
  %474 = load i64, i64* %5, align 8
  %475 = call i32 @U64_LO(i64 %474)
  %476 = call i8* @htole32(i32 %475)
  %477 = load %struct.eth_rx_cqe_next_page*, %struct.eth_rx_cqe_next_page** %16, align 8
  %478 = getelementptr inbounds %struct.eth_rx_cqe_next_page, %struct.eth_rx_cqe_next_page* %477, i32 0, i32 0
  store i8* %476, i8** %478, align 8
  br label %479

479:                                              ; preds = %447
  %480 = load i32, i32* %13, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %13, align 4
  br label %443

482:                                              ; preds = %443
  %483 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %484 = load i32, i32* %12, align 4
  %485 = call i32 @snprintf(i8* %483, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %484)
  %486 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %487 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %488 = load i32, i32* @RX_SGE_NUM_PAGES, align 4
  %489 = mul nsw i32 %487, %488
  %490 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %491 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %490, i32 0, i32 11
  %492 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %493 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %486, i32 %489, %struct.TYPE_15__* %491, i8* %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %482
  %496 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %497 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %498 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %496, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %497)
  store i32 1, i32* %2, align 4
  br label %789

499:                                              ; preds = %482
  %500 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %501 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %500, i32 0, i32 11
  %502 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %501, i32 0, i32 1
  %503 = load i64, i64* %502, align 8
  %504 = inttoptr i64 %503 to %struct.eth_rx_sge*
  %505 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %506 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %505, i32 0, i32 12
  store %struct.eth_rx_sge* %504, %struct.eth_rx_sge** %506, align 8
  br label %507

507:                                              ; preds = %499
  store i32 1, i32* %13, align 4
  br label %508

508:                                              ; preds = %543, %507
  %509 = load i32, i32* %13, align 4
  %510 = load i32, i32* @RX_SGE_NUM_PAGES, align 4
  %511 = icmp sle i32 %509, %510
  br i1 %511, label %512, label %546

512:                                              ; preds = %508
  %513 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %514 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %513, i32 0, i32 12
  %515 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %514, align 8
  %516 = load i32, i32* @RX_SGE_TOTAL_PER_PAGE, align 4
  %517 = load i32, i32* %13, align 4
  %518 = mul nsw i32 %516, %517
  %519 = sub nsw i32 %518, 2
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %515, i64 %520
  store %struct.eth_rx_sge* %521, %struct.eth_rx_sge** %17, align 8
  %522 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %523 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %522, i32 0, i32 11
  %524 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %527 = load i32, i32* %13, align 4
  %528 = load i32, i32* @RX_SGE_NUM_PAGES, align 4
  %529 = srem i32 %527, %528
  %530 = mul nsw i32 %526, %529
  %531 = sext i32 %530 to i64
  %532 = add nsw i64 %525, %531
  store i64 %532, i64* %5, align 8
  %533 = load i64, i64* %5, align 8
  %534 = call i32 @U64_HI(i64 %533)
  %535 = call i8* @htole32(i32 %534)
  %536 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %17, align 8
  %537 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %536, i32 0, i32 1
  store i8* %535, i8** %537, align 8
  %538 = load i64, i64* %5, align 8
  %539 = call i32 @U64_LO(i64 %538)
  %540 = call i8* @htole32(i32 %539)
  %541 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %17, align 8
  %542 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %541, i32 0, i32 0
  store i8* %540, i8** %542, align 8
  br label %543

543:                                              ; preds = %512
  %544 = load i32, i32* %13, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %13, align 4
  br label %508

546:                                              ; preds = %508
  %547 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %548 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %547, i32 0, i32 2
  %549 = load i32, i32* %548, align 8
  %550 = call i32 @if_getcapenable(i32 %549)
  %551 = load i32, i32* @IFCAP_TSO4, align 4
  %552 = load i32, i32* @IFCAP_TSO6, align 4
  %553 = or i32 %551, %552
  %554 = and i32 %550, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %560

556:                                              ; preds = %546
  %557 = load i32, i32* @BXE_TSO_MAX_SIZE, align 4
  store i32 %557, i32* %8, align 4
  %558 = load i32, i32* @BXE_TSO_MAX_SEGMENTS, align 4
  store i32 %558, i32* %7, align 4
  %559 = load i32, i32* @BXE_TSO_MAX_SEG_SIZE, align 4
  store i32 %559, i32* %9, align 4
  br label %566

560:                                              ; preds = %546
  %561 = load i32, i32* @MCLBYTES, align 4
  %562 = load i32, i32* @BXE_MAX_SEGMENTS, align 4
  %563 = mul nsw i32 %561, %562
  store i32 %563, i32* %8, align 4
  %564 = load i32, i32* @BXE_MAX_SEGMENTS, align 4
  store i32 %564, i32* %7, align 4
  %565 = load i32, i32* @MCLBYTES, align 4
  store i32 %565, i32* %9, align 4
  br label %566

566:                                              ; preds = %560, %556
  %567 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %568 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %571 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %572 = load i32, i32* %8, align 4
  %573 = load i32, i32* %7, align 4
  %574 = load i32, i32* %9, align 4
  %575 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %576 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %575, i32 0, i32 10
  %577 = call i32 @bus_dma_tag_create(i32 %569, i32 1, i32 0, i32 %570, i32 %571, i32* null, i32* null, i32 %572, i32 %573, i32 %574, i32 0, i32* null, i32* null, i32* %576)
  store i32 %577, i32* %11, align 4
  %578 = load i32, i32* %11, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %585

580:                                              ; preds = %566
  %581 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %582 = load i32, i32* %12, align 4
  %583 = load i32, i32* %11, align 4
  %584 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %581, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %582, i32 %583)
  store i32 1, i32* %2, align 4
  br label %789

585:                                              ; preds = %566
  store i32 0, i32* %13, align 4
  br label %586

586:                                              ; preds = %611, %585
  %587 = load i32, i32* %13, align 4
  %588 = load i32, i32* @TX_BD_TOTAL, align 4
  %589 = icmp slt i32 %587, %588
  br i1 %589, label %590, label %614

590:                                              ; preds = %586
  %591 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %592 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %591, i32 0, i32 10
  %593 = load i32, i32* %592, align 8
  %594 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %595 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %596 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %595, i32 0, i32 9
  %597 = load %struct.TYPE_10__*, %struct.TYPE_10__** %596, align 8
  %598 = load i32, i32* %13, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %597, i64 %599
  %601 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %600, i32 0, i32 0
  %602 = call i64 @bus_dmamap_create(i32 %593, i32 %594, i32* %601)
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %610

604:                                              ; preds = %590
  %605 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %606 = load i32, i32* %12, align 4
  %607 = load i32, i32* %13, align 4
  %608 = load i32, i32* %11, align 4
  %609 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %605, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i32 %606, i32 %607, i32 %608)
  store i32 1, i32* %2, align 4
  br label %789

610:                                              ; preds = %590
  br label %611

611:                                              ; preds = %610
  %612 = load i32, i32* %13, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %13, align 4
  br label %586

614:                                              ; preds = %586
  %615 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %616 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 4
  %618 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %619 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %620 = load i32, i32* @MJUM9BYTES, align 4
  %621 = load i32, i32* @MJUM9BYTES, align 4
  %622 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %623 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %622, i32 0, i32 2
  %624 = call i32 @bus_dma_tag_create(i32 %617, i32 1, i32 0, i32 %618, i32 %619, i32* null, i32* null, i32 %620, i32 1, i32 %621, i32 0, i32* null, i32* null, i32* %623)
  store i32 %624, i32* %11, align 4
  %625 = load i32, i32* %11, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %632

627:                                              ; preds = %614
  %628 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %629 = load i32, i32* %12, align 4
  %630 = load i32, i32* %11, align 4
  %631 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %628, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i32 %629, i32 %630)
  store i32 1, i32* %2, align 4
  br label %789

632:                                              ; preds = %614
  store i32 0, i32* %13, align 4
  br label %633

633:                                              ; preds = %658, %632
  %634 = load i32, i32* %13, align 4
  %635 = load i32, i32* @RX_BD_TOTAL, align 4
  %636 = icmp slt i32 %634, %635
  br i1 %636, label %637, label %661

637:                                              ; preds = %633
  %638 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %639 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %638, i32 0, i32 2
  %640 = load i32, i32* %639, align 8
  %641 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %642 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %643 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %642, i32 0, i32 8
  %644 = load %struct.TYPE_11__*, %struct.TYPE_11__** %643, align 8
  %645 = load i32, i32* %13, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %644, i64 %646
  %648 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %647, i32 0, i32 0
  %649 = call i64 @bus_dmamap_create(i32 %640, i32 %641, i32* %648)
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %657

651:                                              ; preds = %637
  %652 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %653 = load i32, i32* %12, align 4
  %654 = load i32, i32* %13, align 4
  %655 = load i32, i32* %11, align 4
  %656 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %652, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i32 %653, i32 %654, i32 %655)
  store i32 1, i32* %2, align 4
  br label %789

657:                                              ; preds = %637
  br label %658

658:                                              ; preds = %657
  %659 = load i32, i32* %13, align 4
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %13, align 4
  br label %633

661:                                              ; preds = %633
  %662 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %663 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %662, i32 0, i32 2
  %664 = load i32, i32* %663, align 8
  %665 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %666 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %667 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %666, i32 0, i32 7
  %668 = call i64 @bus_dmamap_create(i32 %664, i32 %665, i32* %667)
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %675

670:                                              ; preds = %661
  %671 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %672 = load i32, i32* %12, align 4
  %673 = load i32, i32* %11, align 4
  %674 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %671, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0), i32 %672, i32 %673)
  store i32 1, i32* %2, align 4
  br label %789

675:                                              ; preds = %661
  %676 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %677 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %676, i32 0, i32 1
  %678 = load i32, i32* %677, align 4
  %679 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %680 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %681 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %682 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %683 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %684 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %683, i32 0, i32 5
  %685 = call i32 @bus_dma_tag_create(i32 %678, i32 1, i32 0, i32 %679, i32 %680, i32* null, i32* null, i32 %681, i32 1, i32 %682, i32 0, i32* null, i32* null, i32* %684)
  store i32 %685, i32* %11, align 4
  %686 = load i32, i32* %11, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %693

688:                                              ; preds = %675
  %689 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %690 = load i32, i32* %12, align 4
  %691 = load i32, i32* %11, align 4
  %692 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %689, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i32 %690, i32 %691)
  store i32 1, i32* %2, align 4
  br label %789

693:                                              ; preds = %675
  store i32 0, i32* %13, align 4
  br label %694

694:                                              ; preds = %719, %693
  %695 = load i32, i32* %13, align 4
  %696 = load i32, i32* @RX_SGE_TOTAL, align 4
  %697 = icmp slt i32 %695, %696
  br i1 %697, label %698, label %722

698:                                              ; preds = %694
  %699 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %700 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %699, i32 0, i32 5
  %701 = load i32, i32* %700, align 4
  %702 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %703 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %704 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %703, i32 0, i32 6
  %705 = load %struct.TYPE_12__*, %struct.TYPE_12__** %704, align 8
  %706 = load i32, i32* %13, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %705, i64 %707
  %709 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %708, i32 0, i32 0
  %710 = call i64 @bus_dmamap_create(i32 %701, i32 %702, i32* %709)
  %711 = icmp ne i64 %710, 0
  br i1 %711, label %712, label %718

712:                                              ; preds = %698
  %713 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %714 = load i32, i32* %12, align 4
  %715 = load i32, i32* %13, align 4
  %716 = load i32, i32* %11, align 4
  %717 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %713, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 %714, i32 %715, i32 %716)
  store i32 1, i32* %2, align 4
  br label %789

718:                                              ; preds = %698
  br label %719

719:                                              ; preds = %718
  %720 = load i32, i32* %13, align 4
  %721 = add nsw i32 %720, 1
  store i32 %721, i32* %13, align 4
  br label %694

722:                                              ; preds = %694
  %723 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %724 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %723, i32 0, i32 5
  %725 = load i32, i32* %724, align 4
  %726 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %727 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %728 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %727, i32 0, i32 4
  %729 = call i64 @bus_dmamap_create(i32 %725, i32 %726, i32* %728)
  %730 = icmp ne i64 %729, 0
  br i1 %730, label %731, label %736

731:                                              ; preds = %722
  %732 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %733 = load i32, i32* %12, align 4
  %734 = load i32, i32* %11, align 4
  %735 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %732, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0), i32 %733, i32 %734)
  store i32 1, i32* %2, align 4
  br label %789

736:                                              ; preds = %722
  %737 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %738 = call i32 @MAX_AGG_QS(%struct.bxe_softc* %737)
  store i32 %738, i32* %6, align 4
  store i32 0, i32* %13, align 4
  br label %739

739:                                              ; preds = %765, %736
  %740 = load i32, i32* %13, align 4
  %741 = load i32, i32* %6, align 4
  %742 = icmp slt i32 %740, %741
  br i1 %742, label %743, label %768

743:                                              ; preds = %739
  %744 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %745 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %744, i32 0, i32 2
  %746 = load i32, i32* %745, align 8
  %747 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %748 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %749 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %748, i32 0, i32 3
  %750 = load %struct.TYPE_14__*, %struct.TYPE_14__** %749, align 8
  %751 = load i32, i32* %13, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %750, i64 %752
  %754 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %753, i32 0, i32 0
  %755 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %754, i32 0, i32 0
  %756 = call i64 @bus_dmamap_create(i32 %746, i32 %747, i32* %755)
  %757 = icmp ne i64 %756, 0
  br i1 %757, label %758, label %764

758:                                              ; preds = %743
  %759 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %760 = load i32, i32* %12, align 4
  %761 = load i32, i32* %13, align 4
  %762 = load i32, i32* %11, align 4
  %763 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %759, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.20, i64 0, i64 0), i32 %760, i32 %761, i32 %762)
  store i32 1, i32* %2, align 4
  br label %789

764:                                              ; preds = %743
  br label %765

765:                                              ; preds = %764
  %766 = load i32, i32* %13, align 4
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %13, align 4
  br label %739

768:                                              ; preds = %739
  %769 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %770 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %769, i32 0, i32 2
  %771 = load i32, i32* %770, align 8
  %772 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %773 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %774 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %773, i32 0, i32 1
  %775 = call i64 @bus_dmamap_create(i32 %771, i32 %772, i32* %774)
  %776 = icmp ne i64 %775, 0
  br i1 %776, label %777, label %782

777:                                              ; preds = %768
  %778 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %779 = load i32, i32* %12, align 4
  %780 = load i32, i32* %11, align 4
  %781 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %778, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i64 0, i64 0), i32 %779, i32 %780)
  store i32 1, i32* %2, align 4
  br label %789

782:                                              ; preds = %768
  %783 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %784 = call i32 @bxe_init_sge_ring_bit_mask(%struct.bxe_fastpath* %783)
  br label %785

785:                                              ; preds = %782
  %786 = load i32, i32* %12, align 4
  %787 = add nsw i32 %786, 1
  store i32 %787, i32* %12, align 4
  br label %233

788:                                              ; preds = %233
  store i32 0, i32* %2, align 4
  br label %789

789:                                              ; preds = %788, %777, %758, %731, %712, %688, %670, %651, %627, %604, %580, %495, %430, %366, %301, %261, %197, %153, %116, %85, %61, %42, %32
  %790 = load i32, i32* %2, align 4
  ret i32 %790
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i64 @bxe_dma_alloc(%struct.bxe_softc*, i32, %struct.TYPE_15__*, i8*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bxe_dma_free(%struct.bxe_softc*, %struct.TYPE_15__*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @CHIP_IS_E2E3(%struct.bxe_softc*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @U64_HI(i64) #1

declare dso_local i32 @U64_LO(i64) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @MAX_AGG_QS(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_init_sge_ring_bit_mask(%struct.bxe_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
