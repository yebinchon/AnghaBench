; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cam_end_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cam_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32, i64, i64, %struct.TYPE_9__, i32, %union.ccb* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, %struct.ata_res, %struct.TYPE_7__ }
%struct.ata_res = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ata_channel = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@ATA_R_TIMEOUT = common dso_local global i32 0, align 4
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATA_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i64 0, align 8
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIS_AUTOSENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ata_request*)* @ata_cam_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_cam_end_transaction(i32 %0, %struct.ata_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_request*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_res*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ata_request* %1, %struct.ata_request** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ata_channel* @device_get_softc(i32 %9)
  store %struct.ata_channel* %10, %struct.ata_channel** %5, align 8
  %11 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %12 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %11, i32 0, i32 6
  %13 = load %union.ccb*, %union.ccb** %12, align 8
  store %union.ccb* %13, %union.ccb** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %21 = call i32 @ata_cam_process_sense(i32 %19, %struct.ata_request* %20)
  br label %331

22:                                               ; preds = %2
  %23 = load i32, i32* @CAM_STATUS_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load %union.ccb*, %union.ccb** %6, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_12__*
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %24
  store i32 %29, i32* %27, align 8
  %30 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %31 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATA_R_TIMEOUT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %22
  %37 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %38 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @xpt_freeze_simq(i32 %39, i32 1)
  %41 = load i32, i32* @CAM_STATUS_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load %union.ccb*, %union.ccb** %6, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_12__*
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %42
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %49 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %50 = or i32 %48, %49
  %51 = load %union.ccb*, %union.ccb** %6, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_12__*
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 8
  store i32 1, i32* %7, align 4
  br label %124

56:                                               ; preds = %22
  %57 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %58 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ATA_S_ERROR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %56
  %64 = load %union.ccb*, %union.ccb** %6, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_12__*
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XPT_ATA_IO, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32, i32* @CAM_ATA_STATUS_ERROR, align 4
  %72 = load %union.ccb*, %union.ccb** %6, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_12__*
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  br label %88

77:                                               ; preds = %63
  %78 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %79 = load %union.ccb*, %union.ccb** %6, align 8
  %80 = bitcast %union.ccb* %79 to %struct.TYPE_12__*
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %85 = load %union.ccb*, %union.ccb** %6, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_11__*
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  br label %88

88:                                               ; preds = %77, %70
  br label %123

89:                                               ; preds = %56
  %90 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %91 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ERESTART, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %97 = load %union.ccb*, %union.ccb** %6, align 8
  %98 = bitcast %union.ccb* %97 to %struct.TYPE_12__*
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 8
  br label %122

102:                                              ; preds = %89
  %103 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %104 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %109 = load %union.ccb*, %union.ccb** %6, align 8
  %110 = bitcast %union.ccb* %109 to %struct.TYPE_12__*
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  br label %121

114:                                              ; preds = %102
  %115 = load i32, i32* @CAM_REQ_CMP, align 4
  %116 = load %union.ccb*, %union.ccb** %6, align 8
  %117 = bitcast %union.ccb* %116 to %struct.TYPE_12__*
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %114, %107
  br label %122

122:                                              ; preds = %121, %95
  br label %123

123:                                              ; preds = %122, %88
  br label %124

124:                                              ; preds = %123, %36
  %125 = load %union.ccb*, %union.ccb** %6, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_12__*
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CAM_STATUS_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @CAM_REQ_CMP, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %153

133:                                              ; preds = %124
  %134 = load %union.ccb*, %union.ccb** %6, align 8
  %135 = bitcast %union.ccb* %134 to %struct.TYPE_12__*
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %133
  %142 = load %union.ccb*, %union.ccb** %6, align 8
  %143 = bitcast %union.ccb* %142 to %struct.TYPE_12__*
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @xpt_freeze_devq(i32 %145, i32 1)
  %147 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %148 = load %union.ccb*, %union.ccb** %6, align 8
  %149 = bitcast %union.ccb* %148 to %struct.TYPE_12__*
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %141, %133, %124
  %154 = load %union.ccb*, %union.ccb** %6, align 8
  %155 = bitcast %union.ccb* %154 to %struct.TYPE_12__*
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @XPT_ATA_IO, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %260

160:                                              ; preds = %153
  %161 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %162 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ATA_S_ERROR, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %160
  %168 = load %union.ccb*, %union.ccb** %6, align 8
  %169 = bitcast %union.ccb* %168 to %struct.TYPE_10__*
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %260

176:                                              ; preds = %167, %160
  %177 = load %union.ccb*, %union.ccb** %6, align 8
  %178 = bitcast %union.ccb* %177 to %struct.TYPE_10__*
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  store %struct.ata_res* %179, %struct.ata_res** %8, align 8
  %180 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %181 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %184 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  %185 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %186 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %189 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %188, i32 0, i32 10
  store i32 %187, i32* %189, align 4
  %190 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %191 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %196 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %198 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = ashr i32 %201, 8
  %203 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %204 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 4
  %205 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %206 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = ashr i32 %209, 16
  %211 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %212 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %214 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = ashr i32 %217, 24
  %219 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %220 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  %221 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %222 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = ashr i32 %225, 24
  %227 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %228 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  %229 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %230 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = ashr i32 %233, 32
  %235 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %236 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %235, i32 0, i32 6
  store i32 %234, i32* %236, align 4
  %237 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %238 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = ashr i32 %241, 40
  %243 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %244 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %243, i32 0, i32 7
  store i32 %242, i32* %244, align 4
  %245 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %246 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %251 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %250, i32 0, i32 8
  store i32 %249, i32* %251, align 4
  %252 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %253 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 8
  %258 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %259 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %258, i32 0, i32 9
  store i32 %257, i32* %259, align 4
  br label %260

260:                                              ; preds = %176, %167, %153
  %261 = load %union.ccb*, %union.ccb** %6, align 8
  %262 = bitcast %union.ccb* %261 to %struct.TYPE_12__*
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @CAM_DIR_MASK, align 4
  %266 = and i32 %264, %265
  %267 = load i32, i32* @CAM_DIR_NONE, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %301

269:                                              ; preds = %260
  %270 = load %union.ccb*, %union.ccb** %6, align 8
  %271 = bitcast %union.ccb* %270 to %struct.TYPE_12__*
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @XPT_ATA_IO, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %269
  %277 = load %union.ccb*, %union.ccb** %6, align 8
  %278 = bitcast %union.ccb* %277 to %struct.TYPE_10__*
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %282 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = sub nsw i64 %280, %283
  %285 = load %union.ccb*, %union.ccb** %6, align 8
  %286 = bitcast %union.ccb* %285 to %struct.TYPE_10__*
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  store i64 %284, i64* %287, align 8
  br label %300

288:                                              ; preds = %269
  %289 = load %union.ccb*, %union.ccb** %6, align 8
  %290 = bitcast %union.ccb* %289 to %struct.TYPE_11__*
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %294 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = sub nsw i64 %292, %295
  %297 = load %union.ccb*, %union.ccb** %6, align 8
  %298 = bitcast %union.ccb* %297 to %struct.TYPE_11__*
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 1
  store i64 %296, i64* %299, align 8
  br label %300

300:                                              ; preds = %288, %276
  br label %301

301:                                              ; preds = %300, %260
  %302 = load %union.ccb*, %union.ccb** %6, align 8
  %303 = bitcast %union.ccb* %302 to %struct.TYPE_12__*
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @CAM_STATUS_MASK, align 4
  %307 = and i32 %305, %306
  %308 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %322

310:                                              ; preds = %301
  %311 = load %union.ccb*, %union.ccb** %6, align 8
  %312 = bitcast %union.ccb* %311 to %struct.TYPE_12__*
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @CAM_DIS_AUTOSENSE, align 4
  %316 = and i32 %314, %315
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %310
  %319 = load i32, i32* %3, align 4
  %320 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %321 = call i32 @ata_cam_request_sense(i32 %319, %struct.ata_request* %320)
  br label %325

322:                                              ; preds = %310, %301
  %323 = load %union.ccb*, %union.ccb** %6, align 8
  %324 = call i32 @xpt_done(%union.ccb* %323)
  br label %325

325:                                              ; preds = %322, %318
  %326 = load i32, i32* %7, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load i32, i32* %3, align 4
  %330 = call i32 @ata_reinit(i32 %329)
  br label %331

331:                                              ; preds = %18, %328, %325
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ata_cam_process_sense(i32, %struct.ata_request*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @ata_cam_request_sense(i32, %struct.ata_request*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @ata_reinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
