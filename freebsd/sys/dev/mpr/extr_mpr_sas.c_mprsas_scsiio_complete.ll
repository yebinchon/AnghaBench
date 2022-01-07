; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_scsiio_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_scsiio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, %struct.TYPE_11__*, i32, i32, i64, i32, %struct.mprsas_softc*, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.mprsas_softc = type { i32, %struct.mprsas_target*, i32 }
%struct.mprsas_target = type { i64, i32 }
%struct.mpr_command = type { i32, i64, i32, %struct.TYPE_17__*, %struct.TYPE_13__, i32, i32*, i32, i32, i32*, %union.ccb*, i32 }
%struct.TYPE_17__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, i32, i32*, %struct.TYPE_14__, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64*, i64* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_vpd_supported_page_list = type { i32*, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@MPR_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cm %p SMID %u ccb %p reply %p outstanding %u\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@MPR_CM_FLAGS_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MPR_CM_FLAGS_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@cm_link = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@MPR_CM_FLAGS_ON_RECOVERY = common dso_local global i32 0, align 4
@cm_recovery = common dso_local global i32 0, align 4
@MPR_CM_STATE_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Not busy for CM_FLAGS_TIMEDOUT: %d\0A\00", align 1
@MPR_RECOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"completed timedout cm %p ccb %p during recovery ioc %x scsi %x state %x xfer %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"completed timedout cm %p ccb %p during recovery\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"completed cm %p ccb %p during recovery ioc %x scsi %x state %x xfer %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"completed cm %p ccb %p during recovery\0A\00", align 1
@MPR_FLAGS_DIAGRESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"reset completed cm %p ccb %p\0A\00", align 1
@MPR_CM_FLAGS_ERROR_MASK = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i64 0, align 8
@MPRSAS_QUEUE_FROZEN = common dso_local global i32 0, align 4
@MPR_XINFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Error sending command, freezing SIM queue\0A\00", align 1
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@START_STOP_UNIT = common dso_local global i64 0, align 8
@MPR_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Decrementing SSU count.\0A\00", align 1
@CAM_REQ_INPROG = common dso_local global i64 0, align 8
@CAM_SCSI_BUS_RESET = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@SCSI_STATUS_OK = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Unfreezing SIM queue\0A\00", align 1
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@UNMAP = common dso_local global i64 0, align 8
@CAM_DATA_MASK = common dso_local global i32 0, align 4
@CAM_DATA_VADDR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"ioc %x scsi %x state %x xfer %u\0A\00", align 1
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"recovered error\0A\00", align 1
@MPI2_SCSI_STATE_NO_SCSI_STATUS = common dso_local global i32 0, align 4
@MPI2_SCSI_STATE_TERMINATED = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i64 0, align 8
@MPI2_SCSI_STATE_AUTOSENSE_FAILED = common dso_local global i32 0, align 4
@CAM_AUTOSENSE_FAIL = common dso_local global i64 0, align 8
@MPI2_SCSI_STATE_RESPONSE_INFO_VALID = common dso_local global i32 0, align 4
@MPI2_SCSI_RI_MASK_REASONCODE = common dso_local global i32 0, align 4
@MPR_SCSI_RI_INVALID_FRAME = common dso_local global i32 0, align 4
@MPI2_SCSIIO_CONTROL_NO_TLR = common dso_local global i32 0, align 4
@MPI2_SCSI_STATUS_COMMAND_TERMINATED = common dso_local global i32 0, align 4
@MPI2_SCSI_STATUS_TASK_ABORTED = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i64 0, align 8
@MPI2_SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i64 0, align 8
@MPI2_SCSI_STATE_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@SI_EVPD = common dso_local global i64 0, align 8
@SVPD_SUPPORTED_PAGE_LIST = common dso_local global i64 0, align 8
@T_SEQUENTIAL = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_SSP_TARGET = common dso_local global i32 0, align 4
@MPI2_SCSIIO_CONTROL_TLR_ON = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_MASK_DEVICE_TYPE = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_END_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Target %d supports SSU\0A\00", align 1
@CAM_DEV_NOT_THERE = common dso_local global i64 0, align 8
@CAM_UNREC_HBA_ERROR = common dso_local global i64 0, align 8
@MPR_CM_FLAGS_TIMEDOUT = common dso_local global i32 0, align 4
@CAM_CMD_TIMEOUT = common dso_local global i64 0, align 8
@CAM_DATA_RUN_ERR = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [50 x i8] c"Controller reported %s tgt %u SMID %u loginfo %x\0A\00", align 1
@mpr_iocstatus_string = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [41 x i8] c"SCSIStatus %x SCSIState %x xfercount %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"completed ioc %x loginfo %x scsi %x state %x xfer %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Command completed, unfreezing SIM queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpr_softc*, %struct.mpr_command*)* @mprsas_scsiio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mprsas_scsiio_complete(%struct.mpr_softc* %0, %struct.mpr_command* %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct.mpr_command*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.ccb_scsiio*, align 8
  %8 = alloca %struct.mprsas_softc*, align 8
  %9 = alloca %struct.scsi_vpd_supported_page_list*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mprsas_target*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store %struct.mpr_command* %1, %struct.mpr_command** %4, align 8
  store %struct.scsi_vpd_supported_page_list* null, %struct.scsi_vpd_supported_page_list** %9, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %21 = call i32 @MPR_FUNCTRACE(%struct.mpr_softc* %20)
  %22 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %23 = load i32, i32* @MPR_TRACE, align 4
  %24 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %25 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %26 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %31 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %34 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %37 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %36, i32 0, i32 3
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %22, i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.mpr_command* %24, i32 %29, i32 %32, i32* %35, i32 %40)
  %42 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %43 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %42, i32 0, i32 11
  %44 = call i32 @callout_stop(i32* %43)
  %45 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %45, i32 0, i32 7
  %47 = load i32, i32* @MA_OWNED, align 4
  %48 = call i32 @mtx_assert(i32* %46, i32 %47)
  %49 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %49, i32 0, i32 6
  %51 = load %struct.mprsas_softc*, %struct.mprsas_softc** %50, align 8
  store %struct.mprsas_softc* %51, %struct.mprsas_softc** %8, align 8
  %52 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %53 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %52, i32 0, i32 10
  %54 = load %union.ccb*, %union.ccb** %53, align 8
  store %union.ccb* %54, %union.ccb** %6, align 8
  %55 = load %union.ccb*, %union.ccb** %6, align 8
  %56 = bitcast %union.ccb* %55 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %56, %struct.ccb_scsiio** %7, align 8
  %57 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %58 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %17, align 8
  %61 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %62 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %5, align 8
  %65 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %66 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %65, i32 0, i32 9
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %104

