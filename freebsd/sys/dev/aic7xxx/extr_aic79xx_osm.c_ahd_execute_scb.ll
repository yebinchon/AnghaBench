; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_execute_scb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_execute_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.scb = type { i32, %struct.TYPE_12__*, i32, i8*, i64, %struct.ahd_softc*, %union.ccb* }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.target_data }
%struct.target_data = type { i32, i32 }
%struct.ahd_softc = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.scb** }
%union.ccb = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.ahd_tmode_tstate = type { i32, i32 }

@EFBIG = common dso_local global i32 0, align 4
@CAM_REQ_TOO_BIG = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@XPT_CONT_TARGET_IO = common dso_local global i64 0, align 8
@DPHASE_PENDING = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@P_DATAOUT = common dso_local global i32 0, align 4
@P_DATAIN = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i64 0, align 8
@CAM_DIS_DISCONNECT = common dso_local global i32 0, align 4
@DISCENB = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@SCB_PACKETIZED = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@CAM_NEGOTIATE = common dso_local global i32 0, align 4
@SCB_NEGOTIATE = common dso_local global i32 0, align 4
@SCB_AUTO_NEGOTIATE = common dso_local global i32 0, align 4
@pending_links = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@SCB_TARGET_IMMEDIATE = common dso_local global i32 0, align 4
@RETURN_1 = common dso_local global i32 0, align 4
@CONT_MSG_LOOP_TARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_15__*, i32, i32)* @ahd_execute_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_execute_scb(i8* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scb*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %struct.ahd_softc*, align 8
  %12 = alloca %struct.ahd_initiator_tinfo*, align 8
  %13 = alloca %struct.ahd_tmode_tstate*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.target_data*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.scb*
  store %struct.scb* %20, %struct.scb** %9, align 8
  %21 = load %struct.scb*, %struct.scb** %9, align 8
  %22 = getelementptr inbounds %struct.scb, %struct.scb* %21, i32 0, i32 6
  %23 = load %union.ccb*, %union.ccb** %22, align 8
  store %union.ccb* %23, %union.ccb** %10, align 8
  %24 = load %struct.scb*, %struct.scb** %9, align 8
  %25 = getelementptr inbounds %struct.scb, %struct.scb* %24, i32 0, i32 5
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %25, align 8
  store %struct.ahd_softc* %26, %struct.ahd_softc** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EFBIG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.scb*, %struct.scb** %9, align 8
  %35 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %36 = call i32 @aic_set_transaction_status(%struct.scb* %34, i32 %35)
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.scb*, %struct.scb** %9, align 8
  %39 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %40 = call i32 @aic_set_transaction_status(%struct.scb* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %46 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.scb*, %struct.scb** %9, align 8
  %49 = getelementptr inbounds %struct.scb, %struct.scb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bus_dmamap_unload(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %44, %41
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %54 = load %struct.scb*, %struct.scb** %9, align 8
  %55 = call i32 @ahd_free_scb(%struct.ahd_softc* %53, %struct.scb* %54)
  %56 = load %union.ccb*, %union.ccb** %10, align 8
  %57 = call i32 @xpt_done(%union.ccb* %56)
  br label %352

58:                                               ; preds = %4
  %59 = load %struct.scb*, %struct.scb** %9, align 8
  %60 = getelementptr inbounds %struct.scb, %struct.scb* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %147

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %17, align 4
  %65 = load %struct.scb*, %struct.scb** %9, align 8
  %66 = getelementptr inbounds %struct.scb, %struct.scb* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %15, align 8
  br label %68

68:                                               ; preds = %87, %63
  %69 = load i32, i32* %17, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %73 = load %struct.scb*, %struct.scb** %9, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = call i8* @ahd_sg_setup(%struct.ahd_softc* %72, %struct.scb* %73, i8* %74, i32 %77, i32 %80, i32 %83)
  store i8* %84, i8** %15, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 1
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %6, align 8
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %17, align 4
  br label %68

90:                                               ; preds = %68
  %91 = load %union.ccb*, %union.ccb** %10, align 8
  %92 = bitcast %union.ccb* %91 to %struct.TYPE_13__*
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CAM_DIR_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @CAM_DIR_IN, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  store i32 %100, i32* %16, align 4
  br label %103

101:                                              ; preds = %90
  %102 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %105 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.scb*, %struct.scb** %9, align 8
  %108 = getelementptr inbounds %struct.scb, %struct.scb* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @bus_dmamap_sync(i32 %106, i32 %109, i32 %110)
  %112 = load %union.ccb*, %union.ccb** %10, align 8
  %113 = bitcast %union.ccb* %112 to %struct.TYPE_13__*
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @XPT_CONT_TARGET_IO, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %146

118:                                              ; preds = %103
  %119 = load %struct.scb*, %struct.scb** %9, align 8
  %120 = getelementptr inbounds %struct.scb, %struct.scb* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store %struct.target_data* %123, %struct.target_data** %18, align 8
  %124 = load i32, i32* @DPHASE_PENDING, align 4
  %125 = load %struct.target_data*, %struct.target_data** %18, align 8
  %126 = getelementptr inbounds %struct.target_data, %struct.target_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %union.ccb*, %union.ccb** %10, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_13__*
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CAM_DIR_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @CAM_DIR_OUT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %118
  %138 = load i32, i32* @P_DATAOUT, align 4
  %139 = load %struct.target_data*, %struct.target_data** %18, align 8
  %140 = getelementptr inbounds %struct.target_data, %struct.target_data* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %145

141:                                              ; preds = %118
  %142 = load i32, i32* @P_DATAIN, align 4
  %143 = load %struct.target_data*, %struct.target_data** %18, align 8
  %144 = getelementptr inbounds %struct.target_data, %struct.target_data* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %103
  br label %147

147:                                              ; preds = %146, %58
  %148 = load %struct.scb*, %struct.scb** %9, align 8
  %149 = call i64 @aic_get_transaction_status(%struct.scb* %148)
  %150 = load i64, i64* @CAM_REQ_INPROG, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %147
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %157 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.scb*, %struct.scb** %9, align 8
  %160 = getelementptr inbounds %struct.scb, %struct.scb* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @bus_dmamap_unload(i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %155, %152
  %164 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %165 = load %struct.scb*, %struct.scb** %9, align 8
  %166 = call i32 @ahd_free_scb(%struct.ahd_softc* %164, %struct.scb* %165)
  %167 = load %union.ccb*, %union.ccb** %10, align 8
  %168 = call i32 @xpt_done(%union.ccb* %167)
  br label %352

169:                                              ; preds = %147
  %170 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %171 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %172 = load %struct.scb*, %struct.scb** %9, align 8
  %173 = getelementptr inbounds %struct.scb, %struct.scb* %172, i32 0, i32 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @SCSIID_CHANNEL(%struct.ahd_softc* %171, i32 %176)
  %178 = load %struct.scb*, %struct.scb** %9, align 8
  %179 = getelementptr inbounds %struct.scb, %struct.scb* %178, i32 0, i32 1
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @SCSIID_OUR_ID(i32 %182)
  %184 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %185 = load %struct.scb*, %struct.scb** %9, align 8
  %186 = getelementptr inbounds %struct.scb, %struct.scb* %185, i32 0, i32 1
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @SCSIID_TARGET(%struct.ahd_softc* %184, i32 %189)
  %191 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %170, i32 %177, i32 %183, i32 %190, %struct.ahd_tmode_tstate** %13)
  store %struct.ahd_initiator_tinfo* %191, %struct.ahd_initiator_tinfo** %12, align 8
  %192 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %193 = load %struct.scb*, %struct.scb** %9, align 8
  %194 = call i32 @SCB_GET_TARGET_MASK(%struct.ahd_softc* %192, %struct.scb* %193)
  store i32 %194, i32* %14, align 4
  %195 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %13, align 8
  %196 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %14, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %169
  %202 = load %union.ccb*, %union.ccb** %10, align 8
  %203 = bitcast %union.ccb* %202 to %struct.TYPE_13__*
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @CAM_DIS_DISCONNECT, align 4
  %207 = and i32 %205, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %201
  %210 = load i32, i32* @DISCENB, align 4
  %211 = load %struct.scb*, %struct.scb** %9, align 8
  %212 = getelementptr inbounds %struct.scb, %struct.scb* %211, i32 0, i32 1
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %210
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %209, %201, %169
  %218 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %219 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %247

225:                                              ; preds = %217
  %226 = load i32, i32* @SCB_PACKETIZED, align 4
  %227 = load %struct.scb*, %struct.scb** %9, align 8
  %228 = getelementptr inbounds %struct.scb, %struct.scb* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load %struct.scb*, %struct.scb** %9, align 8
  %232 = getelementptr inbounds %struct.scb, %struct.scb* %231, i32 0, i32 1
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %225
  %238 = load i32, i32* @MK_MESSAGE, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.scb*, %struct.scb** %9, align 8
  %241 = getelementptr inbounds %struct.scb, %struct.scb* %240, i32 0, i32 1
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %244, %239
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %237, %225
  br label %247

247:                                              ; preds = %246, %217
  %248 = load %union.ccb*, %union.ccb** %10, align 8
  %249 = bitcast %union.ccb* %248 to %struct.TYPE_13__*
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @CAM_NEGOTIATE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %286

255:                                              ; preds = %247
  %256 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %257 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %273, label %261

261:                                              ; preds = %255
  %262 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %263 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %261
  %268 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %269 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %286

273:                                              ; preds = %267, %261, %255
  %274 = load i32, i32* @SCB_NEGOTIATE, align 4
  %275 = load %struct.scb*, %struct.scb** %9, align 8
  %276 = getelementptr inbounds %struct.scb, %struct.scb* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  %279 = load i32, i32* @MK_MESSAGE, align 4
  %280 = load %struct.scb*, %struct.scb** %9, align 8
  %281 = getelementptr inbounds %struct.scb, %struct.scb* %280, i32 0, i32 1
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %279
  store i32 %285, i32* %283, align 8
  br label %307

286:                                              ; preds = %267, %247
  %287 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %13, align 8
  %288 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %14, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %306

293:                                              ; preds = %286
  %294 = load i32, i32* @SCB_AUTO_NEGOTIATE, align 4
  %295 = load %struct.scb*, %struct.scb** %9, align 8
  %296 = getelementptr inbounds %struct.scb, %struct.scb* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  %299 = load i32, i32* @MK_MESSAGE, align 4
  %300 = load %struct.scb*, %struct.scb** %9, align 8
  %301 = getelementptr inbounds %struct.scb, %struct.scb* %300, i32 0, i32 1
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %299
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %293, %286
  br label %307

307:                                              ; preds = %306, %273
  %308 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %309 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %308, i32 0, i32 1
  %310 = load %struct.scb*, %struct.scb** %9, align 8
  %311 = load i32, i32* @pending_links, align 4
  %312 = call i32 @LIST_INSERT_HEAD(i32* %309, %struct.scb* %310, i32 %311)
  %313 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %314 = load %union.ccb*, %union.ccb** %10, align 8
  %315 = bitcast %union.ccb* %314 to %struct.TYPE_13__*
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %313
  store i32 %318, i32* %316, align 8
  %319 = load %struct.scb*, %struct.scb** %9, align 8
  %320 = call i32 @aic_scb_timer_start(%struct.scb* %319)
  %321 = load %struct.scb*, %struct.scb** %9, align 8
  %322 = getelementptr inbounds %struct.scb, %struct.scb* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @SCB_TARGET_IMMEDIATE, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %348

327:                                              ; preds = %307
  %328 = load %struct.scb*, %struct.scb** %9, align 8
  %329 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %330 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 0
  %332 = load %struct.scb**, %struct.scb*** %331, align 8
  %333 = load %struct.scb*, %struct.scb** %9, align 8
  %334 = call i64 @SCB_GET_TAG(%struct.scb* %333)
  %335 = getelementptr inbounds %struct.scb*, %struct.scb** %332, i64 %334
  store %struct.scb* %328, %struct.scb** %335, align 8
  %336 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %337 = call i32 @ahd_pause(%struct.ahd_softc* %336)
  %338 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %339 = load %struct.scb*, %struct.scb** %9, align 8
  %340 = call i64 @SCB_GET_TAG(%struct.scb* %339)
  %341 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %338, i64 %340)
  %342 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %343 = load i32, i32* @RETURN_1, align 4
  %344 = load i32, i32* @CONT_MSG_LOOP_TARG, align 4
  %345 = call i32 @ahd_outb(%struct.ahd_softc* %342, i32 %343, i32 %344)
  %346 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %347 = call i32 @ahd_unpause(%struct.ahd_softc* %346)
  br label %352

348:                                              ; preds = %307
  %349 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  %350 = load %struct.scb*, %struct.scb** %9, align 8
  %351 = call i32 @ahd_queue_scb(%struct.ahd_softc* %349, %struct.scb* %350)
  br label %352

352:                                              ; preds = %52, %163, %348, %327
  ret void
}

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @ahd_free_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i8* @ahd_sg_setup(%struct.ahd_softc*, %struct.scb*, i8*, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @aic_get_transaction_status(%struct.scb*) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @SCSIID_CHANNEL(%struct.ahd_softc*, i32) #1

declare dso_local i32 @SCSIID_OUR_ID(i32) #1

declare dso_local i32 @SCSIID_TARGET(%struct.ahd_softc*, i32) #1

declare dso_local i32 @SCB_GET_TARGET_MASK(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.scb*, i32) #1

declare dso_local i32 @aic_scb_timer_start(%struct.scb*) #1

declare dso_local i64 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_queue_scb(%struct.ahd_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
