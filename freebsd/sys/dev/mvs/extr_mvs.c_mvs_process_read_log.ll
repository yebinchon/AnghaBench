; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_process_read_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_process_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.mvs_channel = type { i32*, i32, i32, %struct.TYPE_10__**, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.ata_res }
%struct.ata_res = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error while READ LOG EXT\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Non-queued command error in READ LOG EXT\0A\00", align 1
@M_MVS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @mvs_process_read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_process_read_log(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mvs_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ata_res*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.mvs_channel* @device_get_softc(i32 %9)
  store %struct.mvs_channel* %10, %struct.mvs_channel** %5, align 8
  %11 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %12 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %union.ccb*, %union.ccb** %4, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_9__*
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_8__*
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CAM_STATUS_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @CAM_REQ_CMP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %190

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %190

31:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %186, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %189

36:                                               ; preds = %32
  %37 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %38 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %39, i64 %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %186

46:                                               ; preds = %36
  %47 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %48 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %47, i32 0, i32 3
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %186

63:                                               ; preds = %46
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 31
  %68 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %69 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %67, %74
  br i1 %75, label %76, label %141

76:                                               ; preds = %63
  %77 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %78 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %79, i64 %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store %struct.ata_res* %85, %struct.ata_res** %7, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %90 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %95 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %100 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %105 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %110 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 7
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %115 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %120 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 9
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %125 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 10
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %130 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 12
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %135 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 13
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %140 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %139, i32 0, i32 10
  store i32 %138, i32* %140, align 4
  br label %167

141:                                              ; preds = %63
  %142 = load i32, i32* @CAM_STATUS_MASK, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %145 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %144, i32 0, i32 3
  %146 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %146, i64 %148
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %143
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %156 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %157 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %156, i32 0, i32 3
  %158 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %158, i64 %160
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %155
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %141, %76
  %168 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %169 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %168, i32 0, i32 3
  %170 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %170, i64 %172
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = call i32 @xpt_done(%struct.TYPE_10__* %174)
  %176 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %177 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %176, i32 0, i32 3
  %178 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %178, i64 %180
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %181, align 8
  %182 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %183 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %167, %62, %45
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %32

189:                                              ; preds = %32
  br label %267

190:                                              ; preds = %25, %2
  %191 = load %union.ccb*, %union.ccb** %4, align 8
  %192 = bitcast %union.ccb* %191 to %struct.TYPE_8__*
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CAM_STATUS_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* @CAM_REQ_CMP, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @device_printf(i32 %200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %212

202:                                              ; preds = %190
  %203 = load i32*, i32** %6, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 128
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = load i32, i32* %3, align 4
  %210 = call i32 @device_printf(i32 %209, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %211

211:                                              ; preds = %208, %202
  br label %212

212:                                              ; preds = %211, %199
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %263, %212
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %266

217:                                              ; preds = %213
  %218 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %219 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %218, i32 0, i32 3
  %220 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %220, i64 %222
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = icmp ne %struct.TYPE_10__* %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %217
  br label %263

227:                                              ; preds = %217
  %228 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %229 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %228, i32 0, i32 3
  %230 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %230, i64 %232
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %union.ccb*, %union.ccb** %4, align 8
  %239 = bitcast %union.ccb* %238 to %struct.TYPE_8__*
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %237, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %227
  br label %263

244:                                              ; preds = %227
  %245 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %246 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %245, i32 0, i32 3
  %247 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %247, i64 %249
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = call i32 @xpt_done(%struct.TYPE_10__* %251)
  %253 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %254 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %253, i32 0, i32 3
  %255 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %255, i64 %257
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %258, align 8
  %259 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %260 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %244, %243, %226
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %213

266:                                              ; preds = %213
  br label %267

267:                                              ; preds = %266, %189
  %268 = load %union.ccb*, %union.ccb** %4, align 8
  %269 = bitcast %union.ccb* %268 to %struct.TYPE_9__*
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* @M_MVS, align 4
  %273 = call i32 @free(i32* %271, i32 %272)
  %274 = load %union.ccb*, %union.ccb** %4, align 8
  %275 = call i32 @xpt_free_ccb(%union.ccb* %274)
  %276 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %277 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @TRUE, align 4
  %280 = call i32 @xpt_release_simq(i32 %278, i32 %279)
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @xpt_done(%struct.TYPE_10__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
