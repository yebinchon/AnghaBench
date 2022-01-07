; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32*, i32, i32, %struct.TYPE_7__*, i32*, i32, %struct.TYPE_9__*, i64, i32, i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cam_devq = type { i32 }
%struct.TYPE_8__ = type { i32 }

@mpt_scsi_reply_handler = common dso_local global i32 0, align 4
@MPT_HANDLER_REPLY = common dso_local global i32 0, align 4
@scsi_io_handler_id = common dso_local global i32 0, align 4
@mpt_scsi_tmf_reply_handler = common dso_local global i32 0, align 4
@scsi_tmf_handler_id = common dso_local global i32 0, align 4
@MPT_ROLE_TARGET = common dso_local global i32 0, align 4
@mpt_fc_els_reply_handler = common dso_local global i32 0, align 4
@fc_els_handler_id = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@mpt_scsi_tgt_reply_handler = common dso_local global i32 0, align 4
@mpt_sata_pass_reply_handler = common dso_local global i32 0, align 4
@sata_pass_handler_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to allocate dedicated TMF request!\0A\00", align 1
@REQ_STATE_FREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to spawn recovery thread!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to allocate CAM SIMQ!\0A\00", align 1
@mpt_action = common dso_local global i32 0, align 4
@mpt_poll = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"mpt\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to allocate CAM SIM!\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Bus registration Failed!\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to allocate Path!\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Unable to allocate Physical Disk CAM SIM!\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Physical Disk Bus registration Failed!\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Unable to allocate Physical Disk Path!\0A\00", align 1
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"attached cam\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_cam_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_cam_attach(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %9 = call i32 @MPT_LOCK(%struct.mpt_softc* %8)
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %10, i32 0, i32 13
  %12 = call i32 @TAILQ_INIT(i32* %11)
  %13 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %13, i32 0, i32 12
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %18 = call i32 @MPT_MAX_REQUESTS(%struct.mpt_softc* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %21, i32 0, i32 12
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %27 = call i32 @MPT_MAX_REQUESTS(%struct.mpt_softc* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %24, %20 ], [ %27, %25 ]
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @mpt_scsi_reply_handler, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %33 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mpt_register_handler(%struct.mpt_softc* %32, i32 %33, i32 %35, i32* @scsi_io_handler_id)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %41 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %40)
  br label %317

42:                                               ; preds = %28
  %43 = load i32, i32* @mpt_scsi_tmf_reply_handler, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %46 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mpt_register_handler(%struct.mpt_softc* %45, i32 %46, i32 %48, i32* @scsi_tmf_handler_id)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %54 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %53)
  br label %317

55:                                               ; preds = %42
  %56 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %56, i32 0, i32 10
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %55
  %61 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MPT_ROLE_TARGET, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %60
  %68 = load i32, i32* @mpt_fc_els_reply_handler, align 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %71 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mpt_register_handler(%struct.mpt_softc* %70, i32 %71, i32 %73, i32* @fc_els_handler_id)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %79 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %78)
  br label %317

80:                                               ; preds = %67
  %81 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %82 = call i64 @mpt_add_els_buffers(%struct.mpt_softc* %81)
  %83 = load i64, i64* @FALSE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  store i32 %86, i32* %7, align 4
  %87 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %88 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %87)
  br label %317

89:                                               ; preds = %80
  %90 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %90, i32 0, i32 11
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %89, %60, %55
  %98 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %99 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %98, i32 0, i32 10
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %97
  %103 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %104 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MPT_ROLE_TARGET, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %102
  %110 = load i32, i32* @mpt_scsi_tgt_reply_handler, align 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %113 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %114 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %115 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %114, i32 0, i32 9
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @mpt_register_handler(%struct.mpt_softc* %112, i32 %113, i32 %117, i32* %115)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %109
  %122 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %123 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %122)
  br label %317

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %102, %97
  %126 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %127 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %125
  %131 = load i32, i32* @mpt_sata_pass_reply_handler, align 4
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %134 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @mpt_register_handler(%struct.mpt_softc* %133, i32 %134, i32 %136, i32* @sata_pass_handler_id)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %142 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %141)
  br label %317

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %125
  %145 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %146 = load i64, i64* @FALSE, align 8
  %147 = call %struct.TYPE_9__* @mpt_get_request(%struct.mpt_softc* %145, i64 %146)
  %148 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %149 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %148, i32 0, i32 7
  store %struct.TYPE_9__* %147, %struct.TYPE_9__** %149, align 8
  %150 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %151 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %150, i32 0, i32 7
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = icmp eq %struct.TYPE_9__* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %156 = call i32 @mpt_prt(%struct.mpt_softc* %155, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %157 = load i32, i32* @ENOMEM, align 4
  store i32 %157, i32* %7, align 4
  %158 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %159 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %158)
  br label %317

