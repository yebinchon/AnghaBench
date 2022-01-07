; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_action_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_action_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%struct.ccb_scsiio = type { %struct.TYPE_20__, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.mly_softc = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32 }
%struct.mly_command = type { %struct.TYPE_15__*, i32, %struct.ccb_scsiio*, i32, i32, %struct.ccb_scsiio* }
%struct.TYPE_15__ = type { %struct.mly_command_scsi_small }
%struct.mly_command_scsi_small = type { i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_18__, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"XPT_SCSI_IO %d:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" invalid bus %d\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@MLY_BTL_PROTECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"  device protected\00", align 1
@MLY_BTL_LOGICAL = common dso_local global i32 0, align 4
@MLY_BTL_PHYSICAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"  device %d:%d does not exist\00", align 1
@MLY_CMD_SCSI_SMALL_CDB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"  command too large (%d > %d)\00", align 1
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"  CDB pointer is to physical address\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"abandoning CCB due to abort/validation failure\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@mly_cam_complete = common dso_local global i32 0, align 4
@MLY_CMD_CCB = common dso_local global i32 0, align 4
@MDACMD_SCSI = common dso_local global i32 0, align 4
@CAM_DIS_DISCONNECT = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@MLY_CCB_WRITE = common dso_local global i32 0, align 4
@MLY_TIMEOUT_SECONDS = common dso_local global i32 0, align 4
@MLY_TIMEOUT_MINUTES = common dso_local global i32 0, align 4
@MLY_TIMEOUT_HOURS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_sim*, %struct.ccb_scsiio*)* @mly_cam_action_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_cam_action_io(%struct.cam_sim* %0, %struct.ccb_scsiio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_sim*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.mly_softc*, align 8
  %7 = alloca %struct.mly_command*, align 8
  %8 = alloca %struct.mly_command_scsi_small*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cam_sim* %0, %struct.cam_sim** %4, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %5, align 8
  %12 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %13 = call %struct.mly_softc* @cam_sim_softc(%struct.cam_sim* %12)
  store %struct.mly_softc* %13, %struct.mly_softc** %6, align 8
  %14 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %15 = call i32 @cam_sim_bus(%struct.cam_sim* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %17 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %25)
  %27 = load %struct.mly_softc*, %struct.mly_softc** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @MLY_BUS_IS_VALID(%struct.mly_softc* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %37 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %31, %2
  %40 = load %struct.mly_softc*, %struct.mly_softc** %6, align 8
  %41 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %42, i64 %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLY_BTL_PROTECTED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %39
  %56 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %60 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %39
  %63 = load %struct.mly_softc*, %struct.mly_softc** %6, align 8
  %64 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %65, i64 %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MLY_BTL_LOGICAL, align 4
  %76 = load i32, i32* @MLY_BTL_PHYSICAL, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %62
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %87 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %62
  %90 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %91 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MLY_CMD_SCSI_SMALL_CDB, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %97 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MLY_CMD_SCSI_SMALL_CDB, align 4
  %100 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %104 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %95, %89
  %107 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %108 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CAM_CDB_POINTER, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %106
  %115 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %116 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CAM_CDB_PHYS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %114
  %123 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %127 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %114, %106
  %130 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %131 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @CAM_STATUS_MASK, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @CAM_REQ_INPROG, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %3, align 4
  br label %358

141:                                              ; preds = %129
  %142 = load %struct.mly_softc*, %struct.mly_softc** %6, align 8
  %143 = call i32 @mly_alloc_command(%struct.mly_softc* %142, %struct.mly_command** %7)
  store i32 %143, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %147 = call i32 @xpt_freeze_simq(%struct.cam_sim* %146, i32 1)
  %148 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %149 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %150 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 4
  %154 = load %struct.mly_softc*, %struct.mly_softc** %6, align 8
  %155 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %3, align 4
  br label %358

159:                                              ; preds = %141
  %160 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %161 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %162 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %161, i32 0, i32 5
  store %struct.ccb_scsiio* %160, %struct.ccb_scsiio** %162, align 8
  %163 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %164 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %167 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @mly_cam_complete, align 4
  %169 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %170 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %172 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %173 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %172, i32 0, i32 2
  store %struct.ccb_scsiio* %171, %struct.ccb_scsiio** %173, align 8
  %174 = load i32, i32* @MLY_CMD_CCB, align 4
  %175 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %176 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %181 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  store i32 %179, i32* %186, align 4
  %187 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %188 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %187, i32 0, i32 0
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  store %struct.mly_command_scsi_small* %190, %struct.mly_command_scsi_small** %8, align 8
  %191 = load i32, i32* @MDACMD_SCSI, align 4
  %192 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %193 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 4
  %194 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %195 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @CAM_DIS_DISCONNECT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %159
  %202 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %203 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 4
  br label %205

205:                                              ; preds = %201, %159
  %206 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %207 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @CAM_DIR_MASK, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* @CAM_DIR_OUT, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %205
  %215 = load i32, i32* @MLY_CCB_WRITE, align 4
  %216 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %217 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %216, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %214, %205
  %220 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %221 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %224 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  %225 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %226 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %230 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 2
  store i32 %228, i32* %232, align 4
  %233 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %234 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %238 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 0
  store i32 %236, i32* %240, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %243 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  store i32 %241, i32* %245, align 4
  %246 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %247 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %249, 60000
  br i1 %250, label %251, label %264

251:                                              ; preds = %219
  %252 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %253 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = sdiv i32 %255, 1000
  %257 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %258 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  store i32 %256, i32* %259, align 4
  %260 = load i32, i32* @MLY_TIMEOUT_SECONDS, align 4
  %261 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %262 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  store i32 %260, i32* %263, align 4
  br label %297

264:                                              ; preds = %219
  %265 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %266 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %268, 3600000
  br i1 %269, label %270, label %283

270:                                              ; preds = %264
  %271 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %272 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = sdiv i32 %274, 60000
  %276 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %277 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  store i32 %275, i32* %278, align 4
  %279 = load i32, i32* @MLY_TIMEOUT_MINUTES, align 4
  %280 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %281 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 1
  store i32 %279, i32* %282, align 4
  br label %296

283:                                              ; preds = %264
  %284 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %285 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = sdiv i32 %287, 3600000
  %289 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %290 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  store i32 %288, i32* %291, align 4
  %292 = load i32, i32* @MLY_TIMEOUT_HOURS, align 4
  %293 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %294 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 1
  store i32 %292, i32* %295, align 4
  br label %296

296:                                              ; preds = %283, %270
  br label %297

297:                                              ; preds = %296, %251
  %298 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %299 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %302 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 4
  %303 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %304 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %307 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 4
  %308 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %309 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @CAM_CDB_POINTER, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %327

315:                                              ; preds = %297
  %316 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %317 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %321 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %324 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @bcopy(i32 %319, i32 %322, i32 %325)
  br label %339

327:                                              ; preds = %297
  %328 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %329 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.mly_command_scsi_small*, %struct.mly_command_scsi_small** %8, align 8
  %333 = getelementptr inbounds %struct.mly_command_scsi_small, %struct.mly_command_scsi_small* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %336 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @bcopy(i32 %331, i32 %334, i32 %337)
  br label %339

339:                                              ; preds = %327, %315
  %340 = load %struct.mly_command*, %struct.mly_command** %7, align 8
  %341 = call i32 @mly_start(%struct.mly_command* %340)
  store i32 %341, i32* %11, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %339
  %344 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %345 = call i32 @xpt_freeze_simq(%struct.cam_sim* %344, i32 1)
  %346 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %347 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %348 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %346
  store i32 %351, i32* %349, align 4
  %352 = load %struct.mly_softc*, %struct.mly_softc** %6, align 8
  %353 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 8
  %356 = load i32, i32* %11, align 4
  store i32 %356, i32* %3, align 4
  br label %358

357:                                              ; preds = %339
  store i32 0, i32* %3, align 4
  br label %358

358:                                              ; preds = %357, %343, %145, %138
  %359 = load i32, i32* %3, align 4
  ret i32 %359
}

declare dso_local %struct.mly_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @MLY_BUS_IS_VALID(%struct.mly_softc*, i32) #1

declare dso_local i32 @mly_alloc_command(%struct.mly_softc*, %struct.mly_command**) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @mly_start(%struct.mly_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
