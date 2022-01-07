; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_target_start_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_target_start_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, i32, i32, i64, i64 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_20__*, %union.ccb* }
%struct.TYPE_20__ = type { i64, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i32, %struct.TYPE_18__*, %union.ccb* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__* }

@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"ccb %p flags 0x%x tag 0x%08x had bad request starting I/O\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"dxfer_len %u but direction is NONE\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"FREEZEQ\0A\00", align 1
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@mpt_execute_req = common dso_local global i32* null, align 8
@MPI_FUNCTION_TARGET_ASSIST = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@TARGET_ASSIST_FLAGS_DATA_DIRECTION = common dso_local global i32 0, align 4
@TGT_STATE_SETTING_UP_FOR_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"DATA_CCB %p tag %x %u bytes %u resid flg %x req %p:%u nxtstate=%d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@CAM_SEND_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"Meaningless STATUS CCB (%p): flags %x status %x resid %d bytes_xfered %u\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_SEND_SENSE = common dso_local global i32 0, align 4
@SCSI_STATUS_OK = common dso_local global i64 0, align 8
@TARGET_ASSIST_FLAGS_AUTO_STATUS = common dso_local global i32 0, align 4
@mpt_execute_req_a64 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %union.ccb*)* @mpt_target_start_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_target_start_io(%struct.mpt_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %15, %struct.ccb_scsiio** %5, align 8
  %16 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %17 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %18 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_18__* @MPT_TAG_2_REQ(%struct.mpt_softc* %16, i32 %19)
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %6, align 8
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = call %struct.TYPE_19__* @MPT_TGT_STATE(%struct.mpt_softc* %21, %struct.TYPE_18__* %22)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %7, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %53 [
    i32 129, label %27
    i32 128, label %28
  ]

27:                                               ; preds = %2
  br label %72

28:                                               ; preds = %2
  %29 = load %union.ccb*, %union.ccb** %4, align 8
  %30 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %31 = call i32 @mpt_set_ccb_status(%union.ccb* %29, i32 %30)
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @xpt_freeze_simq(i32 %34, i32 1)
  %36 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %37 = xor i32 %36, -1
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_17__*
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %37
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 5
  %46 = load %union.ccb*, %union.ccb** %45, align 8
  %47 = bitcast %union.ccb* %46 to %struct.TYPE_17__*
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %43
  store i32 %50, i32* %48, align 8
  %51 = load %union.ccb*, %union.ccb** %4, align 8
  %52 = call i32 @xpt_done(%union.ccb* %51)
  br label %392

53:                                               ; preds = %2
  %54 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %55 = load %union.ccb*, %union.ccb** %4, align 8
  %56 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %57 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %61 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mpt_prt(%struct.mpt_softc* %54, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %union.ccb* %55, i32 %59, i32 %62)
  %64 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = call i32 @mpt_tgt_dump_req_state(%struct.mpt_softc* %64, %struct.TYPE_18__* %65)
  %67 = load %union.ccb*, %union.ccb** %4, align 8
  %68 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %69 = call i32 @mpt_set_ccb_status(%union.ccb* %67, i32 %68)
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = call i32 @xpt_done(%union.ccb* %70)
  br label %392

72:                                               ; preds = %27
  %73 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %74 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %328

77:                                               ; preds = %72
  %78 = load %union.ccb*, %union.ccb** %4, align 8
  %79 = bitcast %union.ccb* %78 to %struct.TYPE_17__*
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CAM_DIR_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @CAM_DIR_NONE, align 4
  %85 = icmp ne i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %88 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @KASSERT(i32 %86, i8* %90)
  %92 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %93 = load i32, i32* @FALSE, align 4
  %94 = call %struct.TYPE_18__* @mpt_get_request(%struct.mpt_softc* %92, i32 %93)
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %10, align 8
  %95 = icmp eq %struct.TYPE_18__* %94, null
  br i1 %95, label %96, label %124

96:                                               ; preds = %77
  %97 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %98 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %103 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %105 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @xpt_freeze_simq(i32 %106, i32 1)
  %108 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %109 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %110 = call i32 (%struct.mpt_softc*, i32, i8*, ...) @mpt_lprt(%struct.mpt_softc* %108, i32 %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %101, %96
  %112 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %113 = xor i32 %112, -1
  %114 = load %union.ccb*, %union.ccb** %4, align 8
  %115 = bitcast %union.ccb* %114 to %struct.TYPE_17__*
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %113
  store i32 %118, i32* %116, align 8
  %119 = load %union.ccb*, %union.ccb** %4, align 8
  %120 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %121 = call i32 @mpt_set_ccb_status(%union.ccb* %119, i32 %120)
  %122 = load %union.ccb*, %union.ccb** %4, align 8
  %123 = call i32 @xpt_done(%union.ccb* %122)
  br label %392

124:                                              ; preds = %77
  %125 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %126 = load i32, i32* @CAM_REQ_INPROG, align 4
  %127 = or i32 %125, %126
  %128 = load %union.ccb*, %union.ccb** %4, align 8
  %129 = bitcast %union.ccb* %128 to %struct.TYPE_17__*
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load i32*, i32** @mpt_execute_req, align 8
  store i32* %131, i32** %8, align 8
  %132 = load %union.ccb*, %union.ccb** %4, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  store %union.ccb* %132, %union.ccb** %134, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %136 = load %union.ccb*, %union.ccb** %4, align 8
  %137 = bitcast %union.ccb* %136 to %struct.TYPE_17__*
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  store %struct.TYPE_18__* %135, %struct.TYPE_18__** %138, align 8
  %139 = load %union.ccb*, %union.ccb** %4, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 5
  store %union.ccb* %139, %union.ccb** %141, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 4
  store %struct.TYPE_18__* %142, %struct.TYPE_18__** %144, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %149 = call i32 @MPT_RQSL(%struct.mpt_softc* %148)
  %150 = call i32 @memset(%struct.TYPE_20__* %147, i32 0, i32 %149)
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  store %struct.TYPE_20__* %153, %struct.TYPE_20__** %9, align 8
  %154 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %155 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %124
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  store %struct.TYPE_20__* %161, %struct.TYPE_20__** %12, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 8
  store i32 %164, i32* %166, align 8
  br label %182

167:                                              ; preds = %124
  %168 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %169 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %174, align 8
  store %struct.TYPE_20__* %175, %struct.TYPE_20__** %13, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %172, %167
  br label %182

182:                                              ; preds = %181, %158
  %183 = load i32, i32* @MPI_FUNCTION_TARGET_ASSIST, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %190 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %188, %191
  %193 = call i8* @htole32(i32 %192)
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 5
  store i8* %193, i8** %195, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i8* @htole32(i32 %198)
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 4
  store i8* %199, i8** %201, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %206 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32 %208)
  %210 = call i32 @be64enc(i32 %204, i32 %209)
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 4
  %216 = load %union.ccb*, %union.ccb** %4, align 8
  %217 = bitcast %union.ccb* %216 to %struct.ccb_scsiio*
  %218 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %224, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %182
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %229, %182
  %236 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %237 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %238, %241
  %243 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %244 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %243, i32 0, i32 1
  store i64 %242, i64* %244, align 8
  %245 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %246 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %250, %247
  store i64 %251, i64* %249, align 8
  %252 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %253 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %254
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %256, align 8
  %261 = load %union.ccb*, %union.ccb** %4, align 8
  %262 = bitcast %union.ccb* %261 to %struct.TYPE_17__*
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @CAM_DIR_MASK, align 4
  %266 = and i32 %264, %265
  %267 = load i32, i32* @CAM_DIR_IN, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %235
  %270 = load i32, i32* @TARGET_ASSIST_FLAGS_DATA_DIRECTION, align 4
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %269, %235
  %276 = load i32, i32* @TGT_STATE_SETTING_UP_FOR_DATA, align 4
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  %279 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %280 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %281 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %282 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %283 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %286 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load %union.ccb*, %union.ccb** %4, align 8
  %292 = bitcast %union.ccb* %291 to %struct.TYPE_17__*
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 (%struct.mpt_softc*, i32, i8*, ...) @mpt_lprt(%struct.mpt_softc* %279, i32 %280, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), %struct.ccb_scsiio* %281, i32 %284, i64 %287, i64 %290, i32 %294, %struct.TYPE_18__* %295, i32 %298, i32 %301)
  %303 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %304 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %union.ccb*, %union.ccb** %4, align 8
  %310 = load i32*, i32** %8, align 8
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %312 = call i32 @bus_dmamap_load_ccb(i32 %305, i32 %308, %union.ccb* %309, i32* %310, %struct.TYPE_18__* %311, i32 0)
  store i32 %312, i32* %11, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load i32, i32* @EINPROGRESS, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %327