160:                                              ; preds = %144
  %161 = load i32, i32* @REQ_STATE_FREE, align 4
  %162 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %163 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %162, i32 0, i32 7
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i32 %161, i32* %165, align 4
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %6, align 4
  %168 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %169 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %168)
  %170 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %171 = call i64 @mpt_spawn_recovery_thread(%struct.mpt_softc* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %160
  %174 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %175 = call i32 @mpt_prt(%struct.mpt_softc* %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %176 = load i32, i32* @ENOMEM, align 4
  store i32 %176, i32* %7, align 4
  br label %317

177:                                              ; preds = %160
  %178 = load i32, i32* %6, align 4
  %179 = call %struct.cam_devq* @cam_simq_alloc(i32 %178)
  store %struct.cam_devq* %179, %struct.cam_devq** %4, align 8
  %180 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %181 = icmp eq %struct.cam_devq* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %184 = call i32 @mpt_prt(%struct.mpt_softc* %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %185 = load i32, i32* @ENOMEM, align 4
  store i32 %185, i32* %7, align 4
  br label %317

186:                                              ; preds = %177
  %187 = load i32, i32* @mpt_action, align 4
  %188 = load i32, i32* @mpt_poll, align 4
  %189 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %192 = call i8* @mpt_sim_alloc(i32 %187, i32 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.mpt_softc* %189, i32 1, i32 %190, %struct.cam_devq* %191)
  %193 = bitcast i8* %192 to i32*
  %194 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %195 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %194, i32 0, i32 5
  store i32* %193, i32** %195, align 8
  %196 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %197 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %186
  %201 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %202 = call i32 @mpt_prt(%struct.mpt_softc* %201, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %203 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %204 = call i32 @cam_simq_free(%struct.cam_devq* %203)
  %205 = load i32, i32* @ENOMEM, align 4
  store i32 %205, i32* %7, align 4
  br label %317

206:                                              ; preds = %186
  %207 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %208 = call i32 @MPT_LOCK(%struct.mpt_softc* %207)
  %209 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %210 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %213 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @xpt_bus_register(i32* %211, i32 %214, i32 0)
  %216 = load i64, i64* @CAM_SUCCESS, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %206
  %219 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %220 = call i32 @mpt_prt(%struct.mpt_softc* %219, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %221 = load i32, i32* @ENOMEM, align 4
  store i32 %221, i32* %7, align 4
  %222 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %223 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %222)
  br label %317

224:                                              ; preds = %206
  %225 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %226 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %225, i32 0, i32 6
  %227 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %228 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %227, i32 0, i32 5
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @cam_sim_path(i32* %229)
  %231 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %232 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %233 = call i64 @xpt_create_path(i32* %226, i32* null, i32 %230, i32 %231, i32 %232)
  %234 = load i64, i64* @CAM_REQ_CMP, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %224
  %237 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %238 = call i32 @mpt_prt(%struct.mpt_softc* %237, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %239 = load i32, i32* @ENOMEM, align 4
  store i32 %239, i32* %7, align 4
  %240 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %241 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %240)
  br label %317

242:                                              ; preds = %224
  %243 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %244 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %243)
  %245 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %246 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %245, i32 0, i32 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = icmp eq %struct.TYPE_7__* %247, null
  br i1 %248, label %256, label %249

249:                                              ; preds = %242
  %250 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %251 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %250, i32 0, i32 4
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %249, %242
  store i32 0, i32* %2, align 4
  br label %321

257:                                              ; preds = %249
  %258 = load i32, i32* @mpt_action, align 4
  %259 = load i32, i32* @mpt_poll, align 4
  %260 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %261 = load i32, i32* %6, align 4
  %262 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %263 = call i8* @mpt_sim_alloc(i32 %258, i32 %259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.mpt_softc* %260, i32 1, i32 %261, %struct.cam_devq* %262)
  %264 = bitcast i8* %263 to i32*
  %265 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %266 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %265, i32 0, i32 1
  store i32* %264, i32** %266, align 8
  %267 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %268 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = icmp eq i32* %269, null
  br i1 %270, label %271, label %275

271:                                              ; preds = %257
  %272 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %273 = call i32 @mpt_prt(%struct.mpt_softc* %272, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %274 = load i32, i32* @ENOMEM, align 4
  store i32 %274, i32* %7, align 4
  br label %317

275:                                              ; preds = %257
  %276 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %277 = call i32 @MPT_LOCK(%struct.mpt_softc* %276)
  %278 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %279 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %282 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @xpt_bus_register(i32* %280, i32 %283, i32 1)
  %285 = load i64, i64* @CAM_SUCCESS, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %275
  %288 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %289 = call i32 @mpt_prt(%struct.mpt_softc* %288, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %290 = load i32, i32* @ENOMEM, align 4
  store i32 %290, i32* %7, align 4
  %291 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %292 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %291)
  br label %317

293:                                              ; preds = %275
  %294 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %295 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %294, i32 0, i32 2
  %296 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %297 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @cam_sim_path(i32* %298)
  %300 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %301 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %302 = call i64 @xpt_create_path(i32* %295, i32* null, i32 %299, i32 %300, i32 %301)
  %303 = load i64, i64* @CAM_REQ_CMP, align 8
  %304 = icmp ne i64 %302, %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %293
  %306 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %307 = call i32 @mpt_prt(%struct.mpt_softc* %306, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %308 = load i32, i32* @ENOMEM, align 4
  store i32 %308, i32* %7, align 4
  %309 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %310 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %309)
  br label %317

311:                                              ; preds = %293
  %312 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %313 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %312)
  %314 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %315 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %316 = call i32 @mpt_lprt(%struct.mpt_softc* %314, i32 %315, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %321

317:                                              ; preds = %305, %287, %271, %236, %218, %200, %182, %173, %154, %140, %121, %85, %77, %52, %39
  %318 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %319 = call i32 @mpt_cam_detach(%struct.mpt_softc* %318)
  %320 = load i32, i32* %7, align 4
  store i32 %320, i32* %2, align 4
  br label %321

321:                                              ; preds = %317, %311, %256
  %322 = load i32, i32* %2, align 4
  ret i32 %322
}

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @MPT_MAX_REQUESTS(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_register_handler(%struct.mpt_softc*, i32, i32, i32*) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_add_els_buffers(%struct.mpt_softc*) #1

declare dso_local %struct.TYPE_9__* @mpt_get_request(%struct.mpt_softc*, i64) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i64 @mpt_spawn_recovery_thread(%struct.mpt_softc*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i8* @mpt_sim_alloc(i32, i32, i8*, %struct.mpt_softc*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*) #1

declare dso_local i32 @mpt_cam_detach(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
