; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_configure_ioc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_configure_ioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i64, i32, i32, i32, i64, i32, %struct.TYPE_11__*, %struct.TYPE_12__, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.mpt_map_info = type { i32, i64, %struct.mpt_softc* }

@MPT_MAX_TRYS = common dso_local global i32 0, align 4
@MPT_DB_STATE_READY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MPT_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mpt_get_iocfacts failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MPI Version=%d.%d.%d.%d\0A\00", align 1
@MPT_PRT_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"chain depth limited to %u (from %u)\0A\00", align 1
@MAXPHYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"mpt_dma_buf_alloc() failed!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@REQ_STATE_ALLOCATED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Maximum Segment Count: %u, Maximum CAM Segment Count: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"MsgLength=%u IOCNumber = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [94 x i8] c"IOCFACTS: GlobalCredits=%d BlockSize=%u bytes Request Frame Size %u bytes Max Chain Depth %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"IOCFACTS: Num Ports %d, FWImageSize %d, Flags=%#x\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"unable to allocate memory for port facts\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPI_IOCFACTS_FLAGS_FW_DOWNLOAD_BOOT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"cannot create firmware dma tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"cannot allocate firmware memory\0A\00", align 1
@mpt_map_rquest = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"firmware upload failed.\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"mpt_get_portfacts on port %d failed\0A\00", align 1
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"PORTFACTS[%d]: Type %x PFlags %x IID %d MaxDev %d\0A\00", align 1
@MPI_PORTFACTS_PORTTYPE_FC = common dso_local global i32 0, align 4
@MPI_PORTFACTS_PORTTYPE_SAS = common dso_local global i32 0, align 4
@MPI_PORTFACTS_PORTTYPE_SCSI = common dso_local global i32 0, align 4
@MPT_INI_ID_NONE = common dso_local global i64 0, align 8
@MPI_PORTFACTS_PORTTYPE_ISCSI = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"iSCSI not supported yet\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MPI_PORTFACTS_PORTTYPE_INACTIVE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"Inactive Port\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"unknown Port Type %#x\0A\00", align 1
@MPT_ROLE_NONE = common dso_local global i32 0, align 4
@MPI_PORTFACTS_PROTOCOL_INITIATOR = common dso_local global i32 0, align 4
@MPT_ROLE_INITIATOR = common dso_local global i32 0, align 4
@MPI_PORTFACTS_PROTOCOL_TARGET = common dso_local global i32 0, align 4
@MPT_ROLE_TARGET = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"unable to initialize IOC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i32, i32)* @mpt_configure_ioc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_configure_ioc(%struct.mpt_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.mpt_map_info, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MPT_MAX_TRYS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %568

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %24 = call i32 @mpt_rd_db(%struct.mpt_softc* %23)
  %25 = call i64 @MPT_STATE(i32 %24)
  %26 = load i64, i64* @MPT_DB_STATE_READY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22, %19
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32 @mpt_reset(%struct.mpt_softc* %29, i32 %30)
  %32 = load i32, i32* @MPT_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = call i32 @mpt_configure_ioc(%struct.mpt_softc* %35, i32 %36, i32 1)
  store i32 %38, i32* %4, align 4
  br label %568

39:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %42 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %43 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %42, i32 0, i32 8
  %44 = call i32 @mpt_get_iocfacts(%struct.mpt_softc* %41, %struct.TYPE_12__* %43)
  %45 = load i32, i32* @MPT_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %49 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = call i32 @mpt_configure_ioc(%struct.mpt_softc* %50, i32 %51, i32 1)
  store i32 %53, i32* %4, align 4
  br label %568