69:                                               ; preds = %2
  %70 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %71 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MPR_CM_FLAGS_DATAIN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  store i32 %77, i32* %13, align 4
  br label %88

78:                                               ; preds = %69
  %79 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %80 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MPR_CM_FLAGS_DATAOUT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %85, %78
  br label %88

88:                                               ; preds = %87, %76
  %89 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %90 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %93 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @bus_dmamap_sync(i32 %91, i32 %94, i32 %95)
  %97 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %98 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %101 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @bus_dmamap_unload(i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %88, %2
  %105 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %106 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %105, i32 0, i32 3
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %112 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %111, i32 0, i32 3
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %118 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %117, i32 0, i32 3
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  %121 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %122 = load i32, i32* @cm_link, align 4
  %123 = call i32 @TAILQ_REMOVE(i32* %120, %struct.mpr_command* %121, i32 %122)
  %124 = load i32, i32* @CAM_STATUS_MASK, align 4
  %125 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load %union.ccb*, %union.ccb** %6, align 8
  %129 = bitcast %union.ccb* %128 to %struct.TYPE_15__*
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, %127
  store i32 %132, i32* %130, align 8
  %133 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %134 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MPR_CM_FLAGS_ON_RECOVERY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %199

139:                                              ; preds = %104
  %140 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %141 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %140, i32 0, i32 3
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %145 = load i32, i32* @cm_recovery, align 4
  %146 = call i32 @TAILQ_REMOVE(i32* %143, %struct.mpr_command* %144, i32 %145)
  %147 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %148 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @MPR_CM_STATE_BUSY, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %154 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 @KASSERT(i32 %152, i8* %156)
  %158 = load i32, i32* @MPR_CM_FLAGS_ON_RECOVERY, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %161 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %165 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %164, i32 0, i32 6
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %190

168:                                              ; preds = %139
  %169 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %170 = load i32, i32* @MPR_RECOVERY, align 4
  %171 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %172 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %173 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le16toh(i32 %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @le32toh(i32 %187)
  %189 = call i32 (%struct.mpr_command*, i32, i8*, ...) @mprsas_log_command(%struct.mpr_command* %169, i32 %170, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), %struct.mpr_command* %171, i32 %174, i32 %178, i32 %181, i32 %184, i32 %188)
  br label %198

190:                                              ; preds = %139
  %191 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %192 = load i32, i32* @MPR_RECOVERY, align 4
  %193 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %194 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %195 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (%struct.mpr_command*, i32, i8*, ...) @mprsas_log_command(%struct.mpr_command* %191, i32 %192, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), %struct.mpr_command* %193, i32 %196)
  br label %198

198:                                              ; preds = %190, %168
  br label %259

199:                                              ; preds = %104
  %200 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %201 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %200, i32 0, i32 3
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %242

206:                                              ; preds = %199
  %207 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %208 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %207, i32 0, i32 6
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %233

211:                                              ; preds = %206
  %212 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %213 = load i32, i32* @MPR_RECOVERY, align 4
  %214 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %215 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %216 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le16toh(i32 %220)
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @le32toh(i32 %230)
  %232 = call i32 (%struct.mpr_command*, i32, i8*, ...) @mprsas_log_command(%struct.mpr_command* %212, i32 %213, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), %struct.mpr_command* %214, i32 %217, i32 %221, i32 %224, i32 %227, i32 %231)
  br label %241

233:                                              ; preds = %206
  %234 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %235 = load i32, i32* @MPR_RECOVERY, align 4
  %236 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %237 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %238 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (%struct.mpr_command*, i32, i8*, ...) @mprsas_log_command(%struct.mpr_command* %234, i32 %235, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), %struct.mpr_command* %236, i32 %239)
  br label %241

241:                                              ; preds = %233, %211
  br label %258

242:                                              ; preds = %199
  %243 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %244 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @MPR_FLAGS_DIAGRESET, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %242
  %250 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %251 = load i32, i32* @MPR_RECOVERY, align 4
  %252 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %253 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %254 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (%struct.mpr_command*, i32, i8*, ...) @mprsas_log_command(%struct.mpr_command* %250, i32 %251, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), %struct.mpr_command* %252, i32 %255)
  br label %257

257:                                              ; preds = %249, %242
  br label %258

258:                                              ; preds = %257, %241
  br label %259

259:                                              ; preds = %258, %198
  %260 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %261 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @MPR_CM_FLAGS_ERROR_MASK, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %290