316:                                              ; preds = %275
  %317 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %318 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @xpt_freeze_simq(i32 %319, i32 1)
  %321 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %322 = load %union.ccb*, %union.ccb** %4, align 8
  %323 = bitcast %union.ccb* %322 to %struct.TYPE_17__*
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %321
  store i32 %326, i32* %324, align 8
  br label %327

327:                                              ; preds = %316, %275
  br label %392

328:                                              ; preds = %72
  %329 = load %union.ccb*, %union.ccb** %4, align 8
  %330 = bitcast %union.ccb* %329 to %struct.TYPE_17__*
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @CAM_SEND_STATUS, align 4
  %334 = and i32 %332, %333
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %367

336:                                              ; preds = %328
  %337 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %338 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %339 = load %union.ccb*, %union.ccb** %4, align 8
  %340 = load %union.ccb*, %union.ccb** %4, align 8
  %341 = bitcast %union.ccb* %340 to %struct.TYPE_17__*
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %union.ccb*, %union.ccb** %4, align 8
  %345 = bitcast %union.ccb* %344 to %struct.TYPE_17__*
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = call i32 (%struct.mpt_softc*, i32, i8*, ...) @mpt_lprt(%struct.mpt_softc* %337, i32 %338, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), %union.ccb* %339, i32 %343, i32 %347, i64 %350, i32 %353)
  %355 = load %union.ccb*, %union.ccb** %4, align 8
  %356 = load i32, i32* @CAM_REQ_CMP, align 4
  %357 = call i32 @mpt_set_ccb_status(%union.ccb* %355, i32 %356)
  %358 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %359 = xor i32 %358, -1
  %360 = load %union.ccb*, %union.ccb** %4, align 8
  %361 = bitcast %union.ccb* %360 to %struct.TYPE_17__*
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = and i32 %363, %359
  store i32 %364, i32* %362, align 8
  %365 = load %union.ccb*, %union.ccb** %4, align 8
  %366 = call i32 @xpt_done(%union.ccb* %365)
  br label %392