54:                                               ; preds = %40
  %55 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %56 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %55, i32 0, i32 8
  %57 = call i32 @mpt2host_iocfacts_reply(%struct.TYPE_12__* %56)
  %58 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %59 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %60 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 8
  %64 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %65 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 255
  %69 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %70 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 8
  %74 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %75 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 255
  %79 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %68, i32 %73, i32 %78)
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %81 = call i32 @MPT_MAX_REQUESTS(%struct.mpt_softc* %80)
  %82 = sub nsw i32 %81, 2
  %83 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %84 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %86 = call i32 @MPT_NRFM(%struct.mpt_softc* %85)
  %87 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %88 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %92 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %95 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %93, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %54
  %100 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %101 = load i32, i32* @MPT_PRT_INFO, align 4
  %102 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %103 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %107 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.mpt_softc*, i32, i8*, i32, i32, ...) @mpt_lprt(%struct.mpt_softc* %100, i32 %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %108)
  %110 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %111 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %115 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %99, %54
  %117 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %118 = call i32 @MPT_NSGL(%struct.mpt_softc* %117)
  %119 = sub nsw i32 %118, 1
  %120 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %121 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %125 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MAXPHYS, align 4
  %128 = load i32, i32* @PAGE_SIZE, align 4
  %129 = sdiv i32 %127, %128
  %130 = add nsw i32 %129, 1
  %131 = call i32 @min(i32 %126, i32 %130)
  %132 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %133 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %132, i32 0, i32 15
  store i32 %131, i32* %133, align 4
  %134 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %135 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %134)
  %136 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %137 = call i32 @mpt_dma_buf_alloc(%struct.mpt_softc* %136)
  store i32 %137, i32* %9, align 4
  %138 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %139 = call i32 @MPT_LOCK(%struct.mpt_softc* %138)
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %116
  %143 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %144 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @EIO, align 4
  store i32 %145, i32* %4, align 4
  br label %568

146:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %169, %146
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %150 = call i32 @MPT_MAX_REQUESTS(%struct.mpt_softc* %149)
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %172

152:                                              ; preds = %147
  %153 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %154 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %153, i32 0, i32 16
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %157
  store %struct.TYPE_10__* %158, %struct.TYPE_10__** %13, align 8
  %159 = load i32, i32* @REQ_STATE_ALLOCATED, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = call i32 @mpt_callout_init(%struct.mpt_softc* %162, i32* %164)
  %166 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %168 = call i32 @mpt_free_request(%struct.mpt_softc* %166, %struct.TYPE_10__* %167)
  br label %169

169:                                              ; preds = %152
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %147

172:                                              ; preds = %147
  %173 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %174 = load i32, i32* @MPT_PRT_INFO, align 4
  %175 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %176 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %179 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %178, i32 0, i32 15
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (%struct.mpt_softc*, i32, i8*, i32, i32, ...) @mpt_lprt(%struct.mpt_softc* %173, i32 %174, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %177, i32 %180)
  %182 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %183 = load i32, i32* @MPT_PRT_INFO, align 4
  %184 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %185 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %184, i32 0, i32 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %189 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %188, i32 0, i32 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.mpt_softc*, i32, i8*, i32, i32, ...) @mpt_lprt(%struct.mpt_softc* %182, i32 %183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %187, i32 %191)
  %193 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %194 = load i32, i32* @MPT_PRT_INFO, align 4
  %195 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %196 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %195, i32 0, i32 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %200 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %204 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %203, i32 0, i32 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 2
  %208 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %209 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %208, i32 0, i32 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (%struct.mpt_softc*, i32, i8*, i32, i32, ...) @mpt_lprt(%struct.mpt_softc* %193, i32 %194, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.6, i64 0, i64 0), i32 %198, i32 %202, i32 %207, i32 %211)
  %213 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %214 = load i32, i32* @MPT_PRT_INFO, align 4
  %215 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %216 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %215, i32 0, i32 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %220 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %219, i32 0, i32 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %224 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %223, i32 0, i32 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (%struct.mpt_softc*, i32, i8*, i32, i32, ...) @mpt_lprt(%struct.mpt_softc* %213, i32 %214, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %218, i32 %222, i32 %226)
  %228 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %229 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = mul i64 %232, 4
  store i64 %233, i64* %12, align 8
  %234 = load i64, i64* %12, align 8
  %235 = load i32, i32* @M_DEVBUF, align 4
  %236 = load i32, i32* @M_NOWAIT, align 4
  %237 = load i32, i32* @M_ZERO, align 4
  %238 = or i32 %236, %237
  %239 = call %struct.TYPE_11__* @malloc(i64 %234, i32 %235, i32 %238)
  %240 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %241 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %240, i32 0, i32 7
  store %struct.TYPE_11__* %239, %struct.TYPE_11__** %241, align 8
  %242 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %243 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %242, i32 0, i32 7
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = icmp eq %struct.TYPE_11__* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %172
  %247 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %248 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %247, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %249 = load i32, i32* @ENOMEM, align 4
  store i32 %249, i32* %4, align 4
  br label %568