266:                                              ; preds = %259
  %267 = load %union.ccb*, %union.ccb** %6, align 8
  %268 = load i64, i64* @CAM_REQUEUE_REQ, align 8
  %269 = call i32 @mprsas_set_ccbstatus(%union.ccb* %267, i64 %268)
  %270 = load %struct.mprsas_softc*, %struct.mprsas_softc** %8, align 8
  %271 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @MPRSAS_QUEUE_FROZEN, align 4
  %274 = and i32 %272, %273
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %266
  %277 = load %struct.mprsas_softc*, %struct.mprsas_softc** %8, align 8
  %278 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @xpt_freeze_simq(i32 %279, i32 1)
  %281 = load i32, i32* @MPRSAS_QUEUE_FROZEN, align 4
  %282 = load %struct.mprsas_softc*, %struct.mprsas_softc** %8, align 8
  %283 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  %286 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %287 = load i32, i32* @MPR_XINFO, align 4
  %288 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %286, i32 %287, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %289

289:                                              ; preds = %276, %266
  br label %290

290:                                              ; preds = %289, %259
  %291 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %292 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @CAM_CDB_POINTER, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %290
  %299 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %300 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %299, i32 0, i32 7
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load i64*, i64** %301, align 8
  store i64* %302, i64** %12, align 8
  br label %308

303:                                              ; preds = %290
  %304 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %305 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load i64*, i64** %306, align 8
  store i64* %307, i64** %12, align 8
  br label %308

308:                                              ; preds = %303, %298
  %309 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %310 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %327

313:                                              ; preds = %308
  %314 = load i64*, i64** %12, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @START_STOP_UNIT, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %327

319:                                              ; preds = %313
  %320 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %321 = load i32, i32* @MPR_INFO, align 4
  %322 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %320, i32 %321, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %323 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %324 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %324, align 4
  br label %327

327:                                              ; preds = %319, %313, %308
  %328 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %329 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %328, i32 0, i32 6
  %330 = load i32*, i32** %329, align 8
  %331 = icmp eq i32* %330, null
  br i1 %331, label %332, label %402

332:                                              ; preds = %327
  %333 = load %union.ccb*, %union.ccb** %6, align 8
  %334 = call i64 @mprsas_get_ccbstatus(%union.ccb* %333)
  %335 = load i64, i64* @CAM_REQ_INPROG, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %379

337:                                              ; preds = %332
  %338 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %339 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @MPR_FLAGS_DIAGRESET, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %337
  %345 = load %union.ccb*, %union.ccb** %6, align 8
  %346 = load i64, i64* @CAM_SCSI_BUS_RESET, align 8
  %347 = call i32 @mprsas_set_ccbstatus(%union.ccb* %345, i64 %346)
  br label %355

348:                                              ; preds = %337
  %349 = load %union.ccb*, %union.ccb** %6, align 8
  %350 = load i64, i64* @CAM_REQ_CMP, align 8
  %351 = call i32 @mprsas_set_ccbstatus(%union.ccb* %349, i64 %350)
  %352 = load i32, i32* @SCSI_STATUS_OK, align 4
  %353 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %354 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %353, i32 0, i32 6
  store i32 %352, i32* %354, align 8
  br label %355

355:                                              ; preds = %348, %344
  %356 = load %struct.mprsas_softc*, %struct.mprsas_softc** %8, align 8
  %357 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @MPRSAS_QUEUE_FROZEN, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %378

362:                                              ; preds = %355
  %363 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %364 = load %union.ccb*, %union.ccb** %6, align 8
  %365 = bitcast %union.ccb* %364 to %struct.TYPE_15__*
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, %363
  store i32 %368, i32* %366, align 8
  %369 = load i32, i32* @MPRSAS_QUEUE_FROZEN, align 4
  %370 = xor i32 %369, -1
  %371 = load %struct.mprsas_softc*, %struct.mprsas_softc** %8, align 8
  %372 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = and i32 %373, %370
  store i32 %374, i32* %372, align 8
  %375 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %376 = load i32, i32* @MPR_XINFO, align 4
  %377 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %375, i32 %376, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %378

378:                                              ; preds = %362, %355
  br label %379

379:                                              ; preds = %378, %332
  %380 = load %union.ccb*, %union.ccb** %6, align 8
  %381 = call i64 @mprsas_get_ccbstatus(%union.ccb* %380)
  %382 = load i64, i64* @CAM_REQ_CMP, align 8
  %383 = icmp ne i64 %381, %382
  br i1 %383, label %384, label %396

384:                                              ; preds = %379
  %385 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %386 = load %union.ccb*, %union.ccb** %6, align 8
  %387 = bitcast %union.ccb* %386 to %struct.TYPE_15__*
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = or i32 %389, %385
  store i32 %390, i32* %388, align 8
  %391 = load %union.ccb*, %union.ccb** %6, align 8
  %392 = bitcast %union.ccb* %391 to %struct.TYPE_15__*
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @xpt_freeze_devq(i32 %394, i32 1)
  br label %396

396:                                              ; preds = %384, %379
  %397 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %398 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %399 = call i32 @mpr_free_command(%struct.mpr_softc* %397, %struct.mpr_command* %398)
  %400 = load %union.ccb*, %union.ccb** %6, align 8
  %401 = call i32 @xpt_done(%union.ccb* %400)
  br label %988

402:                                              ; preds = %327
  %403 = load %struct.mprsas_softc*, %struct.mprsas_softc** %8, align 8
  %404 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %403, i32 0, i32 1
  %405 = load %struct.mprsas_target*, %struct.mprsas_target** %404, align 8
  %406 = load i64, i64* %17, align 8
  %407 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %405, i64 %406
  store %struct.mprsas_target* %407, %struct.mprsas_target** %16, align 8
  %408 = load i64*, i64** %12, align 8
  %409 = getelementptr inbounds i64, i64* %408, i64 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @UNMAP, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %438

413:                                              ; preds = %402
  %414 = load %struct.mprsas_target*, %struct.mprsas_target** %16, align 8
  %415 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %438

418:                                              ; preds = %413
  %419 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %420 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %419, i32 0, i32 3
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @CAM_DATA_MASK, align 4
  %424 = and i32 %422, %423
  %425 = load i32, i32* @CAM_DATA_VADDR, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %438

