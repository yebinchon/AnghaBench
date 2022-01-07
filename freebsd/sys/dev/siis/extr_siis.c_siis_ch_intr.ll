; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_ch_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_ch_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { i32, i32, i32*, %struct.TYPE_8__*, i32, i32, %union.ccb*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIIS_P_SS = common dso_local global i32 0, align 4
@SIIS_MAX_SLOTS = common dso_local global i32 0, align 4
@SIIS_ERR_NONE = common dso_local global i32 0, align 4
@SIIS_P_SS_ATTN = common dso_local global i32 0, align 4
@SIIS_P_IS = common dso_local global i32 0, align 4
@SIIS_P_IX_COMMCOMP = common dso_local global i32 0, align 4
@SIIS_P_IX_PHYRDYCHG = common dso_local global i32 0, align 4
@SIIS_P_IX_SDBN = common dso_local global i32 0, align 4
@SIIS_P_IX_COMMERR = common dso_local global i32 0, align 4
@SIIS_P_CMDERR = common dso_local global i32 0, align 4
@SIIS_P_CTX = common dso_local global i32 0, align 4
@SIIS_P_CTX_SLOT = common dso_local global i32 0, align 4
@SIIS_P_CTX_SLOT_SHIFT = common dso_local global i32 0, align 4
@SIIS_P_CTX_PMP = common dso_local global i32 0, align 4
@SIIS_P_CTX_PMP_SHIFT = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@SIIS_P_CMDERR_DEV = common dso_local global i32 0, align 4
@SIIS_P_CMDERR_SDB = common dso_local global i32 0, align 4
@SIIS_P_CMDERR_DATAFIS = common dso_local global i32 0, align 4
@SIIS_ERR_TFE = common dso_local global i32 0, align 4
@SIIS_ERR_INNOCENT = common dso_local global i32 0, align 4
@SIIS_ERR_NCQ = common dso_local global i32 0, align 4
@SIIS_P_CTLSET = common dso_local global i32 0, align 4
@SIIS_P_CTL_RESUME = common dso_local global i32 0, align 4
@SIIS_P_CMDERR_SENDFIS = common dso_local global i32 0, align 4
@SIIS_P_CMDERR_INCSTATE = common dso_local global i32 0, align 4
@SIIS_P_CMDERR_PPE = common dso_local global i32 0, align 4
@SIIS_P_CMDERR_SERVICE = common dso_local global i32 0, align 4
@SIIS_ERR_SATA = common dso_local global i32 0, align 4
@SIIS_ERR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @siis_ch_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_ch_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.siis_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.ccb*, align 8
  store i8* %0, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.siis_channel* @device_get_softc(i32 %19)
  store %struct.siis_channel* %20, %struct.siis_channel** %4, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %22 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %21, i32 0, i32 9
  %23 = load i32, i32* @MA_OWNED, align 4
  %24 = call i32 @mtx_assert(i32* %22, i32 %23)
  %25 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %26 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SIIS_P_SS, align 4
  %29 = call i32 @ATA_INL(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %31 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %56, %1
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %12, align 4
  %43 = ashr i32 %41, %42
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %48 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = load i32, i32* @SIIS_ERR_NONE, align 4
  %54 = call i32 @siis_end_transaction(%struct.TYPE_8__* %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %40
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %36

59:                                               ; preds = %36
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SIIS_P_SS_ATTN, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %334

65:                                               ; preds = %59
  %66 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %67 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SIIS_P_IS, align 4
  %70 = call i32 @ATA_INL(i32 %68, i32 %69)
  %71 = load i32, i32* @SIIS_P_IX_COMMCOMP, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 65535, %72
  %74 = and i32 %70, %73
  store i32 %74, i32* %5, align 4
  %75 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %76 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SIIS_P_IS, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ATA_OUTL(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SIIS_P_IX_PHYRDYCHG, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %65
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @siis_phy_check_events(i32 %86)
  br label %88

88:                                               ; preds = %85, %65
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SIIS_P_IX_SDBN, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @siis_notify_events(i32 %94)
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SIIS_P_IX_COMMERR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %334

101:                                              ; preds = %96
  %102 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %103 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SIIS_P_CMDERR, align 4
  %106 = call i32 @ATA_INL(i32 %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %108 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SIIS_P_CTX, align 4
  %111 = call i32 @ATA_INL(i32 %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @SIIS_P_CTX_SLOT, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @SIIS_P_CTX_SLOT_SHIFT, align 4
  %116 = ashr i32 %114, %115
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @SIIS_P_CTX_PMP, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @SIIS_P_CTX_PMP_SHIFT, align 4
  %121 = ashr i32 %119, %120
  store i32 %121, i32* %14, align 4
  %122 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %123 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %10, align 4
  %127 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %128 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %101
  %132 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %133 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %131
  %137 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %138 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %141 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @xpt_freeze_simq(i32 %139, i32 %142)
  %144 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %145 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %136, %131, %101
  %147 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %148 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %147, i32 0, i32 6
  %149 = load %union.ccb*, %union.ccb** %148, align 8
  %150 = icmp ne %union.ccb* %149, null
  br i1 %150, label %151, label %194

151:                                              ; preds = %146
  %152 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %153 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %152, i32 0, i32 6
  %154 = load %union.ccb*, %union.ccb** %153, align 8
  store %union.ccb* %154, %union.ccb** %16, align 8
  %155 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %156 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %155, i32 0, i32 6
  store %union.ccb* null, %union.ccb** %156, align 8
  %157 = load i32, i32* @CAM_STATUS_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = load %union.ccb*, %union.ccb** %16, align 8
  %160 = bitcast %union.ccb* %159 to %struct.TYPE_5__*
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %158
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %165 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %166 = or i32 %164, %165
  %167 = load %union.ccb*, %union.ccb** %16, align 8
  %168 = bitcast %union.ccb* %167 to %struct.TYPE_5__*
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 4
  %172 = load %union.ccb*, %union.ccb** %16, align 8
  %173 = bitcast %union.ccb* %172 to %struct.TYPE_5__*
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %151
  %180 = load %union.ccb*, %union.ccb** %16, align 8
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_5__*
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @xpt_freeze_devq(i32 %183, i32 1)
  %185 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %186 = load %union.ccb*, %union.ccb** %16, align 8
  %187 = bitcast %union.ccb* %186 to %struct.TYPE_5__*
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %185
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %179, %151
  %192 = load %union.ccb*, %union.ccb** %16, align 8
  %193 = call i32 @xpt_done(%union.ccb* %192)
  br label %194

194:                                              ; preds = %191, %146
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @SIIS_P_CMDERR_DEV, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @SIIS_P_CMDERR_SDB, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @SIIS_P_CMDERR_DATAFIS, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %286

206:                                              ; preds = %202, %198, %194
  %207 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %208 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %214

214:                                              ; preds = %265, %206
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %268

218:                                              ; preds = %214
  %219 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %220 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = ashr i32 %221, %222
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %265

227:                                              ; preds = %218
  %228 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %229 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %228, i32 0, i32 3
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %227
  br label %265

242:                                              ; preds = %227
  %243 = load i32, i32* %15, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %242
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* %13, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i32, i32* @SIIS_ERR_TFE, align 4
  store i32 %250, i32* %11, align 4
  br label %253

251:                                              ; preds = %245
  %252 = load i32, i32* @SIIS_ERR_INNOCENT, align 4
  store i32 %252, i32* %11, align 4
  br label %253

253:                                              ; preds = %251, %249
  br label %256

254:                                              ; preds = %242
  %255 = load i32, i32* @SIIS_ERR_NCQ, align 4
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %254, %253
  %257 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %258 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %257, i32 0, i32 3
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = load i32, i32* %12, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i64 %261
  %263 = load i32, i32* %11, align 4
  %264 = call i32 @siis_end_transaction(%struct.TYPE_8__* %262, i32 %263)
  br label %265

265:                                              ; preds = %256, %241, %226
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %12, align 4
  br label %214

268:                                              ; preds = %214
  %269 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %270 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %268
  %274 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %275 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %273
  %279 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %280 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @SIIS_P_CTLSET, align 4
  %283 = load i32, i32* @SIIS_P_CTL_RESUME, align 4
  %284 = call i32 @ATA_OUTL(i32 %281, i32 %282, i32 %283)
  br label %285

285:                                              ; preds = %278, %273, %268
  br label %333

286:                                              ; preds = %202
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @SIIS_P_CMDERR_SENDFIS, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %302, label %290

290:                                              ; preds = %286
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @SIIS_P_CMDERR_INCSTATE, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %302, label %294

294:                                              ; preds = %290
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* @SIIS_P_CMDERR_PPE, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %302, label %298

298:                                              ; preds = %294
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @SIIS_P_CMDERR_SERVICE, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %298, %294, %290, %286
  %303 = load i32, i32* @SIIS_ERR_SATA, align 4
  store i32 %303, i32* %11, align 4
  br label %306

304:                                              ; preds = %298
  %305 = load i32, i32* @SIIS_ERR_INVALID, align 4
  store i32 %305, i32* %11, align 4
  br label %306

306:                                              ; preds = %304, %302
  store i32 0, i32* %12, align 4
  br label %307

307:                                              ; preds = %329, %306
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %332

311:                                              ; preds = %307
  %312 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %313 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %12, align 4
  %316 = ashr i32 %314, %315
  %317 = and i32 %316, 1
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %311
  br label %329

320:                                              ; preds = %311
  %321 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %322 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %321, i32 0, i32 3
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %322, align 8
  %324 = load i32, i32* %12, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i64 %325
  %327 = load i32, i32* %11, align 4
  %328 = call i32 @siis_end_transaction(%struct.TYPE_8__* %326, i32 %327)
  br label %329

329:                                              ; preds = %320, %319
  %330 = load i32, i32* %12, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %12, align 4
  br label %307

332:                                              ; preds = %307
  br label %333

333:                                              ; preds = %332, %285
  br label %334

334:                                              ; preds = %64, %333, %96
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @siis_end_transaction(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @siis_phy_check_events(i32) #1

declare dso_local i32 @siis_notify_events(i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
