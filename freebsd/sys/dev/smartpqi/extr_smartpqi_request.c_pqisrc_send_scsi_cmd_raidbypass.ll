; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_pqisrc_send_scsi_cmd_raidbypass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_pqisrc_send_scsi_cmd_raidbypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.raid_map* }
%struct.raid_map = type { i64, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c" IN \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"!!!!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" CDB [ %d ] : %x\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i64 0, align 8
@SA_RAID_0 = common dso_local global i64 0, align 8
@SA_RAID_1 = common dso_local global i64 0, align 8
@SA_RAID_ADM = common dso_local global i64 0, align 8
@SA_RAID_5 = common dso_local global i64 0, align 8
@SA_RAID_6 = common dso_local global i64 0, align 8
@RAID_MAP_MAX_ENTRIES = common dso_local global i64 0, align 8
@SCMD_WRITE_16 = common dso_local global i32 0, align 4
@SCMD_READ_16 = common dso_local global i32 0, align 4
@SCMD_WRITE_10 = common dso_local global i32 0, align 4
@SCMD_READ_10 = common dso_local global i32 0, align 4
@RAID_MAP_ENCRYPTION_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_send_scsi_cmd_raidbypass(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.raid_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %44 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @DBG_IO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = call i32 @OS_GET_CDBP(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32* %46, i32 %48, i32 %51)
  store i32 0, i32* %43, align 4
  br label %53

53:                                               ; preds = %67, %4
  %54 = load i32, i32* %43, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load i32, i32* %43, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %43, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @DBG_IO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %43, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %43, align 4
  br label %53

70:                                               ; preds = %53
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @check_for_scsi_opcode(i32* %71, i32* %11, i64* %13, i64* %15)
  %73 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %519

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SA_RAID_0, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  br label %519

90:                                               ; preds = %81, %78
  %91 = load i64, i64* %15, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %5, align 4
  br label %519

96:                                               ; preds = %90
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %15, align 8
  %99 = add nsw i64 %97, %98
  %100 = sub nsw i64 %99, 1
  store i64 %100, i64* %14, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load %struct.raid_map*, %struct.raid_map** %102, align 8
  store %struct.raid_map* %103, %struct.raid_map** %10, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %106 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %105, i32 0, i32 10
  %107 = call i64 @GET_LE64(i32* %106)
  %108 = icmp sge i64 %104, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %96
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %13, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109, %96
  %114 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %519

116:                                              ; preds = %109
  %117 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %118 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %117, i32 0, i32 9
  %119 = call i32 @GET_LE16(i32* %118)
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %30, align 8
  %121 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %122 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %121, i32 0, i32 8
  %123 = call i32 @GET_LE16(i32* %122)
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %34, align 8
  %125 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %126 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %125, i32 0, i32 7
  %127 = call i32 @GET_LE16(i32* %126)
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %32, align 8
  %129 = load i64, i64* %30, align 8
  %130 = load i64, i64* %34, align 8
  %131 = mul nsw i64 %129, %130
  store i64 %131, i64* %16, align 8
  %132 = load i64, i64* %16, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %116
  %135 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %519

137:                                              ; preds = %116
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %16, align 8
  %140 = sdiv i64 %138, %139
  store i64 %140, i64* %17, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* %16, align 8
  %143 = sdiv i64 %141, %142
  store i64 %143, i64* %18, align 8
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %16, align 8
  %147 = mul nsw i64 %145, %146
  %148 = sub nsw i64 %144, %147
  store i64 %148, i64* %19, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %16, align 8
  %152 = mul nsw i64 %150, %151
  %153 = sub nsw i64 %149, %152
  store i64 %153, i64* %20, align 8
  %154 = load i64, i64* %19, align 8
  %155 = load i64, i64* %34, align 8
  %156 = sdiv i64 %154, %155
  store i64 %156, i64* %21, align 8
  %157 = load i64, i64* %20, align 8
  %158 = load i64, i64* %34, align 8
  %159 = sdiv i64 %157, %158
  store i64 %159, i64* %22, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %18, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %137
  %164 = load i64, i64* %21, align 8
  %165 = load i64, i64* %22, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163, %137
  %168 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %5, align 4
  br label %519

170:                                              ; preds = %163
  %171 = load i64, i64* %30, align 8
  %172 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %173 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %172, i32 0, i32 6
  %174 = call i32 @GET_LE16(i32* %173)
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %171, %175
  store i64 %176, i64* %31, align 8
  %177 = load i64, i64* %17, align 8
  %178 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %179 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = ashr i64 %177, %180
  %182 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %183 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %182, i32 0, i32 5
  %184 = call i32 @GET_LE16(i32* %183)
  %185 = sext i32 %184 to i64
  %186 = srem i64 %181, %185
  store i64 %186, i64* %38, align 8
  %187 = load i64, i64* %38, align 8
  %188 = load i64, i64* %31, align 8
  %189 = mul nsw i64 %187, %188
  %190 = load i64, i64* %21, align 8
  %191 = add nsw i64 %189, %190
  store i64 %191, i64* %12, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @SA_RAID_1, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %170
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i64, i64* %30, align 8
  %204 = load i64, i64* %12, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, i64* %12, align 8
  br label %206

206:                                              ; preds = %202, %197
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 8
  br label %388

215:                                              ; preds = %170
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @SA_RAID_ADM, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %286

221:                                              ; preds = %215
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* %42, align 4
  %225 = load i32, i32* %42, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load i64, i64* %30, align 8
  %229 = load i64, i64* %12, align 8
  %230 = srem i64 %229, %228
  store i64 %230, i64* %12, align 8
  br label %263

231:                                              ; preds = %221
  br label %232

232:                                              ; preds = %257, %231
  %233 = load i64, i64* %12, align 8
  %234 = load i64, i64* %30, align 8
  %235 = sdiv i64 %233, %234
  store i64 %235, i64* %37, align 8
  %236 = load i32, i32* %42, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* %37, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %232
  %241 = load i64, i64* %37, align 8
  %242 = load i64, i64* %32, align 8
  %243 = sub nsw i64 %242, 1
  %244 = icmp slt i64 %241, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load i64, i64* %30, align 8
  %247 = load i64, i64* %12, align 8
  %248 = add nsw i64 %247, %246
  store i64 %248, i64* %12, align 8
  %249 = load i64, i64* %37, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %37, align 8
  br label %255

251:                                              ; preds = %240
  %252 = load i64, i64* %30, align 8
  %253 = load i64, i64* %12, align 8
  %254 = srem i64 %253, %252
  store i64 %254, i64* %12, align 8
  store i64 0, i64* %37, align 8
  br label %255

255:                                              ; preds = %251, %245
  br label %256

256:                                              ; preds = %255, %232
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %42, align 4
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* %37, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %232, label %262

262:                                              ; preds = %257
  br label %263

263:                                              ; preds = %262, %227
  %264 = load i32, i32* %42, align 4
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %32, align 8
  %267 = sub nsw i64 %266, 1
  %268 = icmp sge i64 %265, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  br label %273

270:                                              ; preds = %263
  %271 = load i32, i32* %42, align 4
  %272 = add nsw i32 %271, 1
  br label %273

273:                                              ; preds = %270, %269
  %274 = phi i32 [ 0, %269 ], [ %272, %270 ]
  store i32 %274, i32* %42, align 4
  %275 = load i32, i32* %42, align 4
  %276 = sext i32 %275 to i64
  %277 = load i64, i64* %32, align 8
  %278 = icmp sge i64 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %5, align 4
  br label %519

282:                                              ; preds = %273
  %283 = load i32, i32* %42, align 4
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 8
  br label %387

286:                                              ; preds = %215
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @SA_RAID_5, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %298, label %292

292:                                              ; preds = %286
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @SA_RAID_6, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %386

298:                                              ; preds = %292, %286
  %299 = load i64, i64* %32, align 8
  %300 = icmp sgt i64 %299, 1
  br i1 %300, label %301, label %386

301:                                              ; preds = %298
  %302 = load i64, i64* %34, align 8
  %303 = load i64, i64* %30, align 8
  %304 = mul nsw i64 %302, %303
  store i64 %304, i64* %23, align 8
  %305 = load i64, i64* %23, align 8
  %306 = load i64, i64* %32, align 8
  %307 = mul nsw i64 %305, %306
  store i64 %307, i64* %33, align 8
  %308 = load i64, i64* %13, align 8
  %309 = load i64, i64* %33, align 8
  %310 = srem i64 %308, %309
  %311 = load i64, i64* %23, align 8
  %312 = sdiv i64 %310, %311
  store i64 %312, i64* %35, align 8
  %313 = load i64, i64* %14, align 8
  %314 = load i64, i64* %33, align 8
  %315 = srem i64 %313, %314
  %316 = load i64, i64* %23, align 8
  %317 = sdiv i64 %315, %316
  store i64 %317, i64* %36, align 8
  %318 = load i64, i64* %35, align 8
  %319 = load i64, i64* %36, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %301
  %322 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %323 = trunc i64 %322 to i32
  store i32 %323, i32* %5, align 4
  br label %519

324:                                              ; preds = %301
  %325 = load i64, i64* %13, align 8
  %326 = load i64, i64* %33, align 8
  %327 = sdiv i64 %325, %326
  store i64 %327, i64* %24, align 8
  store i64 %327, i64* %17, align 8
  %328 = load i64, i64* %14, align 8
  %329 = load i64, i64* %33, align 8
  %330 = sdiv i64 %328, %329
  store i64 %330, i64* %25, align 8
  %331 = load i64, i64* %24, align 8
  %332 = load i64, i64* %25, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %324
  %335 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %5, align 4
  br label %519

337:                                              ; preds = %324
  %338 = load i64, i64* %13, align 8
  %339 = load i64, i64* %33, align 8
  %340 = srem i64 %338, %339
  %341 = load i64, i64* %23, align 8
  %342 = srem i64 %340, %341
  store i64 %342, i64* %26, align 8
  store i64 %342, i64* %19, align 8
  %343 = load i64, i64* %14, align 8
  %344 = load i64, i64* %33, align 8
  %345 = srem i64 %343, %344
  %346 = load i64, i64* %23, align 8
  %347 = srem i64 %345, %346
  store i64 %347, i64* %27, align 8
  %348 = load i64, i64* %26, align 8
  %349 = load i64, i64* %34, align 8
  %350 = sdiv i64 %348, %349
  store i64 %350, i64* %21, align 8
  %351 = load i64, i64* %21, align 8
  store i64 %351, i64* %28, align 8
  %352 = load i64, i64* %27, align 8
  %353 = load i64, i64* %34, align 8
  %354 = sdiv i64 %352, %353
  store i64 %354, i64* %29, align 8
  %355 = load i64, i64* %28, align 8
  %356 = load i64, i64* %29, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %337
  %359 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %5, align 4
  br label %519

361:                                              ; preds = %337
  %362 = load i64, i64* %17, align 8
  %363 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %364 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = ashr i64 %362, %365
  %367 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %368 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %367, i32 0, i32 5
  %369 = call i32 @GET_LE16(i32* %368)
  %370 = sext i32 %369 to i64
  %371 = srem i64 %366, %370
  store i64 %371, i64* %38, align 8
  %372 = load i64, i64* %35, align 8
  %373 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %374 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %373, i32 0, i32 5
  %375 = call i32 @GET_LE16(i32* %374)
  %376 = sext i32 %375 to i64
  %377 = load i64, i64* %31, align 8
  %378 = mul nsw i64 %376, %377
  %379 = mul nsw i64 %372, %378
  %380 = load i64, i64* %38, align 8
  %381 = load i64, i64* %31, align 8
  %382 = mul nsw i64 %380, %381
  %383 = add nsw i64 %379, %382
  %384 = load i64, i64* %21, align 8
  %385 = add nsw i64 %383, %384
  store i64 %385, i64* %12, align 8
  br label %386

386:                                              ; preds = %361, %298, %292
  br label %387

387:                                              ; preds = %386, %282
  br label %388

388:                                              ; preds = %387, %206
  %389 = load i64, i64* %12, align 8
  %390 = load i64, i64* @RAID_MAP_MAX_ENTRIES, align 8
  %391 = icmp sge i64 %389, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %5, align 4
  br label %519

395:                                              ; preds = %388
  %396 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %397 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %396, i32 0, i32 4
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %397, align 8
  %399 = load i64, i64* %12, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 3
  store i32 %402, i32* %404, align 4
  %405 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %406 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %405, i32 0, i32 3
  %407 = call i64 @GET_LE64(i32* %406)
  %408 = load i64, i64* %17, align 8
  %409 = load i64, i64* %34, align 8
  %410 = mul nsw i64 %408, %409
  %411 = add nsw i64 %407, %410
  %412 = load i64, i64* %19, align 8
  %413 = load i64, i64* %21, align 8
  %414 = load i64, i64* %34, align 8
  %415 = mul nsw i64 %413, %414
  %416 = sub nsw i64 %412, %415
  %417 = add nsw i64 %411, %416
  store i64 %417, i64* %39, align 8
  %418 = load i64, i64* %15, align 8
  store i64 %418, i64* %40, align 8
  %419 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %420 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %436

423:                                              ; preds = %395
  %424 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %425 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = load i64, i64* %39, align 8
  %428 = zext i32 %426 to i64
  %429 = shl i64 %427, %428
  store i64 %429, i64* %39, align 8
  %430 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %431 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 8
  %433 = load i64, i64* %40, align 8
  %434 = zext i32 %432 to i64
  %435 = shl i64 %433, %434
  store i64 %435, i64* %40, align 8
  br label %436

436:                                              ; preds = %423, %395
  %437 = load i64, i64* %40, align 8
  %438 = icmp sgt i64 %437, 65535
  br i1 %438, label %439, label %442

439:                                              ; preds = %436
  %440 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  %441 = trunc i64 %440 to i32
  store i32 %441, i32* %5, align 4
  br label %519

442:                                              ; preds = %436
  %443 = load i64, i64* %39, align 8
  %444 = icmp sgt i64 %443, 4294967295
  br i1 %444, label %445, label %470

445:                                              ; preds = %442
  %446 = load i32, i32* %11, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %450

448:                                              ; preds = %445
  %449 = load i32, i32* @SCMD_WRITE_16, align 4
  br label %452

450:                                              ; preds = %445
  %451 = load i32, i32* @SCMD_READ_16, align 4
  br label %452

452:                                              ; preds = %450, %448
  %453 = phi i32 [ %449, %448 ], [ %451, %450 ]
  %454 = load i32*, i32** %9, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 0
  store i32 %453, i32* %455, align 4
  %456 = load i32*, i32** %9, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 1
  store i32 0, i32* %457, align 4
  %458 = load i64, i64* %39, align 8
  %459 = load i32*, i32** %9, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 2
  %461 = call i32 @PUT_BE64(i64 %458, i32* %460)
  %462 = load i64, i64* %40, align 8
  %463 = load i32*, i32** %9, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 10
  %465 = call i32 @PUT_BE32(i64 %462, i32* %464)
  %466 = load i32*, i32** %9, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 14
  store i32 0, i32* %467, align 4
  %468 = load i32*, i32** %9, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 15
  store i32 0, i32* %469, align 4
  store i32 16, i32* %41, align 4
  br label %495

470:                                              ; preds = %442
  %471 = load i32, i32* %11, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %470
  %474 = load i32, i32* @SCMD_WRITE_10, align 4
  br label %477

475:                                              ; preds = %470
  %476 = load i32, i32* @SCMD_READ_10, align 4
  br label %477

477:                                              ; preds = %475, %473
  %478 = phi i32 [ %474, %473 ], [ %476, %475 ]
  %479 = load i32*, i32** %9, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 0
  store i32 %478, i32* %480, align 4
  %481 = load i32*, i32** %9, align 8
  %482 = getelementptr inbounds i32, i32* %481, i64 1
  store i32 0, i32* %482, align 4
  %483 = load i64, i64* %39, align 8
  %484 = load i32*, i32** %9, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 2
  %486 = call i32 @PUT_BE32(i64 %483, i32* %485)
  %487 = load i32*, i32** %9, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 6
  store i32 0, i32* %488, align 4
  %489 = load i64, i64* %40, align 8
  %490 = load i32*, i32** %9, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 7
  %492 = call i32 @PUT_BE16(i64 %489, i32* %491)
  %493 = load i32*, i32** %9, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 9
  store i32 0, i32* %494, align 4
  store i32 10, i32* %41, align 4
  br label %495

495:                                              ; preds = %477, %452
  %496 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %497 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %496, i32 0, i32 2
  %498 = call i32 @GET_LE16(i32* %497)
  %499 = load i32, i32* @RAID_MAP_ENCRYPTION_ENABLED, align 4
  %500 = and i32 %498, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %510

502:                                              ; preds = %495
  %503 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 2
  %505 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %506 = load i64, i64* %13, align 8
  %507 = call i32 @pqisrc_set_enc_info(i32* %504, %struct.raid_map* %505, i64 %506)
  %508 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 1
  store i32 1, i32* %509, align 4
  br label %513

510:                                              ; preds = %495
  %511 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 1
  store i32 0, i32* %512, align 4
  br label %513

513:                                              ; preds = %510, %502
  %514 = load i32, i32* %41, align 4
  %515 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 0
  store i32 %514, i32* %516, align 4
  %517 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %518 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %518, i32* %5, align 4
  br label %519

519:                                              ; preds = %513, %439, %392, %358, %334, %321, %279, %167, %134, %113, %93, %87, %75
  %520 = load i32, i32* %5, align 4
  ret i32 %520
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @DBG_IO(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @OS_GET_CDBP(%struct.TYPE_8__*) #1

declare dso_local i64 @check_for_scsi_opcode(i32*, i32*, i64*, i64*) #1

declare dso_local i64 @GET_LE64(i32*) #1

declare dso_local i32 @GET_LE16(i32*) #1

declare dso_local i32 @PUT_BE64(i64, i32*) #1

declare dso_local i32 @PUT_BE32(i64, i32*) #1

declare dso_local i32 @PUT_BE16(i64, i32*) #1

declare dso_local i32 @pqisrc_set_enc_info(i32*, %struct.raid_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
