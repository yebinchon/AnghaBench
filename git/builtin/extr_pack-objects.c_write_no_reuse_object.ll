; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_no_reuse_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_no_reuse_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.hashfile = type { i32 }
%struct.object_entry = type { i64, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.git_istream = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@MAX_PACK_OBJECT_HEADER = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_9__* null, align 8
@OBJ_BLOB = common dso_local global i64 0, align 8
@to_pack = common dso_local global i32 0, align 4
@big_file_threshold = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unable to read %s\00", align 1
@allow_ofs_delta = common dso_local global i64 0, align 8
@OBJ_OFS_DELTA = common dso_local global i32 0, align 4
@OBJ_REF_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hashfile*, %struct.object_entry*, i64, i32)* @write_no_reuse_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_no_reuse_object(%struct.hashfile* %0, %struct.object_entry* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.hashfile*, align 8
  %7 = alloca %struct.object_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.git_istream*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %6, align 8
  store %struct.object_entry* %1, %struct.object_entry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load i32, i32* @MAX_PACK_OBJECT_HEADER, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* @MAX_PACK_OBJECT_HEADER, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  store %struct.git_istream* null, %struct.git_istream** %18, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_hash_algo, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %74, label %35

35:                                               ; preds = %4
  %36 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %37 = call i64 @oe_type(%struct.object_entry* %36)
  %38 = load i64, i64* @OBJ_BLOB, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %42 = load i32, i32* @big_file_threshold, align 4
  %43 = call i64 @oe_size_greater_than(i32* @to_pack, %struct.object_entry* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %47 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = call %struct.git_istream* @open_istream(i32* %48, i32* %16, i64* %10, i32* null)
  store %struct.git_istream* %49, %struct.git_istream** %18, align 8
  %50 = icmp ne %struct.git_istream* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i8* null, i8** %17, align 8
  br label %67

52:                                               ; preds = %45, %40, %35
  %53 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %54 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = call i8* @read_object_file(i32* %55, i32* %16, i64* %10)
  store i8* %56, i8** %17, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %62 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = call i32 @oid_to_hex(i32* %63)
  %65 = call i32 @die(i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66, %51
  %68 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %69 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @FREE_AND_NULL(i32* %70)
  %72 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %73 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %124

74:                                               ; preds = %4
  %75 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %76 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %81 = call i64 @DELTA_SIZE(%struct.object_entry* %80)
  store i64 %81, i64* %10, align 8
  %82 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %83 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to i8*
  store i8* %85, i8** %17, align 8
  %86 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %87 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  %88 = load i64, i64* @allow_ofs_delta, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %92 = call %struct.TYPE_10__* @DELTA(%struct.object_entry* %91)
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @OBJ_OFS_DELTA, align 4
  br label %101

99:                                               ; preds = %90, %79
  %100 = load i32, i32* @OBJ_REF_DELTA, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %16, align 4
  br label %123

103:                                              ; preds = %74
  %104 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %105 = call i8* @get_delta(%struct.object_entry* %104)
  store i8* %105, i8** %17, align 8
  %106 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %107 = call i64 @DELTA_SIZE(%struct.object_entry* %106)
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* @allow_ofs_delta, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %112 = call %struct.TYPE_10__* @DELTA(%struct.object_entry* %111)
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @OBJ_OFS_DELTA, align 4
  br label %121

119:                                              ; preds = %110, %103
  %120 = load i32, i32* @OBJ_REF_DELTA, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %121, %101
  br label %124

124:                                              ; preds = %123, %67
  %125 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %126 = icmp ne %struct.git_istream* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %11, align 8
  br label %142

129:                                              ; preds = %124
  %130 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %131 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %136 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %11, align 8
  br label %141

138:                                              ; preds = %129
  %139 = load i64, i64* %10, align 8
  %140 = call i64 @do_compress(i8** %17, i64 %139)
  store i64 %140, i64* %11, align 8
  br label %141

141:                                              ; preds = %138, %134
  br label %142

142:                                              ; preds = %141, %127
  %143 = trunc i64 %24 to i32
  %144 = load i32, i32* %16, align 4
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @encode_in_pack_object_header(i8* %26, i32 %143, i32 %144, i64 %145)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* @OBJ_OFS_DELTA, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %229

150:                                              ; preds = %142
  %151 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %152 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %156 = call %struct.TYPE_10__* @DELTA(%struct.object_entry* %155)
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %154, %159
  store i32 %160, i32* %20, align 4
  %161 = sub i64 %28, 1
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %21, align 4
  %163 = load i32, i32* %20, align 4
  %164 = and i32 %163, 127
  %165 = trunc i32 %164 to i8
  %166 = load i32, i32* %21, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %29, i64 %167
  store i8 %165, i8* %168, align 1
  br label %169

169:                                              ; preds = %173, %150
  %170 = load i32, i32* %20, align 4
  %171 = ashr i32 %170, 7
  store i32 %171, i32* %20, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = load i32, i32* %20, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %20, align 4
  %176 = and i32 %175, 127
  %177 = or i32 128, %176
  %178 = trunc i32 %177 to i8
  %179 = load i32, i32* %21, align 4
  %180 = add i32 %179, -1
  store i32 %180, i32* %21, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %29, i64 %181
  store i8 %178, i8* %182, align 1
  br label %169

183:                                              ; preds = %169
  %184 = load i64, i64* %8, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %183
  %187 = load i32, i32* %15, align 4
  %188 = zext i32 %187 to i64
  %189 = add i64 %188, %28
  %190 = load i32, i32* %21, align 4
  %191 = zext i32 %190 to i64
  %192 = sub i64 %189, %191
  %193 = load i64, i64* %11, align 8
  %194 = add i64 %192, %193
  %195 = load i32, i32* %19, align 4
  %196 = zext i32 %195 to i64
  %197 = add i64 %194, %196
  %198 = load i64, i64* %8, align 8
  %199 = icmp uge i64 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %186
  %201 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %202 = icmp ne %struct.git_istream* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %205 = call i32 @close_istream(%struct.git_istream* %204)
  br label %206

206:                                              ; preds = %203, %200
  %207 = load i8*, i8** %17, align 8
  %208 = call i32 @free(i8* %207)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %325

209:                                              ; preds = %186, %183
  %210 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %211 = load i32, i32* %15, align 4
  %212 = call i32 @hashwrite(%struct.hashfile* %210, i8* %26, i32 %211)
  %213 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %214 = load i32, i32* %21, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %29, i64 %215
  %217 = load i32, i32* %21, align 4
  %218 = zext i32 %217 to i64
  %219 = sub i64 %28, %218
  %220 = trunc i64 %219 to i32
  %221 = call i32 @hashwrite(%struct.hashfile* %213, i8* %216, i32 %220)
  %222 = load i32, i32* %21, align 4
  %223 = zext i32 %222 to i64
  %224 = sub i64 %28, %223
  %225 = load i32, i32* %15, align 4
  %226 = zext i32 %225 to i64
  %227 = add i64 %226, %224
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %15, align 4
  br label %300

229:                                              ; preds = %142
  %230 = load i32, i32* %16, align 4
  %231 = load i32, i32* @OBJ_REF_DELTA, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %273

233:                                              ; preds = %229
  %234 = load i64, i64* %8, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %257

236:                                              ; preds = %233
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %19, align 4
  %239 = add i32 %237, %238
  %240 = zext i32 %239 to i64
  %241 = load i64, i64* %11, align 8
  %242 = add i64 %240, %241
  %243 = load i32, i32* %19, align 4
  %244 = zext i32 %243 to i64
  %245 = add i64 %242, %244
  %246 = load i64, i64* %8, align 8
  %247 = icmp uge i64 %245, %246
  br i1 %247, label %248, label %257

248:                                              ; preds = %236
  %249 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %250 = icmp ne %struct.git_istream* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %253 = call i32 @close_istream(%struct.git_istream* %252)
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i8*, i8** %17, align 8
  %256 = call i32 @free(i8* %255)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %325

257:                                              ; preds = %236, %233
  %258 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @hashwrite(%struct.hashfile* %258, i8* %26, i32 %259)
  %261 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %262 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %263 = call %struct.TYPE_10__* @DELTA(%struct.object_entry* %262)
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %19, align 4
  %269 = call i32 @hashwrite(%struct.hashfile* %261, i8* %267, i32 %268)
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %15, align 4
  %272 = add i32 %271, %270
  store i32 %272, i32* %15, align 4
  br label %299

273:                                              ; preds = %229
  %274 = load i64, i64* %8, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %295

276:                                              ; preds = %273
  %277 = load i32, i32* %15, align 4
  %278 = zext i32 %277 to i64
  %279 = load i64, i64* %11, align 8
  %280 = add i64 %278, %279
  %281 = load i32, i32* %19, align 4
  %282 = zext i32 %281 to i64
  %283 = add i64 %280, %282
  %284 = load i64, i64* %8, align 8
  %285 = icmp uge i64 %283, %284
  br i1 %285, label %286, label %295

286:                                              ; preds = %276
  %287 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %288 = icmp ne %struct.git_istream* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %291 = call i32 @close_istream(%struct.git_istream* %290)
  br label %292

292:                                              ; preds = %289, %286
  %293 = load i8*, i8** %17, align 8
  %294 = call i32 @free(i8* %293)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %325

295:                                              ; preds = %276, %273
  %296 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %297 = load i32, i32* %15, align 4
  %298 = call i32 @hashwrite(%struct.hashfile* %296, i8* %26, i32 %297)
  br label %299

299:                                              ; preds = %295, %257
  br label %300

300:                                              ; preds = %299, %209
  %301 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %302 = icmp ne %struct.git_istream* %301, null
  br i1 %302, label %303, label %312

303:                                              ; preds = %300
  %304 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %305 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %306 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %307 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  %309 = call i64 @write_large_blob_data(%struct.git_istream* %304, %struct.hashfile* %305, i32* %308)
  store i64 %309, i64* %11, align 8
  %310 = load %struct.git_istream*, %struct.git_istream** %18, align 8
  %311 = call i32 @close_istream(%struct.git_istream* %310)
  br label %320

312:                                              ; preds = %300
  %313 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %314 = load i8*, i8** %17, align 8
  %315 = load i64, i64* %11, align 8
  %316 = trunc i64 %315 to i32
  %317 = call i32 @hashwrite(%struct.hashfile* %313, i8* %314, i32 %316)
  %318 = load i8*, i8** %17, align 8
  %319 = call i32 @free(i8* %318)
  br label %320

320:                                              ; preds = %312, %303
  %321 = load i32, i32* %15, align 4
  %322 = zext i32 %321 to i64
  %323 = load i64, i64* %11, align 8
  %324 = add i64 %322, %323
  store i64 %324, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %325

325:                                              ; preds = %320, %292, %254, %206
  %326 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %326)
  %327 = load i64, i64* %5, align 8
  ret i64 %327
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @oe_type(%struct.object_entry*) #2

declare dso_local i64 @oe_size_greater_than(i32*, %struct.object_entry*, i32) #2

declare dso_local %struct.git_istream* @open_istream(i32*, i32*, i64*, i32*) #2

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #2

declare dso_local i32 @die(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @FREE_AND_NULL(i32*) #2

declare dso_local i64 @DELTA_SIZE(%struct.object_entry*) #2

declare dso_local %struct.TYPE_10__* @DELTA(%struct.object_entry*) #2

declare dso_local i8* @get_delta(%struct.object_entry*) #2

declare dso_local i64 @do_compress(i8**, i64) #2

declare dso_local i32 @encode_in_pack_object_header(i8*, i32, i32, i64) #2

declare dso_local i32 @close_istream(%struct.git_istream*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @hashwrite(%struct.hashfile*, i8*, i32) #2

declare dso_local i64 @write_large_blob_data(%struct.git_istream*, %struct.hashfile*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