427:                                              ; preds = %418
  %428 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %429 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %430 = call i32 @mprsas_complete_nvme_unmap(%struct.mpr_softc* %428, %struct.mpr_command* %429)
  %431 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %431, i32 0, i32 2
  store i32 %430, i32* %432, align 4
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %437 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %436, i32 0, i32 6
  store i32 %435, i32* %437, align 8
  br label %438

438:                                              ; preds = %427, %418, %413, %402
  %439 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %440 = load i32, i32* @MPR_XINFO, align 4
  %441 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @le16toh(i32 %443)
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @le32toh(i32 %453)
  %455 = call i32 (%struct.mpr_command*, i32, i8*, ...) @mprsas_log_command(%struct.mpr_command* %439, i32 %440, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %444, i32 %447, i32 %450, i32 %454)
  %456 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @le16toh(i32 %458)
  %460 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %461 = and i32 %459, %460
  switch i32 %461, label %880 [
    i32 139, label %462
    i32 128, label %473
    i32 132, label %473
    i32 136, label %796
    i32 138, label %796
    i32 144, label %812
    i32 129, label %819
    i32 140, label %835
    i32 135, label %841
    i32 137, label %841
    i32 145, label %879
    i32 147, label %879
    i32 142, label %879
    i32 146, label %879
    i32 143, label %879
    i32 141, label %879
    i32 134, label %879
    i32 133, label %879
    i32 131, label %879
    i32 130, label %879
  ]

462:                                              ; preds = %438
  %463 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %464 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @le32toh(i32 %468)
  %470 = sub nsw i32 %465, %469
  %471 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %472 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %471, i32 0, i32 0
  store i32 %470, i32* %472, align 8
  br label %473

473:                                              ; preds = %438, %438, %462
  %474 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @le16toh(i32 %476)
  %478 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %479 = and i32 %477, %478
  %480 = icmp eq i32 %479, 132
  br i1 %480, label %481, label %485

