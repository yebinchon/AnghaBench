; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_can_all_from_reach_with_flag.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_can_all_from_reach_with_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.object* }
%struct.object = type { i32, i64 }
%struct.commit = type { i64, i64, %struct.TYPE_3__, %struct.commit_list* }
%struct.TYPE_3__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"a from object\00", align 1
@OBJ_COMMIT = common dso_local global i64 0, align 8
@compare_commits_by_gen = common dso_local global i32 0, align 4
@RESULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_all_from_reach_with_flag(%struct.object_array* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.object_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.commit**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.object*, align 8
  %16 = alloca %struct.commit_list*, align 8
  %17 = alloca %struct.commit_list*, align 8
  store %struct.object_array* %0, %struct.object_array** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.commit** null, %struct.commit*** %11, align 8
  store i32 1, i32* %14, align 4
  %18 = load %struct.commit**, %struct.commit*** %11, align 8
  %19 = load %struct.object_array*, %struct.object_array** %6, align 8
  %20 = getelementptr inbounds %struct.object_array, %struct.object_array* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ALLOC_ARRAY(%struct.commit** %18, i32 %21)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %101, %5
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.object_array*, %struct.object_array** %6, align 8
  %26 = getelementptr inbounds %struct.object_array, %struct.object_array* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %104

29:                                               ; preds = %23
  %30 = load %struct.object_array*, %struct.object_array** %6, align 8
  %31 = getelementptr inbounds %struct.object_array, %struct.object_array* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.object*, %struct.object** %36, align 8
  store %struct.object* %37, %struct.object** %15, align 8
  %38 = load %struct.object*, %struct.object** %15, align 8
  %39 = icmp ne %struct.object* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.object*, %struct.object** %15, align 8
  %42 = getelementptr inbounds %struct.object, %struct.object* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %29
  br label %101

48:                                               ; preds = %40
  %49 = load i32, i32* @the_repository, align 4
  %50 = load %struct.object*, %struct.object** %15, align 8
  %51 = call %struct.object* @deref_tag(i32 %49, %struct.object* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.object* %51, %struct.object** %15, align 8
  %52 = load %struct.object*, %struct.object** %15, align 8
  %53 = icmp ne %struct.object* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.object*, %struct.object** %15, align 8
  %56 = getelementptr inbounds %struct.object, %struct.object* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @OBJ_COMMIT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.object_array*, %struct.object_array** %6, align 8
  %63 = getelementptr inbounds %struct.object_array, %struct.object_array* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.object*, %struct.object** %68, align 8
  %70 = getelementptr inbounds %struct.object, %struct.object* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %61
  store i32 %72, i32* %70, align 8
  br label %101

73:                                               ; preds = %54
  %74 = load %struct.object*, %struct.object** %15, align 8
  %75 = bitcast %struct.object* %74 to %struct.commit*
  %76 = load %struct.commit**, %struct.commit*** %11, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.commit*, %struct.commit** %76, i64 %78
  store %struct.commit* %75, %struct.commit** %79, align 8
  %80 = load %struct.commit**, %struct.commit*** %11, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.commit*, %struct.commit** %80, i64 %82
  %84 = load %struct.commit*, %struct.commit** %83, align 8
  %85 = call i64 @parse_commit(%struct.commit* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %73
  %88 = load %struct.commit**, %struct.commit*** %11, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.commit*, %struct.commit** %88, i64 %90
  %92 = load %struct.commit*, %struct.commit** %91, align 8
  %93 = getelementptr inbounds %struct.commit, %struct.commit* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87, %73
  store i32 0, i32* %14, align 4
  br label %266

98:                                               ; preds = %87
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %98, %60, %47
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %23

104:                                              ; preds = %23
  %105 = load %struct.commit**, %struct.commit*** %11, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @compare_commits_by_gen, align 4
  %108 = call i32 @QSORT(%struct.commit** %105, i32 %106, i32 %107)
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %262, %104
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %265

113:                                              ; preds = %109
  store %struct.commit_list* null, %struct.commit_list** %16, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.commit**, %struct.commit*** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.commit*, %struct.commit** %115, i64 %117
  %119 = load %struct.commit*, %struct.commit** %118, align 8
  %120 = getelementptr inbounds %struct.commit, %struct.commit* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %114
  store i32 %123, i32* %121, align 8
  %124 = load %struct.commit**, %struct.commit*** %11, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.commit*, %struct.commit** %124, i64 %126
  %128 = load %struct.commit*, %struct.commit** %127, align 8
  %129 = call i32 @commit_list_insert(%struct.commit* %128, %struct.commit_list** %16)
  br label %130

130:                                              ; preds = %245, %158, %113
  %131 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %132 = icmp ne %struct.commit_list* %131, null
  br i1 %132, label %133, label %246

133:                                              ; preds = %130
  %134 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %135 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %134, i32 0, i32 0
  %136 = load %struct.commit*, %struct.commit** %135, align 8
  %137 = getelementptr inbounds %struct.commit, %struct.commit* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @RESULT, align 4
  %142 = or i32 %140, %141
  %143 = and i32 %139, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %133
  %146 = call i32 @pop_commit(%struct.commit_list** %16)
  %147 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %148 = icmp ne %struct.commit_list* %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, i32* @RESULT, align 4
  %151 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %152 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %151, i32 0, i32 0
  %153 = load %struct.commit*, %struct.commit** %152, align 8
  %154 = getelementptr inbounds %struct.commit, %struct.commit* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %150
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %149, %145
  br label %130

159:                                              ; preds = %133
  %160 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %161 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %160, i32 0, i32 0
  %162 = load %struct.commit*, %struct.commit** %161, align 8
  %163 = getelementptr inbounds %struct.commit, %struct.commit* %162, i32 0, i32 3
  %164 = load %struct.commit_list*, %struct.commit_list** %163, align 8
  store %struct.commit_list* %164, %struct.commit_list** %17, align 8
  br label %165

165:                                              ; preds = %236, %159
  %166 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %167 = icmp ne %struct.commit_list* %166, null
  br i1 %167, label %168, label %240

168:                                              ; preds = %165
  %169 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %170 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %169, i32 0, i32 0
  %171 = load %struct.commit*, %struct.commit** %170, align 8
  %172 = getelementptr inbounds %struct.commit, %struct.commit* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @RESULT, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %168
  %181 = load i32, i32* @RESULT, align 4
  %182 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %183 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %182, i32 0, i32 0
  %184 = load %struct.commit*, %struct.commit** %183, align 8
  %185 = getelementptr inbounds %struct.commit, %struct.commit* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %181
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %180, %168
  %190 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %191 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %190, i32 0, i32 0
  %192 = load %struct.commit*, %struct.commit** %191, align 8
  %193 = getelementptr inbounds %struct.commit, %struct.commit* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %235, label %199

199:                                              ; preds = %189
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %202 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %201, i32 0, i32 0
  %203 = load %struct.commit*, %struct.commit** %202, align 8
  %204 = getelementptr inbounds %struct.commit, %struct.commit* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %200
  store i32 %207, i32* %205, align 8
  %208 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %209 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %208, i32 0, i32 0
  %210 = load %struct.commit*, %struct.commit** %209, align 8
  %211 = call i64 @parse_commit(%struct.commit* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %229, label %213

213:                                              ; preds = %199
  %214 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %215 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %214, i32 0, i32 0
  %216 = load %struct.commit*, %struct.commit** %215, align 8
  %217 = getelementptr inbounds %struct.commit, %struct.commit* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %9, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %213
  %222 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %223 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %222, i32 0, i32 0
  %224 = load %struct.commit*, %struct.commit** %223, align 8
  %225 = getelementptr inbounds %struct.commit, %struct.commit* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %10, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %221, %213, %199
  br label %236

230:                                              ; preds = %221
  %231 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %232 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %231, i32 0, i32 0
  %233 = load %struct.commit*, %struct.commit** %232, align 8
  %234 = call i32 @commit_list_insert(%struct.commit* %233, %struct.commit_list** %16)
  br label %240

235:                                              ; preds = %189
  br label %236

236:                                              ; preds = %235, %229
  %237 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %238 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %237, i32 0, i32 1
  %239 = load %struct.commit_list*, %struct.commit_list** %238, align 8
  store %struct.commit_list* %239, %struct.commit_list** %17, align 8
  br label %165

240:                                              ; preds = %230, %165
  %241 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %242 = icmp ne %struct.commit_list* %241, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = call i32 @pop_commit(%struct.commit_list** %16)
  br label %245

245:                                              ; preds = %243, %240
  br label %130

246:                                              ; preds = %130
  %247 = load %struct.commit**, %struct.commit*** %11, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.commit*, %struct.commit** %247, i64 %249
  %251 = load %struct.commit*, %struct.commit** %250, align 8
  %252 = getelementptr inbounds %struct.commit, %struct.commit* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* @RESULT, align 4
  %257 = or i32 %255, %256
  %258 = and i32 %254, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %246
  store i32 0, i32* %14, align 4
  br label %266

261:                                              ; preds = %246
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %109

265:                                              ; preds = %109
  br label %266

266:                                              ; preds = %265, %260, %97
  %267 = load i32, i32* %13, align 4
  %268 = load %struct.commit**, %struct.commit*** %11, align 8
  %269 = load i32, i32* @RESULT, align 4
  %270 = load i32, i32* %8, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @clear_commit_marks_many(i32 %267, %struct.commit** %268, i32 %271)
  %273 = load %struct.commit**, %struct.commit*** %11, align 8
  %274 = call i32 @free(%struct.commit** %273)
  store i32 0, i32* %12, align 4
  br label %275

275:                                              ; preds = %295, %266
  %276 = load i32, i32* %12, align 4
  %277 = load %struct.object_array*, %struct.object_array** %6, align 8
  %278 = getelementptr inbounds %struct.object_array, %struct.object_array* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp slt i32 %276, %279
  br i1 %280, label %281, label %298

281:                                              ; preds = %275
  %282 = load i32, i32* %8, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.object_array*, %struct.object_array** %6, align 8
  %285 = getelementptr inbounds %struct.object_array, %struct.object_array* %284, i32 0, i32 1
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = load i32, i32* %12, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load %struct.object*, %struct.object** %290, align 8
  %292 = getelementptr inbounds %struct.object, %struct.object* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = and i32 %293, %283
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %281
  %296 = load i32, i32* %12, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %12, align 4
  br label %275

298:                                              ; preds = %275
  %299 = load i32, i32* %14, align 4
  ret i32 %299
}

declare dso_local i32 @ALLOC_ARRAY(%struct.commit**, i32) #1

declare dso_local %struct.object* @deref_tag(i32, %struct.object*, i8*, i32) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @QSORT(%struct.commit**, i32, i32) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @pop_commit(%struct.commit_list**) #1

declare dso_local i32 @clear_commit_marks_many(i32, %struct.commit**, i32) #1

declare dso_local i32 @free(%struct.commit**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