367:                                              ; preds = %328
  %368 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %369 = load %union.ccb*, %union.ccb** %4, align 8
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %371 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %372 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %375 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %374, i32 0, i32 4
  %376 = bitcast i32* %375 to i8*
  %377 = load %union.ccb*, %union.ccb** %4, align 8
  %378 = bitcast %union.ccb* %377 to %struct.TYPE_17__*
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @CAM_SEND_SENSE, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %367
  %385 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %386 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  br label %389

388:                                              ; preds = %367
  br label %389

389:                                              ; preds = %388, %384
  %390 = phi i32 [ %387, %384 ], [ 0, %388 ]
  %391 = call i32 @mpt_scsi_tgt_status(%struct.mpt_softc* %368, %union.ccb* %369, %struct.TYPE_18__* %370, i64 %373, i8* %376, i32 %390)
  br label %392

392:                                              ; preds = %28, %53, %111, %336, %389, %327
  ret void
}

declare dso_local %struct.TYPE_18__* @MPT_TAG_2_REQ(%struct.mpt_softc*, i32) #1

declare dso_local %struct.TYPE_19__* @MPT_TGT_STATE(%struct.mpt_softc*, %struct.TYPE_18__*) #1

declare dso_local i32 @mpt_set_ccb_status(%union.ccb*, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, %union.ccb*, i32, i32) #1

declare dso_local i32 @mpt_tgt_dump_req_state(%struct.mpt_softc*, %struct.TYPE_18__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_18__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @be64enc(i32, i32) #1

declare dso_local i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @mpt_scsi_tgt_status(%struct.mpt_softc*, %union.ccb*, %struct.TYPE_18__*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