481:                                              ; preds = %473
  %482 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %483 = load i32, i32* @MPR_XINFO, align 4
  %484 = call i32 (%struct.mpr_command*, i32, i8*, ...) @mprsas_log_command(%struct.mpr_command* %482, i32 %483, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %485

485:                                              ; preds = %481, %473
  %486 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* @MPI2_SCSI_STATE_NO_SCSI_STATUS, align 4
  %490 = load i32, i32* @MPI2_SCSI_STATE_TERMINATED, align 4
  %491 = or i32 %489, %490
  %492 = and i32 %488, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %498

494:                                              ; preds = %485
  %495 = load %union.ccb*, %union.ccb** %6, align 8
  %496 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  %497 = call i32 @mprsas_set_ccbstatus(%union.ccb* %495, i64 %496)
  br label %935

498:                                              ; preds = %485
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* @MPI2_SCSI_STATE_AUTOSENSE_FAILED, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %509

505:                                              ; preds = %498
  %506 = load %union.ccb*, %union.ccb** %6, align 8
  %507 = load i64, i64* @CAM_AUTOSENSE_FAIL, align 8
  %508 = call i32 @mprsas_set_ccbstatus(%union.ccb* %506, i64 %507)
  br label %935

509:                                              ; preds = %498
  %510 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %511 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* @MPI2_SCSI_STATE_RESPONSE_INFO_VALID, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %534

516:                                              ; preds = %509
  %517 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %518 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %517, i32 0, i32 6
  %519 = load i32, i32* %518, align 4
  %520 = call i32 @le32toh(i32 %519)
  %521 = load i32, i32* @MPI2_SCSI_RI_MASK_REASONCODE, align 4
  %522 = and i32 %520, %521
  %523 = load i32, i32* @MPR_SCSI_RI_INVALID_FRAME, align 4
  %524 = icmp eq i32 %522, %523
  br i1 %524, label %525, label %534

525:                                              ; preds = %516
  %526 = load i32, i32* @MPI2_SCSIIO_CONTROL_NO_TLR, align 4
  %527 = sext i32 %526 to i64
  %528 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %529 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %528, i32 0, i32 1
  %530 = load %struct.TYPE_11__*, %struct.TYPE_11__** %529, align 8
  %531 = load i64, i64* %17, align 8
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %532, i32 0, i32 0
  store i64 %527, i64* %533, align 8
  br label %534

534:                                              ; preds = %525, %516, %509
  %535 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %536 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 4
  %538 = load i32, i32* @MPI2_SCSI_STATUS_COMMAND_TERMINATED, align 4
  %539 = icmp eq i32 %537, %538
  br i1 %539, label %546, label %540

540:                                              ; preds = %534
  %541 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %542 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* @MPI2_SCSI_STATUS_TASK_ABORTED, align 4
  %545 = icmp eq i32 %543, %544
  br i1 %545, label %546, label %550

546:                                              ; preds = %540, %534
  %547 = load %union.ccb*, %union.ccb** %6, align 8
  %548 = load i64, i64* @CAM_REQ_ABORTED, align 8
  %549 = call i32 @mprsas_set_ccbstatus(%union.ccb* %547, i64 %548)
  br label %935

550:                                              ; preds = %540
  %551 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %552 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %555 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %554, i32 0, i32 6
  store i32 %553, i32* %555, align 8
  %556 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %557 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 4
  %559 = load i32, i32* @MPI2_SCSI_STATUS_GOOD, align 4
  %560 = icmp eq i32 %558, %559
  br i1 %560, label %561, label %565

561:                                              ; preds = %550
  %562 = load %union.ccb*, %union.ccb** %6, align 8
  %563 = load i64, i64* @CAM_REQ_CMP, align 8
  %564 = call i32 @mprsas_set_ccbstatus(%union.ccb* %562, i64 %563)
  br label %569

565:                                              ; preds = %550
  %566 = load %union.ccb*, %union.ccb** %6, align 8
  %567 = load i64, i64* @CAM_SCSI_STATUS_ERROR, align 8
  %568 = call i32 @mprsas_set_ccbstatus(%union.ccb* %566, i64 %567)
  br label %569

569:                                              ; preds = %565, %561
  %570 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* @MPI2_SCSI_STATE_AUTOSENSE_VALID, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %624

576:                                              ; preds = %569
  %577 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %578 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %577, i32 0, i32 5
  %579 = load i32, i32* %578, align 4
  %580 = call i32 @le32toh(i32 %579)
  %581 = call i32 @min(i32 %580, i32 4)
  store i32 %581, i32* %19, align 4
  %582 = load i32, i32* %19, align 4
  %583 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %584 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = icmp slt i32 %582, %585
  br i1 %586, label %587, label %595

587:                                              ; preds = %576
  %588 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %589 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* %19, align 4
  %592 = sub nsw i32 %590, %591
  %593 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %594 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %593, i32 0, i32 5
  store i32 %592, i32* %594, align 4
  br label %598

595:                                              ; preds = %576
  %596 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %597 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %596, i32 0, i32 5
  store i32 0, i32* %597, align 4
  br label %598

598:                                              ; preds = %595, %587
  %599 = load i32, i32* %19, align 4
  %600 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %601 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %604 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %603, i32 0, i32 5
  %605 = load i32, i32* %604, align 4
  %606 = sub nsw i32 %602, %605
  %607 = call i32 @min(i32 %599, i32 %606)
  store i32 %607, i32* %18, align 4
  %608 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %609 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %608, i32 0, i32 4
  %610 = call i32 @bzero(i32* %609, i32 4)
  %611 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %612 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %611, i32 0, i32 5
  %613 = load i32, i32* %612, align 4
  %614 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %615 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %614, i32 0, i32 4
  %616 = load i32, i32* %18, align 4
  %617 = call i32 @bcopy(i32 %613, i32* %615, i32 %616)
  %618 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %619 = load %union.ccb*, %union.ccb** %6, align 8
  %620 = bitcast %union.ccb* %619 to %struct.TYPE_15__*
  %621 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = or i32 %622, %618
  store i32 %623, i32* %621, align 8
  br label %624

624:                                              ; preds = %598, %569
  %625 = load i64*, i64** %12, align 8
  %626 = getelementptr inbounds i64, i64* %625, i64 0
  %627 = load i64, i64* %626, align 8
  %628 = load i64, i64* @INQUIRY, align 8
  %629 = icmp eq i64 %627, %628
  br i1 %629, label %630, label %739

630:                                              ; preds = %624
  %631 = load i64*, i64** %12, align 8
  %632 = getelementptr inbounds i64, i64* %631, i64 1
  %633 = load i64, i64* %632, align 8
  %634 = load i64, i64* @SI_EVPD, align 8
  %635 = and i64 %633, %634
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %739

637:                                              ; preds = %630
  %638 = load i64*, i64** %12, align 8
  %639 = getelementptr inbounds i64, i64* %638, i64 2
  %640 = load i64, i64* %639, align 8
  %641 = load i64, i64* @SVPD_SUPPORTED_PAGE_LIST, align 8
  %642 = icmp eq i64 %640, %641
  br i1 %642, label %643, label %739

643:                                              ; preds = %637
  %644 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %645 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %644, i32 0, i32 3
  %646 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 8
  %648 = load i32, i32* @CAM_DATA_MASK, align 4
  %649 = and i32 %647, %648
  %650 = load i32, i32* @CAM_DATA_VADDR, align 4
  %651 = icmp eq i32 %649, %650
  br i1 %651, label %652, label %739

652:                                              ; preds = %643
  %653 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %654 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %653, i32 0, i32 2
  %655 = load i32*, i32** %654, align 8
  %656 = icmp ne i32* %655, null
  br i1 %656, label %657, label %739

657:                                              ; preds = %652
  %658 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %659 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %658, i32 0, i32 2
  %660 = load i32*, i32** %659, align 8
  %661 = getelementptr inbounds i32, i32* %660, i64 0
  %662 = load i32, i32* %661, align 4
  %663 = and i32 %662, 31
  %664 = load i32, i32* @T_SEQUENTIAL, align 4
  %665 = icmp eq i32 %663, %664
  br i1 %665, label %666, label %739

666:                                              ; preds = %657
  %667 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %668 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 8
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %739

671:                                              ; preds = %666
  %672 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %673 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %672, i32 0, i32 1
  %674 = load %struct.TYPE_11__*, %struct.TYPE_11__** %673, align 8
  %675 = load i64, i64* %17, align 8
  %676 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %674, i64 %675
  %677 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %676, i32 0, i32 1
  %678 = load i32, i32* %677, align 8
  %679 = load i32, i32* @MPI2_SAS_DEVICE_INFO_SSP_TARGET, align 4
  %680 = and i32 %678, %679
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %739

682:                                              ; preds = %671
  %683 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %684 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %683, i32 0, i32 2
  %685 = load i32*, i32** %684, align 8
  %686 = bitcast i32* %685 to %struct.scsi_vpd_supported_page_list*
  store %struct.scsi_vpd_supported_page_list* %686, %struct.scsi_vpd_supported_page_list** %9, align 8
  %687 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %688 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %687, i32 0, i32 1
  %689 = load %struct.TYPE_11__*, %struct.TYPE_11__** %688, align 8
  %690 = load i64, i64* %17, align 8
  %691 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %689, i64 %690
  %692 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %691, i32 0, i32 0
  store i64* %692, i64** %10, align 8
  %693 = load i32, i32* @MPI2_SCSIIO_CONTROL_NO_TLR, align 4
  %694 = sext i32 %693 to i64
  %695 = load i64*, i64** %10, align 8
  store i64 %694, i64* %695, align 8
  %696 = load i32, i32* @MPI2_SCSIIO_CONTROL_TLR_ON, align 4
  %697 = sext i32 %696 to i64
  store i64 %697, i64* %11, align 8
  %698 = load i64*, i64** %12, align 8
  %699 = getelementptr inbounds i64, i64* %698, i64 3
  %700 = load i64, i64* %699, align 8
  %701 = trunc i64 %700 to i32
  %702 = shl i32 %701, 8
  %703 = sext i32 %702 to i64
  %704 = load i64*, i64** %12, align 8
  %705 = getelementptr inbounds i64, i64* %704, i64 4
  %706 = load i64, i64* %705, align 8
  %707 = add nsw i64 %703, %706
  %708 = trunc i64 %707 to i32
  store i32 %708, i32* %15, align 4
  %709 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %710 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 8
  %712 = load i32, i32* %15, align 4
  %713 = sub nsw i32 %712, %711
  store i32 %713, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %714

714:                                              ; preds = %735, %682
  %715 = load i32, i32* %14, align 4
  %716 = load %struct.scsi_vpd_supported_page_list*, %struct.scsi_vpd_supported_page_list** %9, align 8
  %717 = getelementptr inbounds %struct.scsi_vpd_supported_page_list, %struct.scsi_vpd_supported_page_list* %716, i32 0, i32 1
  %718 = load i32, i32* %717, align 8
  %719 = load i32, i32* %15, align 4
  %720 = call i32 @MIN(i32 %718, i32 %719)
  %721 = icmp slt i32 %715, %720
  br i1 %721, label %722, label %738

722:                                              ; preds = %714
  %723 = load %struct.scsi_vpd_supported_page_list*, %struct.scsi_vpd_supported_page_list** %9, align 8
  %724 = getelementptr inbounds %struct.scsi_vpd_supported_page_list, %struct.scsi_vpd_supported_page_list* %723, i32 0, i32 0
  %725 = load i32*, i32** %724, align 8
  %726 = load i32, i32* %14, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i32, i32* %725, i64 %727
  %729 = load i32, i32* %728, align 4
  %730 = icmp eq i32 %729, 144
  br i1 %730, label %731, label %734

731:                                              ; preds = %722
  %732 = load i64, i64* %11, align 8
  %733 = load i64*, i64** %10, align 8
  store i64 %732, i64* %733, align 8
  br label %738

734:                                              ; preds = %722
  br label %735

735:                                              ; preds = %734
  %736 = load i32, i32* %14, align 4
  %737 = add nsw i32 %736, 1
  store i32 %737, i32* %14, align 4
  br label %714

738:                                              ; preds = %731, %714
  br label %739

739:                                              ; preds = %738, %671, %666, %657, %652, %643, %637, %630, %624
  %740 = load i64*, i64** %12, align 8
  %741 = getelementptr inbounds i64, i64* %740, i64 0
  %742 = load i64, i64* %741, align 8
  %743 = load i64, i64* @INQUIRY, align 8
  %744 = icmp eq i64 %742, %743
  br i1 %744, label %745, label %795

745:                                              ; preds = %739
  %746 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %747 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %746, i32 0, i32 2
  %748 = load i32*, i32** %747, align 8
  %749 = icmp ne i32* %748, null
  br i1 %749, label %750, label %795

750:                                              ; preds = %745
  %751 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %752 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %751, i32 0, i32 2
  %753 = load i32*, i32** %752, align 8
  %754 = getelementptr inbounds i32, i32* %753, i64 0
  %755 = load i32, i32* %754, align 4
  %756 = and i32 %755, 31
  %757 = load i32, i32* @T_DIRECT, align 4
  %758 = icmp eq i32 %756, %757
  br i1 %758, label %759, label %795

759:                                              ; preds = %750
  %760 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %761 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %760, i32 0, i32 1
  %762 = load %struct.TYPE_11__*, %struct.TYPE_11__** %761, align 8
  %763 = load i64, i64* %17, align 8
  %764 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %762, i64 %763
  %765 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %764, i32 0, i32 1
  %766 = load i32, i32* %765, align 8
  %767 = load i32, i32* @MPI2_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %768 = and i32 %766, %767
  %769 = icmp ne i32 %768, 0
  br i1 %769, label %770, label %795

770:                                              ; preds = %759
  %771 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %772 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %771, i32 0, i32 1
  %773 = load %struct.TYPE_11__*, %struct.TYPE_11__** %772, align 8
  %774 = load i64, i64* %17, align 8
  %775 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %773, i64 %774
  %776 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %775, i32 0, i32 1
  %777 = load i32, i32* %776, align 8
  %778 = load i32, i32* @MPI2_SAS_DEVICE_INFO_MASK_DEVICE_TYPE, align 4
  %779 = and i32 %777, %778
  %780 = load i32, i32* @MPI2_SAS_DEVICE_INFO_END_DEVICE, align 4
  %781 = icmp eq i32 %779, %780
  br i1 %781, label %782, label %795

782:                                              ; preds = %770
  %783 = load %struct.mprsas_softc*, %struct.mprsas_softc** %8, align 8
  %784 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %783, i32 0, i32 1
  %785 = load %struct.mprsas_target*, %struct.mprsas_target** %784, align 8
  %786 = load i64, i64* %17, align 8
  %787 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %785, i64 %786
  store %struct.mprsas_target* %787, %struct.mprsas_target** %16, align 8
  %788 = load i32, i32* @TRUE, align 4
  %789 = load %struct.mprsas_target*, %struct.mprsas_target** %16, align 8
  %790 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %789, i32 0, i32 1
  store i32 %788, i32* %790, align 8
  %791 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %792 = load i32, i32* @MPR_XINFO, align 4
  %793 = load i64, i64* %17, align 8
  %794 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %791, i32 %792, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i64 %793)
  br label %795

