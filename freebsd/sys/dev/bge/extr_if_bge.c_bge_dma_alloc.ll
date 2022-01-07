; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BGE_FLAG_40BIT_BUG = common dso_local global i32 0, align 4
@BGE_DMA_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not allocate parent dma tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BGE_STD_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"RX ring\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"RX return ring\00", align 1
@BGE_TX_RING_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"TX ring\00", align 1
@BGE_ASICREV_BCM5700 = common dso_local global i64 0, align 8
@BGE_CHIPID_BCM5700_C0 = common dso_local global i64 0, align 8
@BGE_STATUS_BLK_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"status block\00", align 1
@BGE_STATS_SZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"statistics block\00", align 1
@BGE_JUMBO_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"jumbo RX ring\00", align 1
@BGE_FLAG_4G_BNDRY_BUG = common dso_local global i32 0, align 4
@BGE_DMA_BNDRY = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"could not allocate buffer dma tag\0A\00", align 1
@BGE_FLAG_TSO = common dso_local global i32 0, align 4
@BGE_FLAG_TSO3 = common dso_local global i32 0, align 4
@BGE_TSOSEG_SZ = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BGE_NSEG_NEW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"could not allocate TX dma tag\0A\00", align 1
@BGE_FLAG_JUMBO_STD = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"could not allocate RX dma tag\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"can't create spare DMA map for RX\0A\00", align 1
@BGE_STD_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"can't create DMA map for RX\0A\00", align 1
@BGE_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"can't create DMA map for TX\0A\00", align 1
@BGE_NSEG_JUMBO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"could not allocate jumbo dma tag\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"can't create spare DMA map for jumbo RX\0A\00", align 1
@BGE_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"can't create DMA map for jumbo RX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*)* @bge_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_dma_alloc(%struct.bge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  %12 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BGE_FLAG_40BIT_BUG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @BGE_DMA_MAXADDR, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bus_get_dma_tag(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %28 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %29 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %30 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 21
  %33 = call i32 @bus_dma_tag_create(i32 %25, i32 1, i32 0, i32 %26, i32 %27, i32* null, i32* null, i32 %28, i32 0, i32 %29, i32 0, i32* null, i32* null, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %2, align 4
  br label %455

42:                                               ; preds = %21
  %43 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* @BGE_STD_RX_RING_SZ, align 4
  %46 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 20
  %49 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 11
  %52 = bitcast i32* %51 to i32**
  %53 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %54 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 19
  %56 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %57 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 10
  %59 = call i32 @bge_dma_ring_alloc(%struct.bge_softc* %43, i32 %44, i32 %45, i32* %48, i32** %52, i32* %55, i32* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %2, align 4
  br label %455

64:                                               ; preds = %42
  %65 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %68 = call i32 @BGE_RX_RTN_RING_SZ(%struct.bge_softc* %67)
  %69 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %70 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 18
  %72 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %73 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 9
  %75 = bitcast i32* %74 to i32**
  %76 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %77 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 17
  %79 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %80 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 8
  %82 = call i32 @bge_dma_ring_alloc(%struct.bge_softc* %65, i32 %66, i32 %68, i32* %71, i32** %75, i32* %78, i32* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %64
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %2, align 4
  br label %455

87:                                               ; preds = %64
  %88 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = load i32, i32* @BGE_TX_RING_SZ, align 4
  %91 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %92 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 16
  %94 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %95 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 7
  %97 = bitcast i32* %96 to i32**
  %98 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %99 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 15
  %101 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %102 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 6
  %104 = call i32 @bge_dma_ring_alloc(%struct.bge_softc* %88, i32 %89, i32 %90, i32* %93, i32** %97, i32* %100, i32* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %87
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %2, align 4
  br label %455

109:                                              ; preds = %87
  %110 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %111 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BGE_ASICREV_BCM5700, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %117 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @BGE_CHIPID_BCM5700_C0, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @BGE_STATUS_BLK_SZ, align 4
  store i32 %122, i32* %6, align 4
  br label %124

123:                                              ; preds = %115, %109
  store i32 32, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %121
  %125 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %126 = load i32, i32* @PAGE_SIZE, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %129 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 14
  %131 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %132 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 5
  %134 = bitcast i32* %133 to i32**
  %135 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %136 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 13
  %138 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %139 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 4
  %141 = call i32 @bge_dma_ring_alloc(%struct.bge_softc* %125, i32 %126, i32 %127, i32* %130, i32** %134, i32* %137, i32* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %124
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %2, align 4
  br label %455

146:                                              ; preds = %124
  %147 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %148 = load i32, i32* @PAGE_SIZE, align 4
  %149 = load i32, i32* @BGE_STATS_SZ, align 4
  %150 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %151 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 12
  %153 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %154 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 3
  %156 = bitcast i32* %155 to i32**
  %157 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %158 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 11
  %160 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %161 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  %163 = call i32 @bge_dma_ring_alloc(%struct.bge_softc* %147, i32 %148, i32 %149, i32* %152, i32** %156, i32* %159, i32* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %146
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %2, align 4
  br label %455

168:                                              ; preds = %146
  %169 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %170 = call i64 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %195

172:                                              ; preds = %168
  %173 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %174 = load i32, i32* @PAGE_SIZE, align 4
  %175 = load i32, i32* @BGE_JUMBO_RX_RING_SZ, align 4
  %176 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %177 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 10
  %179 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %180 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = bitcast i32* %181 to i32**
  %183 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %184 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 9
  %186 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %187 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = call i32 @bge_dma_ring_alloc(%struct.bge_softc* %173, i32 %174, i32 %175, i32* %178, i32** %182, i32* %185, i32* %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %172
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %2, align 4
  br label %455

194:                                              ; preds = %172
  br label %195

195:                                              ; preds = %194, %168
  store i32 0, i32* %5, align 4
  %196 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %197 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @BGE_FLAG_4G_BNDRY_BUG, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %195
  %203 = load i32, i32* @BGE_DMA_BNDRY, align 4
  store i32 %203, i32* %5, align 4
  %204 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %205 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %208, %202
  br label %211

211:                                              ; preds = %210, %195
  %212 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %213 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @bus_get_dma_tag(i32 %214)
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %219 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %220 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %221 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %222 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 3
  %224 = call i32 @bus_dma_tag_create(i32 %215, i32 1, i32 %216, i32 %217, i32 %218, i32* null, i32* null, i32 %219, i32 0, i32 %220, i32 0, i32* null, i32* null, i32* %223)
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %211
  %228 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %229 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @device_printf(i32 %230, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %232 = load i32, i32* @ENOMEM, align 4
  store i32 %232, i32* %2, align 4
  br label %455

233:                                              ; preds = %211
  %234 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %235 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @BGE_FLAG_TSO, align 4
  %238 = load i32, i32* @BGE_FLAG_TSO3, align 4
  %239 = or i32 %237, %238
  %240 = and i32 %236, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %233
  %243 = load i32, i32* @BGE_TSOSEG_SZ, align 4
  store i32 %243, i32* %8, align 4
  store i32 65539, i32* %9, align 4
  br label %249

244:                                              ; preds = %233
  %245 = load i32, i32* @MCLBYTES, align 4
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* @MCLBYTES, align 4
  %247 = load i32, i32* @BGE_NSEG_NEW, align 4
  %248 = mul nsw i32 %246, %247
  store i32 %248, i32* %9, align 4
  br label %249

249:                                              ; preds = %244, %242
  %250 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %251 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %255 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @BGE_NSEG_NEW, align 4
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %260 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 5
  %262 = call i32 @bus_dma_tag_create(i32 %253, i32 1, i32 0, i32 %254, i32 %255, i32* null, i32* null, i32 %256, i32 %257, i32 %258, i32 0, i32* null, i32* null, i32* %261)
  store i32 %262, i32* %11, align 4
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %249
  %266 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %267 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @device_printf(i32 %268, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %270 = load i32, i32* @ENOMEM, align 4
  store i32 %270, i32* %2, align 4
  br label %455

271:                                              ; preds = %249
  %272 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %273 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @BGE_FLAG_JUMBO_STD, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %271
  %279 = load i32, i32* @MJUM9BYTES, align 4
  store i32 %279, i32* %7, align 4
  br label %282

280:                                              ; preds = %271
  %281 = load i32, i32* @MCLBYTES, align 4
  store i32 %281, i32* %7, align 4
  br label %282

282:                                              ; preds = %280, %278
  %283 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %284 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %283, i32 0, i32 5
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %288 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* %7, align 4
  %291 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %292 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 7
  %294 = call i32 @bus_dma_tag_create(i32 %286, i32 1, i32 0, i32 %287, i32 %288, i32* null, i32* null, i32 %289, i32 1, i32 %290, i32 0, i32* null, i32* null, i32* %293)
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %11, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %282
  %298 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %299 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @device_printf(i32 %300, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %302 = load i32, i32* @ENOMEM, align 4
  store i32 %302, i32* %2, align 4
  br label %455

303:                                              ; preds = %282
  %304 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %305 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %304, i32 0, i32 5
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %309 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 8
  %311 = call i32 @bus_dmamap_create(i32 %307, i32 0, i32* %310)
  store i32 %311, i32* %11, align 4
  %312 = load i32, i32* %11, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %303
  %315 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %316 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @device_printf(i32 %317, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %319 = load i32, i32* @ENOMEM, align 4
  store i32 %319, i32* %2, align 4
  br label %455

320:                                              ; preds = %303
  store i32 0, i32* %10, align 4
  br label %321

321:                                              ; preds = %347, %320
  %322 = load i32, i32* %10, align 4
  %323 = load i32, i32* @BGE_STD_RX_RING_CNT, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %350

325:                                              ; preds = %321
  %326 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %327 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %326, i32 0, i32 5
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %331 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %330, i32 0, i32 5
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 6
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = call i32 @bus_dmamap_create(i32 %329, i32 0, i32* %336)
  store i32 %337, i32* %11, align 4
  %338 = load i32, i32* %11, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %325
  %341 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %342 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @device_printf(i32 %343, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %345 = load i32, i32* @ENOMEM, align 4
  store i32 %345, i32* %2, align 4
  br label %455

346:                                              ; preds = %325
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %10, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %10, align 4
  br label %321

350:                                              ; preds = %321
  store i32 0, i32* %10, align 4
  br label %351

351:                                              ; preds = %377, %350
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* @BGE_TX_RING_CNT, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %380

355:                                              ; preds = %351
  %356 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %357 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %361 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 4
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %10, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = call i32 @bus_dmamap_create(i32 %359, i32 0, i32* %366)
  store i32 %367, i32* %11, align 4
  %368 = load i32, i32* %11, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %355
  %371 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %372 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @device_printf(i32 %373, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %375 = load i32, i32* @ENOMEM, align 4
  store i32 %375, i32* %2, align 4
  br label %455

376:                                              ; preds = %355
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %10, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %10, align 4
  br label %351

380:                                              ; preds = %351
  %381 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %382 = call i64 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc* %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %454

384:                                              ; preds = %380
  %385 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %386 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %385, i32 0, i32 5
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %390 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %391 = load i32, i32* @MJUM9BYTES, align 4
  %392 = load i32, i32* @BGE_NSEG_JUMBO, align 4
  %393 = load i32, i32* @PAGE_SIZE, align 4
  %394 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %395 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 1
  %397 = call i32 @bus_dma_tag_create(i32 %388, i32 1, i32 0, i32 %389, i32 %390, i32* null, i32* null, i32 %391, i32 %392, i32 %393, i32 0, i32* null, i32* null, i32* %396)
  store i32 %397, i32* %11, align 4
  %398 = load i32, i32* %11, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %384
  %401 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %402 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %401, i32 0, i32 4
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @device_printf(i32 %403, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %405 = load i32, i32* @ENOMEM, align 4
  store i32 %405, i32* %2, align 4
  br label %455

406:                                              ; preds = %384
  %407 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %408 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %407, i32 0, i32 5
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %412 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %411, i32 0, i32 5
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 2
  %414 = call i32 @bus_dmamap_create(i32 %410, i32 0, i32* %413)
  store i32 %414, i32* %11, align 4
  %415 = load i32, i32* %11, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %406
  %418 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %419 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @device_printf(i32 %420, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %422 = load i32, i32* @ENOMEM, align 4
  store i32 %422, i32* %2, align 4
  br label %455

423:                                              ; preds = %406
  store i32 0, i32* %10, align 4
  br label %424

424:                                              ; preds = %450, %423
  %425 = load i32, i32* %10, align 4
  %426 = load i32, i32* @BGE_JUMBO_RX_RING_CNT, align 4
  %427 = icmp slt i32 %425, %426
  br i1 %427, label %428, label %453

428:                                              ; preds = %424
  %429 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %430 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %429, i32 0, i32 5
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %434 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %433, i32 0, i32 5
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %10, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = call i32 @bus_dmamap_create(i32 %432, i32 0, i32* %439)
  store i32 %440, i32* %11, align 4
  %441 = load i32, i32* %11, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %428
  %444 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %445 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 8
  %447 = call i32 @device_printf(i32 %446, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %448 = load i32, i32* @ENOMEM, align 4
  store i32 %448, i32* %2, align 4
  br label %455

449:                                              ; preds = %428
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %10, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %10, align 4
  br label %424

453:                                              ; preds = %424
  br label %454

454:                                              ; preds = %453, %380
  store i32 0, i32* %2, align 4
  br label %455

455:                                              ; preds = %454, %443, %417, %400, %370, %340, %314, %297, %265, %227, %192, %166, %144, %107, %85, %62, %36
  %456 = load i32, i32* %2, align 4
  ret i32 %456
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bge_dma_ring_alloc(%struct.bge_softc*, i32, i32, i32*, i32**, i32*, i32*, i8*) #1

declare dso_local i32 @BGE_RX_RTN_RING_SZ(%struct.bge_softc*) #1

declare dso_local i64 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
