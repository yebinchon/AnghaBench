; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_apply_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_apply_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.apply_state = type { i8*, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64 }
%struct.patch = type { i32, i32, i64, i64, %struct.patch* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@APPLY_OPT_INACCURATE_EOF = common dso_local global i32 0, align 4
@APPLY_OPT_RECOUNT = common dso_local global i32 0, align 4
@GITATTRIBUTES_FILE = common dso_local global i32 0, align 4
@verbosity_normal = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Skipped patch '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unrecognized input\00", align 1
@die_on_ws_error = common dso_local global i64 0, align 8
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to read index file\00", align 1
@verbosity_silent = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i32, i8*, i32)* @apply_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_patch(%struct.apply_state* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.apply_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca %struct.patch*, align 8
  %13 = alloca %struct.patch**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.patch*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store %struct.patch* null, %struct.patch** %12, align 8
  store %struct.patch** %12, %struct.patch*** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %24 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @read_patch_file(%struct.strbuf* %11, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 -128, i32* %5, align 4
  br label %347

29:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %137, %29
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %142

35:                                               ; preds = %30
  %36 = call %struct.patch* @xcalloc(i32 1, i32 32)
  store %struct.patch* %36, %struct.patch** %17, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @APPLY_OPT_INACCURATE_EOF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.patch*, %struct.patch** %17, align 8
  %45 = getelementptr inbounds %struct.patch, %struct.patch* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @APPLY_OPT_RECOUNT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.patch*, %struct.patch** %17, align 8
  %54 = getelementptr inbounds %struct.patch, %struct.patch* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %57, %58
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub i64 %61, %62
  %64 = load %struct.patch*, %struct.patch** %17, align 8
  %65 = call i32 @parse_chunk(%struct.apply_state* %55, i64 %59, i64 %63, %struct.patch* %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %35
  %69 = load %struct.patch*, %struct.patch** %17, align 8
  %70 = call i32 @free_patch(%struct.patch* %69)
  %71 = load i32, i32* %18, align 4
  %72 = icmp eq i32 %71, -128
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 -128, i32* %15, align 4
  br label %339

74:                                               ; preds = %68
  br label %142

75:                                               ; preds = %35
  %76 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %77 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %76, i32 0, i32 18
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.patch*, %struct.patch** %17, align 8
  %82 = call i32 @reverse_patches(%struct.patch* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %85 = load %struct.patch*, %struct.patch** %17, align 8
  %86 = call i64 @use_patch(%struct.apply_state* %84, %struct.patch* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %83
  %89 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %90 = load %struct.patch*, %struct.patch** %17, align 8
  %91 = call i32 @patch_stats(%struct.apply_state* %89, %struct.patch* %90)
  %92 = load %struct.patch*, %struct.patch** %17, align 8
  %93 = load %struct.patch**, %struct.patch*** %13, align 8
  store %struct.patch* %92, %struct.patch** %93, align 8
  %94 = load %struct.patch*, %struct.patch** %17, align 8
  %95 = getelementptr inbounds %struct.patch, %struct.patch* %94, i32 0, i32 4
  store %struct.patch** %95, %struct.patch*** %13, align 8
  %96 = load %struct.patch*, %struct.patch** %17, align 8
  %97 = getelementptr inbounds %struct.patch, %struct.patch* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %88
  %101 = load %struct.patch*, %struct.patch** %17, align 8
  %102 = getelementptr inbounds %struct.patch, %struct.patch* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @GITATTRIBUTES_FILE, align 4
  %105 = call i64 @ends_with_path_components(i64 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %100, %88
  %108 = load %struct.patch*, %struct.patch** %17, align 8
  %109 = getelementptr inbounds %struct.patch, %struct.patch* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.patch*, %struct.patch** %17, align 8
  %114 = getelementptr inbounds %struct.patch, %struct.patch* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @GITATTRIBUTES_FILE, align 4
  %117 = call i64 @ends_with_path_components(i64 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112, %100
  store i32 1, i32* %16, align 4
  br label %120

120:                                              ; preds = %119, %112, %107
  br label %137

121:                                              ; preds = %83
  %122 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %123 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @verbosity_normal, align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %130 = load %struct.patch*, %struct.patch** %17, align 8
  %131 = call i32 @say_patch_name(i32 %128, i32 %129, %struct.patch* %130)
  br label %132

132:                                              ; preds = %127, %121
  %133 = load %struct.patch*, %struct.patch** %17, align 8
  %134 = call i32 @free_patch(%struct.patch* %133)
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %132, %120
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %10, align 8
  br label %30

142:                                              ; preds = %74, %30
  %143 = load %struct.patch*, %struct.patch** %12, align 8
  %144 = icmp ne %struct.patch* %143, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %150 = call i32 @error(i32 %149)
  store i32 -128, i32* %15, align 4
  br label %339

151:                                              ; preds = %145, %142
  %152 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %153 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %152, i32 0, i32 17
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %151
  %157 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %158 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @die_on_ws_error, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %164 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %163, i32 0, i32 10
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %162, %156, %151
  %166 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %167 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %166, i32 0, i32 12
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %172 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %171, i32 0, i32 16
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170, %165
  %176 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %177 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %176, i32 0, i32 10
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %175, %170
  %181 = phi i1 [ false, %170 ], [ %179, %175 ]
  %182 = zext i1 %181 to i32
  %183 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %184 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  %185 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %186 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %216

189:                                              ; preds = %180
  %190 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %191 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %190, i32 0, i32 13
  %192 = call i32 @is_lock_file_locked(i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %216, label %194

194:                                              ; preds = %189
  %195 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %196 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %195, i32 0, i32 15
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %201 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %200, i32 0, i32 13
  %202 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %203 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %202, i32 0, i32 15
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %206 = call i32 @hold_lock_file_for_update(i32* %201, i64 %204, i32 %205)
  br label %215

207:                                              ; preds = %194
  %208 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %209 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %208, i32 0, i32 14
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %212 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %211, i32 0, i32 13
  %213 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %214 = call i32 @repo_hold_locked_index(i32 %210, i32* %212, i32 %213)
  br label %215

215:                                              ; preds = %207, %199
  br label %216

216:                                              ; preds = %215, %189, %180
  %217 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %218 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %217, i32 0, i32 12
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %223 = call i64 @read_apply_cache(%struct.apply_state* %222)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %227 = call i32 @error(i32 %226)
  store i32 -128, i32* %15, align 4
  br label %339

228:                                              ; preds = %221, %216
  %229 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %230 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %229, i32 0, i32 11
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %228
  %234 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %235 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %234, i32 0, i32 10
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %255

238:                                              ; preds = %233, %228
  %239 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %240 = load %struct.patch*, %struct.patch** %12, align 8
  %241 = call i32 @check_patch_list(%struct.apply_state* %239, %struct.patch* %240)
  store i32 %241, i32* %19, align 4
  %242 = load i32, i32* %19, align 4
  %243 = icmp eq i32 %242, -128
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  store i32 -128, i32* %15, align 4
  br label %339

245:                                              ; preds = %238
  %246 = load i32, i32* %19, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %250 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %249, i32 0, i32 9
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  store i32 -1, i32* %15, align 4
  br label %339

254:                                              ; preds = %248, %245
  br label %255

255:                                              ; preds = %254, %233
  %256 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %257 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %256, i32 0, i32 10
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %278

260:                                              ; preds = %255
  %261 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %262 = load %struct.patch*, %struct.patch** %12, align 8
  %263 = call i32 @write_out_results(%struct.apply_state* %261, %struct.patch* %262)
  store i32 %263, i32* %20, align 4
  %264 = load i32, i32* %20, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  store i32 -128, i32* %15, align 4
  br label %339

267:                                              ; preds = %260
  %268 = load i32, i32* %20, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %272 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %271, i32 0, i32 9
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i32 -1, i32 1
  store i32 %276, i32* %15, align 4
  br label %339

277:                                              ; preds = %267
  br label %278

278:                                              ; preds = %277, %255
  %279 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %280 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %279, i32 0, i32 8
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %285 = load %struct.patch*, %struct.patch** %12, align 8
  %286 = call i64 @build_fake_ancestor(%struct.apply_state* %284, %struct.patch* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  store i32 -128, i32* %15, align 4
  br label %339

289:                                              ; preds = %283, %278
  %290 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %291 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %290, i32 0, i32 7
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %289
  %295 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %296 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @verbosity_silent, align 8
  %299 = icmp sgt i64 %297, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %294
  %301 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %302 = load %struct.patch*, %struct.patch** %12, align 8
  %303 = call i32 @stat_patch_list(%struct.apply_state* %301, %struct.patch* %302)
  br label %304

304:                                              ; preds = %300, %294, %289
  %305 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %306 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %305, i32 0, i32 6
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %304
  %310 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %311 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @verbosity_silent, align 8
  %314 = icmp sgt i64 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %309
  %316 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %317 = load %struct.patch*, %struct.patch** %12, align 8
  %318 = call i32 @numstat_patch_list(%struct.apply_state* %316, %struct.patch* %317)
  br label %319

319:                                              ; preds = %315, %309, %304
  %320 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %321 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %319
  %325 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %326 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @verbosity_silent, align 8
  %329 = icmp sgt i64 %327, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %324
  %331 = load %struct.patch*, %struct.patch** %12, align 8
  %332 = call i32 @summary_patch_list(%struct.patch* %331)
  br label %333

333:                                              ; preds = %330, %324, %319
  %334 = load i32, i32* %16, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %333
  %337 = call i32 (...) @reset_parsed_attributes()
  br label %338

338:                                              ; preds = %336, %333
  br label %339

339:                                              ; preds = %338, %288, %270, %266, %253, %244, %225, %148, %73
  %340 = load %struct.patch*, %struct.patch** %12, align 8
  %341 = call i32 @free_patch_list(%struct.patch* %340)
  %342 = call i32 @strbuf_release(%struct.strbuf* %11)
  %343 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %344 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %343, i32 0, i32 4
  %345 = call i32 @string_list_clear(i32* %344, i32 0)
  %346 = load i32, i32* %15, align 4
  store i32 %346, i32* %5, align 4
  br label %347

347:                                              ; preds = %339, %28
  %348 = load i32, i32* %5, align 4
  ret i32 %348
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_patch_file(%struct.strbuf*, i32) #2

declare dso_local %struct.patch* @xcalloc(i32, i32) #2

declare dso_local i32 @parse_chunk(%struct.apply_state*, i64, i64, %struct.patch*) #2

declare dso_local i32 @free_patch(%struct.patch*) #2

declare dso_local i32 @reverse_patches(%struct.patch*) #2

declare dso_local i64 @use_patch(%struct.apply_state*, %struct.patch*) #2

declare dso_local i32 @patch_stats(%struct.apply_state*, %struct.patch*) #2

declare dso_local i64 @ends_with_path_components(i64, i32) #2

declare dso_local i32 @say_patch_name(i32, i32, %struct.patch*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @is_lock_file_locked(i32*) #2

declare dso_local i32 @hold_lock_file_for_update(i32*, i64, i32) #2

declare dso_local i32 @repo_hold_locked_index(i32, i32*, i32) #2

declare dso_local i64 @read_apply_cache(%struct.apply_state*) #2

declare dso_local i32 @check_patch_list(%struct.apply_state*, %struct.patch*) #2

declare dso_local i32 @write_out_results(%struct.apply_state*, %struct.patch*) #2

declare dso_local i64 @build_fake_ancestor(%struct.apply_state*, %struct.patch*) #2

declare dso_local i32 @stat_patch_list(%struct.apply_state*, %struct.patch*) #2

declare dso_local i32 @numstat_patch_list(%struct.apply_state*, %struct.patch*) #2

declare dso_local i32 @summary_patch_list(%struct.patch*) #2

declare dso_local i32 @reset_parsed_attributes(...) #2

declare dso_local i32 @free_patch_list(%struct.patch*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @string_list_clear(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