795:                                              ; preds = %782, %770, %759, %750, %745, %739
  br label %935

796:                                              ; preds = %438, %438
  %797 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %798 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %797, i32 0, i32 3
  %799 = load %struct.TYPE_17__*, %struct.TYPE_17__** %798, align 8
  %800 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %799, i32 0, i32 0
  %801 = load i32, i32* %800, align 8
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %807

803:                                              ; preds = %796
  %804 = load %union.ccb*, %union.ccb** %6, align 8
  %805 = load i64, i64* @CAM_REQ_CMP, align 8
  %806 = call i32 @mprsas_set_ccbstatus(%union.ccb* %804, i64 %805)
  br label %811

807:                                              ; preds = %796
  %808 = load %union.ccb*, %union.ccb** %6, align 8
  %809 = load i64, i64* @CAM_DEV_NOT_THERE, align 8
  %810 = call i32 @mprsas_set_ccbstatus(%union.ccb* %808, i64 %809)
  br label %811

811:                                              ; preds = %807, %803
  br label %935

812:                                              ; preds = %438
  %813 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %814 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %815 = call i32 @mpr_print_scsiio_cmd(%struct.mpr_softc* %813, %struct.mpr_command* %814)
  %816 = load %union.ccb*, %union.ccb** %6, align 8
  %817 = load i64, i64* @CAM_UNREC_HBA_ERROR, align 8
  %818 = call i32 @mprsas_set_ccbstatus(%union.ccb* %816, i64 %817)
  br label %935