250:                                              ; preds = %172
  %251 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %252 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %251, i32 0, i32 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @MPI_IOCFACTS_FLAGS_FW_DOWNLOAD_BOOT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %378

258:                                              ; preds = %250
  %259 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %260 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %378

263:                                              ; preds = %258
  %264 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %265 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %264)
  %266 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %267 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %266, i32 0, i32 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %271 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %270, i32 0, i32 13
  store i32 %269, i32* %271, align 4
  %272 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %273 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %274 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %273, i32 0, i32 14
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %277 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %278 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %279 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %278, i32 0, i32 13
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %282 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %281, i32 0, i32 13
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %285 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %284, i32 0, i32 10
  %286 = call i32 @mpt_dma_tag_create(%struct.mpt_softc* %272, i32 %275, i32 1, i32 0, i32 %276, i32 %277, i32* null, i32* null, i32 %280, i32 1, i32 %283, i32 0, i32* %285)
  store i32 %286, i32* %9, align 4
  %287 = load i32, i32* %9, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %263
  %290 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %291 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %290, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %292 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %293 = call i32 @MPT_LOCK(%struct.mpt_softc* %292)
  %294 = load i32, i32* @ENOMEM, align 4
  store i32 %294, i32* %4, align 4
  br label %568

295:                                              ; preds = %263
  %296 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %297 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %296, i32 0, i32 10
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %300 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %299, i32 0, i32 9
  %301 = bitcast i32** %300 to i8**
  %302 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %303 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %306 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %305, i32 0, i32 11
  %307 = call i32 @bus_dmamem_alloc(i32 %298, i8** %301, i32 %304, i32* %306)
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* %9, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %295
  %311 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %312 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %311, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %313 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %314 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %313, i32 0, i32 10
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @bus_dma_tag_destroy(i32 %315)
  %317 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %318 = call i32 @MPT_LOCK(%struct.mpt_softc* %317)
  %319 = load i32, i32* @ENOMEM, align 4
  store i32 %319, i32* %4, align 4
  br label %568

320:                                              ; preds = %295
  %321 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %322 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %14, i32 0, i32 2
  store %struct.mpt_softc* %321, %struct.mpt_softc** %322, align 8
  %323 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %14, i32 0, i32 1
  store i64 0, i64* %323, align 8
  %324 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %325 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %324, i32 0, i32 10
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %328 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %327, i32 0, i32 11
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %331 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %330, i32 0, i32 9
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %334 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %333, i32 0, i32 13
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @mpt_map_rquest, align 4
  %337 = call i32 @bus_dmamap_load(i32 %326, i32 %329, i32* %332, i32 %335, i32 %336, %struct.mpt_map_info* %14, i32 0)
  %338 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %14, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %341 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %340, i32 0, i32 12
  store i32 %339, i32* %341, align 8
  %342 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %343 = call i32 @MPT_LOCK(%struct.mpt_softc* %342)
  %344 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %345 = call i32 @mpt_upload_fw(%struct.mpt_softc* %344)
  store i32 %345, i32* %9, align 4
  %346 = load i32, i32* %9, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %375

348:                                              ; preds = %320
  %349 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %350 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %349, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %351 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %352 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %351, i32 0, i32 10
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %355 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %354, i32 0, i32 11
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @bus_dmamap_unload(i32 %353, i32 %356)
  %358 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %359 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %358, i32 0, i32 10
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %362 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %361, i32 0, i32 9
  %363 = load i32*, i32** %362, align 8
  %364 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %365 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %364, i32 0, i32 11
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @bus_dmamem_free(i32 %360, i32* %363, i32 %366)
  %368 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %369 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %368, i32 0, i32 10
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @bus_dma_tag_destroy(i32 %370)
  %372 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %373 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %372, i32 0, i32 9
  store i32* null, i32** %373, align 8
  %374 = load i32, i32* @EIO, align 4
  store i32 %374, i32* %4, align 4
  br label %568

375:                                              ; preds = %320
  %376 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %377 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %376, i32 0, i32 1
  store i64 1, i64* %377, align 8
  br label %378

378:                                              ; preds = %375, %258, %250
  store i32 0, i32* %10, align 4
  br label %379

379:                                              ; preds = %440, %378
  %380 = load i32, i32* %10, align 4
  %381 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %382 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %381, i32 0, i32 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = icmp slt i32 %380, %384
  br i1 %385, label %386, label %443

