; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_process_read_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_process_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.siis_channel = type { i32, %struct.TYPE_10__**, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.ata_res }
%struct.ata_res = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@SIIS_MAX_SLOTS = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error while READ LOG EXT\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Non-queued command error in READ LOG EXT\0A\00", align 1
@M_SIIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @siis_process_read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_process_read_log(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.siis_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ata_res*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.siis_channel* @device_get_softc(i32 %9)
  store %struct.siis_channel* %10, %struct.siis_channel** %5, align 8
  %11 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %12 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %11, i32 0, i32 2
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
  br i1 %24, label %25, label %184

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %184

31:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %180, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %183

36:                                               ; preds = %32
  %37 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %38 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %39, i64 %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %180

46:                                               ; preds = %36
  %47 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %48 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %47, i32 0, i32 1
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
  br label %180

63:                                               ; preds = %46
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 31
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %135

70:                                               ; preds = %63
  %71 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %72 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %73, i64 %75
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store %struct.ata_res* %79, %struct.ata_res** %7, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %84 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %89 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %94 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %99 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %104 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %109 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %114 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 9
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %119 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 10
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %124 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %123, i32 0, i32 8
  store i32 %122, i32* %124, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 12
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %129 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 13
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ata_res*, %struct.ata_res** %7, align 8
  %134 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %133, i32 0, i32 10
  store i32 %132, i32* %134, align 4
  br label %161

135:                                              ; preds = %63
  %136 = load i32, i32* @CAM_STATUS_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %139 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %140, i64 %142
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %137
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %150 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %151 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %152, i64 %154
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %149
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %135, %70
  %162 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %163 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %162, i32 0, i32 1
  %164 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %164, i64 %166
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = call i32 @xpt_done(%struct.TYPE_10__* %168)
  %170 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %171 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %172, i64 %174
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %175, align 8
  %176 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %177 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %161, %62, %45
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %32

183:                                              ; preds = %32
  br label %261

184:                                              ; preds = %25, %2
  %185 = load %union.ccb*, %union.ccb** %4, align 8
  %186 = bitcast %union.ccb* %185 to %struct.TYPE_8__*
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @CAM_STATUS_MASK, align 4
  %190 = and i32 %188, %189
  %191 = load i32, i32* @CAM_REQ_CMP, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @device_printf(i32 %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %206

196:                                              ; preds = %184
  %197 = load i32*, i32** %6, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 128
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @device_printf(i32 %203, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %196
  br label %206

206:                                              ; preds = %205, %193
  store i32 0, i32* %8, align 4
  br label %207

207:                                              ; preds = %257, %206
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %260

211:                                              ; preds = %207
  %212 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %213 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %214, i64 %216
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = icmp ne %struct.TYPE_10__* %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %211
  br label %257

221:                                              ; preds = %211
  %222 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %223 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %222, i32 0, i32 1
  %224 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %223, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %224, i64 %226
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %union.ccb*, %union.ccb** %4, align 8
  %233 = bitcast %union.ccb* %232 to %struct.TYPE_8__*
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %231, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %221
  br label %257

238:                                              ; preds = %221
  %239 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %240 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %239, i32 0, i32 1
  %241 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %241, i64 %243
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = call i32 @xpt_done(%struct.TYPE_10__* %245)
  %247 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %248 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %247, i32 0, i32 1
  %249 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %249, i64 %251
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %252, align 8
  %253 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %254 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %238, %237, %220
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %8, align 4
  br label %207

260:                                              ; preds = %207
  br label %261

261:                                              ; preds = %260, %183
  %262 = load %union.ccb*, %union.ccb** %4, align 8
  %263 = bitcast %union.ccb* %262 to %struct.TYPE_9__*
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* @M_SIIS, align 4
  %267 = call i32 @free(i32* %265, i32 %266)
  %268 = load %union.ccb*, %union.ccb** %4, align 8
  %269 = call i32 @xpt_free_ccb(%union.ccb* %268)
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @xpt_done(%struct.TYPE_10__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