819:                                              ; preds = %438
  %820 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %821 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %820, i32 0, i32 0
  %822 = load i32, i32* %821, align 8
  %823 = load i32, i32* @MPR_CM_FLAGS_TIMEDOUT, align 4
  %824 = and i32 %822, %823
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %830

826:                                              ; preds = %819
  %827 = load %union.ccb*, %union.ccb** %6, align 8
  %828 = load i64, i64* @CAM_CMD_TIMEOUT, align 8
  %829 = call i32 @mprsas_set_ccbstatus(%union.ccb* %827, i64 %828)
  br label %834

830:                                              ; preds = %819
  %831 = load %union.ccb*, %union.ccb** %6, align 8
  %832 = load i64, i64* @CAM_REQ_ABORTED, align 8
  %833 = call i32 @mprsas_set_ccbstatus(%union.ccb* %831, i64 %832)
  br label %834

834:                                              ; preds = %830, %826
  br label %935

835:                                              ; preds = %438
  %836 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %837 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %836, i32 0, i32 0
  store i32 0, i32* %837, align 8
  %838 = load %union.ccb*, %union.ccb** %6, align 8
  %839 = load i64, i64* @CAM_DATA_RUN_ERR, align 8
  %840 = call i32 @mprsas_set_ccbstatus(%union.ccb* %838, i64 %839)
  br label %935

841:                                              ; preds = %438, %438
  %842 = load %union.ccb*, %union.ccb** %6, align 8
  %843 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  %844 = call i32 @mprsas_set_ccbstatus(%union.ccb* %842, i64 %843)
  %845 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %846 = load i32, i32* @MPR_INFO, align 4
  %847 = load i32, i32* @mpr_iocstatus_string, align 4
  %848 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %849 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %848, i32 0, i32 4
  %850 = load i32, i32* %849, align 4
  %851 = call i32 @le16toh(i32 %850)
  %852 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %853 = and i32 %851, %852
  %854 = call i32 @mpr_describe_table(i32 %847, i32 %853)
  %855 = load i64, i64* %17, align 8
  %856 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %857 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %856, i32 0, i32 4
  %858 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %857, i32 0, i32 0
  %859 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %858, i32 0, i32 0
  %860 = load i32, i32* %859, align 8
  %861 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %862 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %861, i32 0, i32 3
  %863 = load i32, i32* %862, align 4
  %864 = call i32 @le32toh(i32 %863)
  %865 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %845, i32 %846, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 %854, i64 %855, i32 %860, i32 %864)
  %866 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %867 = load i32, i32* @MPR_XINFO, align 4
  %868 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %869 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %868, i32 0, i32 2
  %870 = load i32, i32* %869, align 4
  %871 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %872 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %871, i32 0, i32 0
  %873 = load i32, i32* %872, align 4
  %874 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %875 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %874, i32 0, i32 1
  %876 = load i32, i32* %875, align 4
  %877 = call i32 @le32toh(i32 %876)
  %878 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %866, i32 %867, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %870, i32 %873, i32 %877)
  br label %935

879:                                              ; preds = %438, %438, %438, %438, %438, %438, %438, %438, %438, %438
  br label %880

880:                                              ; preds = %438, %879
  %881 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %882 = load i32, i32* @MPR_XINFO, align 4
  %883 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %884 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %883, i32 0, i32 4
  %885 = load i32, i32* %884, align 4
  %886 = call i32 @le16toh(i32 %885)
  %887 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %888 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %887, i32 0, i32 3
  %889 = load i32, i32* %888, align 4
  %890 = call i32 @le32toh(i32 %889)
  %891 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %892 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %891, i32 0, i32 2
  %893 = load i32, i32* %892, align 4
  %894 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %895 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %894, i32 0, i32 0
  %896 = load i32, i32* %895, align 4
  %897 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %898 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %897, i32 0, i32 1
  %899 = load i32, i32* %898, align 4
  %900 = call i32 @le32toh(i32 %899)
  %901 = call i32 (%struct.mpr_command*, i32, i8*, ...) @mprsas_log_command(%struct.mpr_command* %881, i32 %882, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i32 %886, i32 %890, i32 %893, i32 %896, i32 %900)
  %902 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %903 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %902, i32 0, i32 2
  %904 = load i32, i32* %903, align 8
  %905 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %906 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %905, i32 0, i32 0
  store i32 %904, i32* %906, align 8
  %907 = load i64*, i64** %12, align 8
  %908 = getelementptr inbounds i64, i64* %907, i64 0
  %909 = load i64, i64* %908, align 8
  %910 = load i64, i64* @UNMAP, align 8
  %911 = icmp eq i64 %909, %910
  br i1 %911, label %912, label %930

