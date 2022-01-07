; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_execute_scsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_execute_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_osli_req_context = type { i32, i64, i64, i32, %struct.tw_cl_req_packet, %struct.twa_softc* }
%struct.tw_cl_req_packet = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { %struct.tw_cl_scsi_req_packet }
%struct.tw_cl_scsi_req_packet = type { i64, i64, i32, i32, i32*, i64, i32*, i64 }
%struct.twa_softc = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.ccb_hdr = type { i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"SCSI I/O request 0x%x\00", align 1
@TW_CL_MAX_NUM_UNITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid target. PTL = %x %x %jx\00", align 1
@CAM_TID_INVALID = common dso_local global i32 0, align 4
@TW_CL_MAX_NUM_LUNS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid lun. PTL = %x %x %jx\00", align 1
@CAM_LUN_INVALID = common dso_local global i32 0, align 4
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Physical CDB address!\00", align 1
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_DATA_OUT = common dso_local global i32 0, align 4
@tw_osl_complete_io = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@TW_CL_MAX_IO_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"size = %d\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"I/O size too big\00", align 1
@CAM_REQ_TOO_BIG = common dso_local global i32 0, align 4
@CAM_DATA_MASK = common dso_local global i32 0, align 4
@CAM_DATA_VADDR = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_CCB = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_FAILED = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osli_execute_scsi(%struct.tw_osli_req_context* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw_osli_req_context*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.twa_softc*, align 8
  %7 = alloca %struct.tw_cl_req_packet*, align 8
  %8 = alloca %struct.tw_cl_scsi_req_packet*, align 8
  %9 = alloca %struct.ccb_hdr*, align 8
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca i32, align 4
  store %struct.tw_osli_req_context* %0, %struct.tw_osli_req_context** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %12 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %13 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %12, i32 0, i32 5
  %14 = load %struct.twa_softc*, %struct.twa_softc** %13, align 8
  store %struct.twa_softc* %14, %struct.twa_softc** %6, align 8
  %15 = load %union.ccb*, %union.ccb** %5, align 8
  %16 = bitcast %union.ccb* %15 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %16, %struct.ccb_hdr** %9, align 8
  %17 = load %union.ccb*, %union.ccb** %5, align 8
  %18 = bitcast %union.ccb* %17 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %18, %struct.ccb_scsiio** %10, align 8
  %19 = load %struct.twa_softc*, %struct.twa_softc** %6, align 8
  %20 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %21 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, %struct.twa_softc*, i8*, i32, ...) @tw_osli_dbg_dprintf(i32 10, %struct.twa_softc* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TW_CL_MAX_NUM_UNITS, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %2
  %33 = load %struct.twa_softc*, %struct.twa_softc** %6, align 8
  %34 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %35 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %38 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i32, %struct.twa_softc*, i8*, i32, ...) @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %39, i32 %43)
  %45 = load i32, i32* @CAM_TID_INVALID, align 4
  %46 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %47 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %union.ccb*, %union.ccb** %5, align 8
  %51 = call i32 @xpt_done(%union.ccb* %50)
  store i32 1, i32* %3, align 4
  br label %274

52:                                               ; preds = %2
  %53 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %54 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TW_CL_MAX_NUM_LUNS, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load %struct.twa_softc*, %struct.twa_softc** %6, align 8
  %60 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %64 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i32, %struct.twa_softc*, i8*, i32, ...) @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %62, i64 %65, i32 %69)
  %71 = load i32, i32* @CAM_LUN_INVALID, align 4
  %72 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %73 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %union.ccb*, %union.ccb** %5, align 8
  %77 = call i32 @xpt_done(%union.ccb* %76)
  store i32 1, i32* %3, align 4
  br label %274

