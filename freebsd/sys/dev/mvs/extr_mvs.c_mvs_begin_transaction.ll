; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_begin_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_begin_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.mvs_channel = type { i32, i32, i32, i32*, i64, i64, i64, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__*, i32, i32*, i32, i32*, i32, %struct.mvs_slot* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.mvs_slot = type { i32, i32, %struct.TYPE_16__, i32, %union.ccb* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32* }

@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@MVS_Q_GENIIE = common dso_local global i32 0, align 4
@MVS_EDMA_NCQ = common dso_local global i32 0, align 4
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@MVS_EDMA_ON = common dso_local global i32 0, align 4
@MVS_EDMA_OFF = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@ATA_DMA = common dso_local global i64 0, align 8
@MVS_Q_SOC = common dso_local global i32 0, align 4
@MVS_SLOT_LOADING = common dso_local global i32 0, align 4
@mvs_dmasetprd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @mvs_begin_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_begin_transaction(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mvs_channel*, align 8
  %6 = alloca %struct.mvs_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.mvs_channel* @device_get_softc(i32 %10)
  store %struct.mvs_channel* %11, %struct.mvs_channel** %5, align 8
  %12 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %13 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @mvs_ch_pm_wake(i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %union.ccb*, %union.ccb** %4, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_14__*
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XPT_ATA_IO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_10__*
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = load %union.ccb*, %union.ccb** %4, align 8
  %38 = call i32 @mvs_softreset(i32 %36, %union.ccb* %37)
  br label %369

39:                                               ; preds = %26, %19
  %40 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %41 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, -1
  %44 = call i32 @ffs(i32 %43)
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = bitcast %union.ccb* %46 to %struct.TYPE_14__*
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XPT_ATA_IO, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %39
  %53 = load %union.ccb*, %union.ccb** %4, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_10__*
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %52
  %62 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %63 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MVS_Q_GENIIE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %70 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load %union.ccb*, %union.ccb** %4, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_14__*
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %77, -1
  %79 = call i32 @ffs(i32 %78)
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %83

81:                                               ; preds = %61
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %68
  br label %85

84:                                               ; preds = %52, %39
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %83
  %86 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %87 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %86, i32 0, i32 16
  %88 = load %struct.mvs_slot*, %struct.mvs_slot** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %88, i64 %90
  store %struct.mvs_slot* %91, %struct.mvs_slot** %6, align 8
  %92 = load %union.ccb*, %union.ccb** %4, align 8
  %93 = load %struct.mvs_slot*, %struct.mvs_slot** %6, align 8
  %94 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %93, i32 0, i32 4
  store %union.ccb* %92, %union.ccb** %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.mvs_slot*, %struct.mvs_slot** %6, align 8
  %97 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %99 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %85
  %103 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %104 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 3
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %109 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %108, i32 0, i32 15
  %110 = call i32 @callout_stop(i32* %109)
  br label %111

111:                                              ; preds = %107, %102, %85
  %112 = load %struct.mvs_slot*, %struct.mvs_slot** %6, align 8
  %113 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 1, %114
  %116 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %117 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %121 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %125 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %124, i32 0, i32 14
  %126 = load i32*, i32** %125, align 8
  %127 = load %union.ccb*, %union.ccb** %4, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_14__*
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %union.ccb*, %union.ccb** %4, align 8
  %135 = bitcast %union.ccb* %134 to %struct.TYPE_14__*
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @XPT_ATA_IO, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %234

140:                                              ; preds = %111
  %141 = load %union.ccb*, %union.ccb** %4, align 8
  %142 = bitcast %union.ccb* %141 to %struct.TYPE_10__*
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %187

149:                                              ; preds = %140
  %150 = load %struct.mvs_slot*, %struct.mvs_slot** %6, align 8
  %151 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = shl i32 1, %152
  %154 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %155 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load %union.ccb*, %union.ccb** %4, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_14__*
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %153
  store i32 %163, i32* %161, align 4
  %164 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %165 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %164, i32 0, i32 13
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  %168 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %169 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %168, i32 0, i32 12
  %170 = load i32*, i32** %169, align 8
  %171 = load %union.ccb*, %union.ccb** %4, align 8
  %172 = bitcast %union.ccb* %171 to %struct.TYPE_14__*
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %union.ccb*, %union.ccb** %4, align 8
  %179 = bitcast %union.ccb* %178 to %struct.TYPE_14__*
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %183 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %182, i32 0, i32 5
  store i64 %181, i64* %183, align 8
  %184 = load i32, i32* %3, align 4
  %185 = load i32, i32* @MVS_EDMA_NCQ, align 4
  %186 = call i32 @mvs_set_edma_mode(i32 %184, i32 %185)
  br label %213

187:                                              ; preds = %140
  %188 = load %union.ccb*, %union.ccb** %4, align 8
  %189 = bitcast %union.ccb* %188 to %struct.TYPE_10__*
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @CAM_ATAIO_DMA, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %187
  %197 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %198 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %197, i32 0, i32 11
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  %201 = load i32, i32* %3, align 4
  %202 = load i32, i32* @MVS_EDMA_ON, align 4
  %203 = call i32 @mvs_set_edma_mode(i32 %201, i32 %202)
  br label %212

204:                                              ; preds = %187
  %205 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %206 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %206, align 8
  %209 = load i32, i32* %3, align 4
  %210 = load i32, i32* @MVS_EDMA_OFF, align 4
  %211 = call i32 @mvs_set_edma_mode(i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %204, %196
  br label %213

213:                                              ; preds = %212, %149
  %214 = load %union.ccb*, %union.ccb** %4, align 8
  %215 = bitcast %union.ccb* %214 to %struct.TYPE_10__*
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %220 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %218, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %213
  %225 = load %struct.mvs_slot*, %struct.mvs_slot** %6, align 8
  %226 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = shl i32 1, %227
  %229 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %230 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %224, %213
  br label %340

234:                                              ; preds = %111
  %235 = load %union.ccb*, %union.ccb** %4, align 8
  %236 = bitcast %union.ccb* %235 to %struct.TYPE_14__*
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @CAM_CDB_POINTER, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %234
  %243 = load %union.ccb*, %union.ccb** %4, align 8
  %244 = bitcast %union.ccb* %243 to %struct.TYPE_12__*
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  br label %254

248:                                              ; preds = %234
  %249 = load %union.ccb*, %union.ccb** %4, align 8
  %250 = bitcast %union.ccb* %249 to %struct.TYPE_12__*
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  br label %254

254:                                              ; preds = %248, %242
  %255 = phi i32* [ %247, %242 ], [ %253, %248 ]
  store i32* %255, i32** %9, align 8
  %256 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %257 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %256, i32 0, i32 6
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %257, align 8
  %260 = load %union.ccb*, %union.ccb** %4, align 8
  %261 = bitcast %union.ccb* %260 to %struct.TYPE_14__*
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @CAM_DIR_MASK, align 4
  %265 = and i32 %263, %264
  %266 = load i32, i32* @CAM_DIR_NONE, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %336

268:                                              ; preds = %254
  %269 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %270 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %269, i32 0, i32 10
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = load %union.ccb*, %union.ccb** %4, align 8
  %273 = bitcast %union.ccb* %272 to %struct.TYPE_14__*
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @ATA_DMA, align 8
  %280 = icmp sge i64 %278, %279
  br i1 %280, label %281, label %336

281:                                              ; preds = %268
  %282 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %283 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @MVS_Q_SOC, align 4
  %286 = and i32 %284, %285
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %336

288:                                              ; preds = %281
  %289 = load i32*, i32** %9, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 8
  br i1 %292, label %333, label %293

293:                                              ; preds = %288
  %294 = load i32*, i32** %9, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, 10
  br i1 %297, label %333, label %298

298:                                              ; preds = %293
  %299 = load i32*, i32** %9, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 40
  br i1 %302, label %333, label %303

303:                                              ; preds = %298
  %304 = load i32*, i32** %9, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 42
  br i1 %307, label %333, label %308

308:                                              ; preds = %303
  %309 = load i32*, i32** %9, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %311, 136
  br i1 %312, label %333, label %313

313:                                              ; preds = %308
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 138
  br i1 %317, label %333, label %318

318:                                              ; preds = %313
  %319 = load i32*, i32** %9, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 0
  %321 = load i32, i32* %320, align 4
  %322 = icmp eq i32 %321, 168
  br i1 %322, label %333, label %323

323:                                              ; preds = %318
  %324 = load i32*, i32** %9, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %326, 170
  br i1 %327, label %333, label %328

328:                                              ; preds = %323
  %329 = load i32*, i32** %9, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 0
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 190
  br i1 %332, label %333, label %336

333:                                              ; preds = %328, %323, %318, %313, %308, %303, %298, %293, %288
  %334 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %335 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %334, i32 0, i32 8
  store i32 1, i32* %335, align 4
  br label %336

336:                                              ; preds = %333, %328, %281, %268, %254
  %337 = load i32, i32* %3, align 4
  %338 = load i32, i32* @MVS_EDMA_OFF, align 4
  %339 = call i32 @mvs_set_edma_mode(i32 %337, i32 %338)
  br label %340

340:                                              ; preds = %336, %233
  %341 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %342 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %341, i32 0, i32 6
  %343 = load i64, i64* %342, align 8
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %350, label %345

345:                                              ; preds = %340
  %346 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %347 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %346, i32 0, i32 8
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %366

350:                                              ; preds = %345, %340
  %351 = load i32, i32* @MVS_SLOT_LOADING, align 4
  %352 = load %struct.mvs_slot*, %struct.mvs_slot** %6, align 8
  %353 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %352, i32 0, i32 3
  store i32 %351, i32* %353, align 4
  %354 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %355 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %354, i32 0, i32 9
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.mvs_slot*, %struct.mvs_slot** %6, align 8
  %359 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load %union.ccb*, %union.ccb** %4, align 8
  %363 = load i32, i32* @mvs_dmasetprd, align 4
  %364 = load %struct.mvs_slot*, %struct.mvs_slot** %6, align 8
  %365 = call i32 @bus_dmamap_load_ccb(i32 %357, i32 %361, %union.ccb* %362, i32 %363, %struct.mvs_slot* %364, i32 0)
  br label %369

366:                                              ; preds = %345
  %367 = load %struct.mvs_slot*, %struct.mvs_slot** %6, align 8
  %368 = call i32 @mvs_legacy_execute_transaction(%struct.mvs_slot* %367)
  br label %369

369:                                              ; preds = %35, %366, %350
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @mvs_ch_pm_wake(i32) #1

declare dso_local i32 @mvs_softreset(i32, %union.ccb*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mvs_set_edma_mode(i32, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.mvs_slot*, i32) #1

declare dso_local i32 @mvs_legacy_execute_transaction(%struct.mvs_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