912:                                              ; preds = %880
  %913 = load %struct.mprsas_target*, %struct.mprsas_target** %16, align 8
  %914 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %913, i32 0, i32 0
  %915 = load i64, i64* %914, align 8
  %916 = icmp ne i64 %915, 0
  br i1 %916, label %917, label %930

917:                                              ; preds = %912
  %918 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %919 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %918, i32 0, i32 3
  %920 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %919, i32 0, i32 1
  %921 = load i32, i32* %920, align 8
  %922 = load i32, i32* @CAM_DATA_MASK, align 4
  %923 = and i32 %921, %922
  %924 = load i32, i32* @CAM_DATA_VADDR, align 4
  %925 = icmp eq i32 %923, %924
  br i1 %925, label %926, label %930

926:                                              ; preds = %917
  %927 = load %union.ccb*, %union.ccb** %6, align 8
  %928 = load i64, i64* @CAM_REQ_CMP, align 8
  %929 = call i32 @mprsas_set_ccbstatus(%union.ccb* %927, i64 %928)
  br label %934

930:                                              ; preds = %917, %912, %880
  %931 = load %union.ccb*, %union.ccb** %6, align 8
  %932 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  %933 = call i32 @mprsas_set_ccbstatus(%union.ccb* %931, i64 %932)
  br label %934

934:                                              ; preds = %930, %926
  br label %935

935:                                              ; preds = %934, %841, %835, %834, %812, %811, %795, %546, %505, %494
  %936 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %937 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %938 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %939 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %940 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %939, i32 0, i32 3
  %941 = load %struct.TYPE_17__*, %struct.TYPE_17__** %940, align 8
  %942 = call i32 @mpr_sc_failed_io_info(%struct.mpr_softc* %936, %struct.ccb_scsiio* %937, %struct.TYPE_16__* %938, %struct.TYPE_17__* %941)
  %943 = load %struct.mprsas_softc*, %struct.mprsas_softc** %8, align 8
  %944 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %943, i32 0, i32 0
  %945 = load i32, i32* %944, align 8
  %946 = load i32, i32* @MPRSAS_QUEUE_FROZEN, align 4
  %947 = and i32 %945, %946
  %948 = icmp ne i32 %947, 0
  br i1 %948, label %949, label %965

949:                                              ; preds = %935
  %950 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %951 = load %union.ccb*, %union.ccb** %6, align 8
  %952 = bitcast %union.ccb* %951 to %struct.TYPE_15__*
  %953 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %952, i32 0, i32 0
  %954 = load i32, i32* %953, align 8
  %955 = or i32 %954, %950
  store i32 %955, i32* %953, align 8
  %956 = load i32, i32* @MPRSAS_QUEUE_FROZEN, align 4
  %957 = xor i32 %956, -1
  %958 = load %struct.mprsas_softc*, %struct.mprsas_softc** %8, align 8
  %959 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %958, i32 0, i32 0
  %960 = load i32, i32* %959, align 8
  %961 = and i32 %960, %957
  store i32 %961, i32* %959, align 8
  %962 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %963 = load i32, i32* @MPR_XINFO, align 4
  %964 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %962, i32 %963, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  br label %965

965:                                              ; preds = %949, %935
  %966 = load %union.ccb*, %union.ccb** %6, align 8
  %967 = call i64 @mprsas_get_ccbstatus(%union.ccb* %966)
  %968 = load i64, i64* @CAM_REQ_CMP, align 8
  %969 = icmp ne i64 %967, %968
  br i1 %969, label %970, label %982

970:                                              ; preds = %965
  %971 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %972 = load %union.ccb*, %union.ccb** %6, align 8
  %973 = bitcast %union.ccb* %972 to %struct.TYPE_15__*
  %974 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %973, i32 0, i32 0
  %975 = load i32, i32* %974, align 8
  %976 = or i32 %975, %971
  store i32 %976, i32* %974, align 8
  %977 = load %union.ccb*, %union.ccb** %6, align 8
  %978 = bitcast %union.ccb* %977 to %struct.TYPE_15__*
  %979 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %978, i32 0, i32 1
  %980 = load i32, i32* %979, align 4
  %981 = call i32 @xpt_freeze_devq(i32 %980, i32 1)
  br label %982

982:                                              ; preds = %970, %965
  %983 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %984 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %985 = call i32 @mpr_free_command(%struct.mpr_softc* %983, %struct.mpr_command* %984)
  %986 = load %union.ccb*, %union.ccb** %6, align 8
  %987 = call i32 @xpt_done(%union.ccb* %986)
  br label %988

988:                                              ; preds = %982, %396
  ret void
}

declare dso_local i32 @MPR_FUNCTRACE(%struct.mpr_softc*) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, ...) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mpr_command*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mprsas_log_command(%struct.mpr_command*, i32, i8*, ...) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @mprsas_set_ccbstatus(%union.ccb*, i64) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i64 @mprsas_get_ccbstatus(%union.ccb*) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @mpr_free_command(%struct.mpr_softc*, %struct.mpr_command*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mprsas_complete_nvme_unmap(%struct.mpr_softc*, %struct.mpr_command*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @mpr_print_scsiio_cmd(%struct.mpr_softc*, %struct.mpr_command*) #1

declare dso_local i32 @mpr_describe_table(i32, i32) #1

declare dso_local i32 @mpr_sc_failed_io_info(%struct.mpr_softc*, %struct.ccb_scsiio*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