78:                                               ; preds = %52
  %79 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %80 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CAM_CDB_PHYS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load %struct.twa_softc*, %struct.twa_softc** %6, align 8
  %87 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %88 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %89 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, ...) @tw_osli_printf(%struct.twa_softc* %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88, i32 8453, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @CAM_REQ_INVALID, align 4
  %91 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %92 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %union.ccb*, %union.ccb** %5, align 8
  %94 = call i32 @xpt_done(%union.ccb* %93)
  store i32 1, i32* %3, align 4
  br label %274

95:                                               ; preds = %78
  %96 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %97 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %98 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %102 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CAM_DIR_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @CAM_DIR_NONE, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %95
  %109 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %110 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CAM_DIR_IN, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_IN, align 4
  %117 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %118 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %127

121:                                              ; preds = %108
  %122 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_OUT, align 4
  %123 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %124 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %115
  br label %128

128:                                              ; preds = %127, %95
  %129 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %130 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %129, i32 0, i32 4
  store %struct.tw_cl_req_packet* %130, %struct.tw_cl_req_packet** %7, align 8
  %131 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %7, align 8
  %132 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %131, i32 0, i32 2
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @tw_osl_complete_io, align 4
  %134 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %7, align 8
  %135 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %7, align 8
  %137 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store %struct.tw_cl_scsi_req_packet* %138, %struct.tw_cl_scsi_req_packet** %8, align 8
  %139 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %140 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %8, align 8
  %143 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %145 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %8, align 8
  %148 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %8, align 8
  %150 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %149, i32 0, i32 7
  store i64 0, i64* %150, align 8
  %151 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %152 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %151, i32 0, i32 4
  %153 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %8, align 8
  %154 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %153, i32 0, i32 6
  store i32* %152, i32** %154, align 8
  %155 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %8, align 8
  %156 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %155, i32 0, i32 5
  store i64 0, i64* %156, align 8
  %157 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %158 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @CAM_CDB_POINTER, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %128
  %164 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %165 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %8, align 8
  %169 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %168, i32 0, i32 4
  store i32* %167, i32** %169, align 8
  br label %177

170:                                              ; preds = %128
  %171 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %172 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %8, align 8
  %176 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %175, i32 0, i32 4
  store i32* %174, i32** %176, align 8
  br label %177

177:                                              ; preds = %170, %163
  %178 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %179 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %8, align 8
  %182 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %184 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @TW_CL_MAX_IO_SIZE, align 8
  %187 = icmp sgt i64 %185, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %177
  %189 = load %struct.twa_softc*, %struct.twa_softc** %6, align 8
  %190 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %191 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %192 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %193 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, ...) @tw_osli_printf(%struct.twa_softc* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %190, i32 %191, i32 8454, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %194)
  %196 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %197 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %198 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %202 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load %union.ccb*, %union.ccb** %5, align 8
  %206 = call i32 @xpt_done(%union.ccb* %205)
  store i32 1, i32* %3, align 4
  br label %274

207:                                              ; preds = %177
  %208 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %209 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @CAM_DATA_MASK, align 4
  %212 = and i32 %210, %211
  %213 = load i32, i32* @CAM_DATA_VADDR, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %207
  %216 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %217 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %220 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %219, i32 0, i32 1
  store i64 %218, i64* %220, align 8
  %221 = icmp ne i64 %218, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %224 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %227 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 8
  %228 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %8, align 8
  %229 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %228, i32 0, i32 2
  store i32 1, i32* %229, align 8
  br label %230

230:                                              ; preds = %222, %215
  br label %237

231:                                              ; preds = %207
  %232 = load i32, i32* @TW_OSLI_REQ_FLAGS_CCB, align 4
  %233 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %234 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %231, %230
  %238 = call i64 (...) @tw_osl_get_local_time()
  %239 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %240 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = sdiv i32 %241, 1000
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %238, %243
  %245 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %246 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %245, i32 0, i32 2
  store i64 %244, i64* %246, align 8
  %247 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %248 = call i32 @tw_osli_map_request(%struct.tw_osli_req_context* %247)
  store i32 %248, i32* %11, align 4
  %249 = load i32, i32* %11, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %272

251:                                              ; preds = %237
  %252 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %253 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @TW_OSLI_REQ_FLAGS_FAILED, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %251
  %259 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %260 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %259, i32 0, i32 2
  store i64 0, i64* %260, align 8
  %261 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %262 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %263 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  %264 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %265 = xor i32 %264, -1
  %266 = load %struct.ccb_hdr*, %struct.ccb_hdr** %9, align 8
  %267 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, %265
  store i32 %269, i32* %267, align 8
  %270 = load %union.ccb*, %union.ccb** %5, align 8
  %271 = call i32 @xpt_done(%union.ccb* %270)
  br label %272

272:                                              ; preds = %258, %251, %237
  %273 = load i32, i32* %11, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %272, %188, %85, %58, %32
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*, i32, ...) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, ...) #1

declare dso_local i64 @tw_osl_get_local_time(...) #1

declare dso_local i32 @tw_osli_map_request(%struct.tw_osli_req_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