386:                                              ; preds = %379
  %387 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %388 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %387, i32 0, i32 7
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %388, align 8
  %390 = load i32, i32* %10, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i64 %391
  store %struct.TYPE_11__* %392, %struct.TYPE_11__** %8, align 8
  %393 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %395 = call i32 @mpt_get_portfacts(%struct.mpt_softc* %393, i32 0, %struct.TYPE_11__* %394)
  store i32 %395, i32* %9, align 4
  %396 = load i32, i32* %9, align 4
  %397 = load i32, i32* @MPT_OK, align 4
  %398 = icmp ne i32 %396, %397
  br i1 %398, label %399, label %414

399:                                              ; preds = %386
  %400 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %401 = load i32, i32* %10, align 4
  %402 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %400, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %401)
  %403 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %404 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %403, i32 0, i32 7
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %404, align 8
  %406 = load i32, i32* @M_DEVBUF, align 4
  %407 = call i32 @free(%struct.TYPE_11__* %405, i32 %406)
  %408 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %409 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %408, i32 0, i32 7
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %409, align 8
  %410 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %411 = load i32, i32* %6, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %6, align 4
  %413 = call i32 @mpt_configure_ioc(%struct.mpt_softc* %410, i32 %411, i32 1)
  store i32 %413, i32* %4, align 4
  br label %568

414:                                              ; preds = %386
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %416 = call i32 @mpt2host_portfacts_reply(%struct.TYPE_11__* %415)
  %417 = load i32, i32* %10, align 4
  %418 = icmp sgt i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %414
  %420 = load i32, i32* @MPT_PRT_INFO, align 4
  store i32 %420, i32* %9, align 4
  br label %423

421:                                              ; preds = %414
  %422 = load i32, i32* @MPT_PRT_DEBUG, align 4
  store i32 %422, i32* %9, align 4
  br label %423

423:                                              ; preds = %421, %419
  %424 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %425 = load i32, i32* %9, align 4
  %426 = load i32, i32* %10, align 4
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = call i32 (%struct.mpt_softc*, i32, i8*, i32, i32, ...) @mpt_lprt(%struct.mpt_softc* %424, i32 %425, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %426, i32 %429, i32 %432, i64 %435, i32 %438)
  br label %440

440:                                              ; preds = %423
  %441 = load i32, i32* %10, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %10, align 4
  br label %379

443:                                              ; preds = %379
  %444 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %445 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %444, i32 0, i32 7
  %446 = load %struct.TYPE_11__*, %struct.TYPE_11__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i64 0
  store %struct.TYPE_11__* %447, %struct.TYPE_11__** %8, align 8
  %448 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @MPI_PORTFACTS_PORTTYPE_FC, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %460

453:                                              ; preds = %443
  %454 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %455 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %454, i32 0, i32 2
  store i32 1, i32* %455, align 8
  %456 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %457 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %456, i32 0, i32 3
  store i32 0, i32* %457, align 4
  %458 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %459 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %458, i32 0, i32 4
  store i32 0, i32* %459, align 8
  br label %527

460:                                              ; preds = %443
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @MPI_PORTFACTS_PORTTYPE_SAS, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %473

466:                                              ; preds = %460
  %467 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %468 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %467, i32 0, i32 2
  store i32 0, i32* %468, align 8
  %469 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %470 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %469, i32 0, i32 3
  store i32 1, i32* %470, align 4
  %471 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %472 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %471, i32 0, i32 4
  store i32 0, i32* %472, align 8
  br label %526

473:                                              ; preds = %460
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @MPI_PORTFACTS_PORTTYPE_SCSI, align 4
  %478 = icmp eq i32 %476, %477
  br i1 %478, label %479, label %498

479:                                              ; preds = %473
  %480 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %481 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %480, i32 0, i32 2
  store i32 0, i32* %481, align 8
  %482 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %483 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %482, i32 0, i32 3
  store i32 0, i32* %483, align 4
  %484 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %485 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %484, i32 0, i32 4
  store i32 1, i32* %485, align 8
  %486 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %487 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %486, i32 0, i32 5
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @MPT_INI_ID_NONE, align 8
  %490 = icmp eq i64 %488, %489
  br i1 %490, label %491, label %497

491:                                              ; preds = %479
  %492 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %492, i32 0, i32 1
  %494 = load i64, i64* %493, align 8
  %495 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %496 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %495, i32 0, i32 5
  store i64 %494, i64* %496, align 8
  br label %497

497:                                              ; preds = %491, %479
  br label %525

498:                                              ; preds = %473
  %499 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @MPI_PORTFACTS_PORTTYPE_ISCSI, align 4
  %503 = icmp eq i32 %501, %502
  br i1 %503, label %504, label %508

504:                                              ; preds = %498
  %505 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %506 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %505, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %507 = load i32, i32* @ENXIO, align 4
  store i32 %507, i32* %4, align 4
  br label %568

508:                                              ; preds = %498
  %509 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @MPI_PORTFACTS_PORTTYPE_INACTIVE, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %514, label %518

514:                                              ; preds = %508
  %515 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %516 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %515, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %517 = load i32, i32* @ENXIO, align 4
  store i32 %517, i32* %4, align 4
  br label %568

518:                                              ; preds = %508
  %519 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %520 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 8
  %523 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %519, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %522)
  %524 = load i32, i32* @ENXIO, align 4
  store i32 %524, i32* %4, align 4
  br label %568

525:                                              ; preds = %497
  br label %526

526:                                              ; preds = %525, %466
  br label %527

527:                                              ; preds = %526, %453
  %528 = load i32, i32* @MPT_ROLE_NONE, align 4
  %529 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %530 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %529, i32 0, i32 6
  store i32 %528, i32* %530, align 8
  %531 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* @MPI_PORTFACTS_PROTOCOL_INITIATOR, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %543

537:                                              ; preds = %527
  %538 = load i32, i32* @MPT_ROLE_INITIATOR, align 4
  %539 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %540 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %539, i32 0, i32 6
  %541 = load i32, i32* %540, align 8
  %542 = or i32 %541, %538
  store i32 %542, i32* %540, align 8
  br label %543

543:                                              ; preds = %537, %527
  %544 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = load i32, i32* @MPI_PORTFACTS_PROTOCOL_TARGET, align 4
  %548 = and i32 %546, %547
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %556

550:                                              ; preds = %543
  %551 = load i32, i32* @MPT_ROLE_TARGET, align 4
  %552 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %553 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %552, i32 0, i32 6
  %554 = load i32, i32* %553, align 8
  %555 = or i32 %554, %551
  store i32 %555, i32* %553, align 8
  br label %556

556:                                              ; preds = %550, %543
  %557 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %558 = call i32 @mpt_enable_ioc(%struct.mpt_softc* %557, i32 1)
  %559 = load i32, i32* @MPT_OK, align 4
  %560 = icmp ne i32 %558, %559
  br i1 %560, label %561, label %565

561:                                              ; preds = %556
  %562 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %563 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %562, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %564 = load i32, i32* @ENXIO, align 4
  store i32 %564, i32* %4, align 4
  br label %568

565:                                              ; preds = %556
  %566 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %567 = call i32 @mpt_read_config_info_ioc(%struct.mpt_softc* %566)
  store i32 0, i32* %4, align 4
  br label %568

568:                                              ; preds = %565, %561, %518, %514, %504, %399, %348, %310, %289, %246, %142, %47, %34, %18
  %569 = load i32, i32* %4, align 4
  ret i32 %569
}

declare dso_local i64 @MPT_STATE(i32) #1

declare dso_local i32 @mpt_rd_db(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_reset(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_get_iocfacts(%struct.mpt_softc*, %struct.TYPE_12__*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt2host_iocfacts_reply(%struct.TYPE_12__*) #1

declare dso_local i32 @MPT_MAX_REQUESTS(%struct.mpt_softc*) #1

declare dso_local i32 @MPT_NRFM(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @MPT_NSGL(%struct.mpt_softc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_dma_buf_alloc(%struct.mpt_softc*) #1

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_callout_init(%struct.mpt_softc*, i32*) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @malloc(i64, i32, i32) #1

declare dso_local i32 @mpt_dma_tag_create(%struct.mpt_softc*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.mpt_map_info*, i32) #1

declare dso_local i32 @mpt_upload_fw(%struct.mpt_softc*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

declare dso_local i32 @mpt_get_portfacts(%struct.mpt_softc*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mpt2host_portfacts_reply(%struct.TYPE_11__*) #1

declare dso_local i32 @mpt_enable_ioc(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_read_config_info_ioc(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
