; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_eval_unary.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_eval_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ops = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"eval%d !\00", align 1
@LT_ERROR = common dso_local global i64 0, align 8
@LT_IF = common dso_local global i64 0, align 8
@LT_TRUE = common dso_local global i64 0, align 8
@LT_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"eval%d ~\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"eval%d -\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"eval%d (\00", align 1
@eval_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"eval%d number\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"eval%d defined missing ')'\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"eval%d defined unknown\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"eval%d defined %s\00", align 1
@symname = common dso_local global i64* null, align 8
@value = common dso_local global i8** null, align 8
@constexpr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"eval%d symbol\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"eval%d bad expr\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"eval%d = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ops*, i64*, i8**)* @eval_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval_unary(%struct.ops* %0, i64* %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ops*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ops* %0, %struct.ops** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @skipcomment(i8* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 33
  br i1 %19, label %20, label %56

20:                                               ; preds = %3
  %21 = load %struct.ops*, %struct.ops** %5, align 8
  %22 = call i32 @prec(%struct.ops* %21)
  %23 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  %26 = load %struct.ops*, %struct.ops** %5, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = call i64 @eval_unary(%struct.ops* %26, i64* %27, i8** %8)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @LT_ERROR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i64, i64* @LT_ERROR, align 8
  store i64 %33, i64* %4, align 8
  br label %342

34:                                               ; preds = %20
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @LT_IF, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %6, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i64, i64* @LT_TRUE, align 8
  br label %53

51:                                               ; preds = %38
  %52 = load i64, i64* @LT_FALSE, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %53, %34
  br label %333

56:                                               ; preds = %3
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 126
  br i1 %60, label %61, label %94

61:                                               ; preds = %56
  %62 = load %struct.ops*, %struct.ops** %5, align 8
  %63 = call i32 @prec(%struct.ops* %62)
  %64 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  %67 = load %struct.ops*, %struct.ops** %5, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = call i64 @eval_unary(%struct.ops* %67, i64* %68, i8** %8)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @LT_ERROR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i64, i64* @LT_ERROR, align 8
  store i64 %74, i64* %4, align 8
  br label %342

75:                                               ; preds = %61
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @LT_IF, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %80, align 8
  %82 = xor i64 %81, -1
  %83 = load i64*, i64** %6, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i64, i64* @LT_TRUE, align 8
  br label %91

89:                                               ; preds = %79
  %90 = load i64, i64* @LT_FALSE, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %91, %75
  br label %332

94:                                               ; preds = %56
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 45
  br i1 %98, label %99, label %132

99:                                               ; preds = %94
  %100 = load %struct.ops*, %struct.ops** %5, align 8
  %101 = call i32 @prec(%struct.ops* %100)
  %102 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  %105 = load %struct.ops*, %struct.ops** %5, align 8
  %106 = load i64*, i64** %6, align 8
  %107 = call i64 @eval_unary(%struct.ops* %105, i64* %106, i8** %8)
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* @LT_ERROR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %99
  %112 = load i64, i64* @LT_ERROR, align 8
  store i64 %112, i64* %4, align 8
  br label %342

113:                                              ; preds = %99
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* @LT_IF, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i64*, i64** %6, align 8
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 0, %119
  %121 = load i64*, i64** %6, align 8
  store i64 %120, i64* %121, align 8
  %122 = load i64*, i64** %6, align 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i64, i64* @LT_TRUE, align 8
  br label %129

127:                                              ; preds = %117
  %128 = load i64, i64* @LT_FALSE, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i64 [ %126, %125 ], [ %128, %127 ]
  store i64 %130, i64* %12, align 8
  br label %131

131:                                              ; preds = %129, %113
  br label %331

132:                                              ; preds = %94
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 40
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %8, align 8
  %140 = load %struct.ops*, %struct.ops** %5, align 8
  %141 = call i32 @prec(%struct.ops* %140)
  %142 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @eval_ops, align 4
  %144 = load i64*, i64** %6, align 8
  %145 = call i64 @eval_table(i32 %143, i64* %144, i8** %8)
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* @LT_ERROR, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = load i64, i64* @LT_ERROR, align 8
  store i64 %150, i64* %4, align 8
  br label %342

151:                                              ; preds = %137
  %152 = load i8*, i8** %8, align 8
  %153 = call i8* @skipcomment(i8* %152)
  store i8* %153, i8** %8, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %8, align 8
  %156 = load i8, i8* %154, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 41
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load i64, i64* @LT_ERROR, align 8
  store i64 %160, i64* %4, align 8
  br label %342

161:                                              ; preds = %151
  br label %330

162:                                              ; preds = %132
  %163 = load i8*, i8** %8, align 8
  %164 = load i8, i8* %163, align 1
  %165 = call i64 @isdigit(i8 zeroext %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %162
  %168 = load %struct.ops*, %struct.ops** %5, align 8
  %169 = call i32 @prec(%struct.ops* %168)
  %170 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load i8*, i8** %8, align 8
  %172 = call i64 @strtol(i8* %171, i8** %9, i32 0)
  %173 = load i64*, i64** %6, align 8
  store i64 %172, i64* %173, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = icmp eq i8* %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = load i64, i64* @LT_ERROR, align 8
  store i64 %178, i64* %4, align 8
  br label %342

179:                                              ; preds = %167
  %180 = load i64*, i64** %6, align 8
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i64, i64* @LT_TRUE, align 8
  br label %187

185:                                              ; preds = %179
  %186 = load i64, i64* @LT_FALSE, align 8
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i64 [ %184, %183 ], [ %186, %185 ]
  store i64 %188, i64* %12, align 8
  %189 = load i8*, i8** %9, align 8
  store i8* %189, i8** %8, align 8
  br label %329

190:                                              ; preds = %162
  %191 = load i8*, i8** %8, align 8
  %192 = call i32* @matchsym(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %191)
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %260

194:                                              ; preds = %190
  %195 = load i8*, i8** %8, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 7
  %197 = call i8* @skipcomment(i8* %196)
  store i8* %197, i8** %8, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 40
  br i1 %201, label %202, label %206

202:                                              ; preds = %194
  %203 = load i8*, i8** %8, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = call i8* @skipcomment(i8* %204)
  store i8* %205, i8** %8, align 8
  store i32 1, i32* %11, align 4
  br label %207

206:                                              ; preds = %194
  store i32 0, i32* %11, align 4
  br label %207

207:                                              ; preds = %206, %202
  %208 = call i32 @findsym(i8** %8)
  store i32 %208, i32* %10, align 4
  %209 = load i8*, i8** %8, align 8
  %210 = call i8* @skipcomment(i8* %209)
  store i8* %210, i8** %8, align 8
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %207
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %8, align 8
  %216 = load i8, i8* %214, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 41
  br i1 %218, label %219, label %224

219:                                              ; preds = %213
  %220 = load %struct.ops*, %struct.ops** %5, align 8
  %221 = call i32 @prec(%struct.ops* %220)
  %222 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %221)
  %223 = load i64, i64* @LT_ERROR, align 8
  store i64 %223, i64* %4, align 8
  br label %342

224:                                              ; preds = %213, %207
  %225 = load i32, i32* %10, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load %struct.ops*, %struct.ops** %5, align 8
  %229 = call i32 @prec(%struct.ops* %228)
  %230 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %229)
  %231 = load i64, i64* @LT_IF, align 8
  store i64 %231, i64* %12, align 8
  br label %259

232:                                              ; preds = %224
  %233 = load %struct.ops*, %struct.ops** %5, align 8
  %234 = call i32 @prec(%struct.ops* %233)
  %235 = load i64*, i64** @symname, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %234, i64 %239)
  %241 = load i8**, i8*** @value, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  %247 = zext i1 %246 to i32
  %248 = sext i32 %247 to i64
  %249 = load i64*, i64** %6, align 8
  store i64 %248, i64* %249, align 8
  %250 = load i64*, i64** %6, align 8
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %232
  %254 = load i64, i64* @LT_TRUE, align 8
  br label %257

255:                                              ; preds = %232
  %256 = load i64, i64* @LT_FALSE, align 8
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i64 [ %254, %253 ], [ %256, %255 ]
  store i64 %258, i64* %12, align 8
  br label %259

259:                                              ; preds = %257, %227
  store i32 0, i32* @constexpr, align 4
  br label %328

260:                                              ; preds = %190
  %261 = load i8*, i8** %8, align 8
  %262 = load i8, i8* %261, align 1
  %263 = call i32 @endsym(i8 signext %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %322, label %265

265:                                              ; preds = %260
  %266 = load %struct.ops*, %struct.ops** %5, align 8
  %267 = call i32 @prec(%struct.ops* %266)
  %268 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %267)
  %269 = call i32 @findsym(i8** %8)
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load i64, i64* @LT_IF, align 8
  store i64 %273, i64* %12, align 8
  %274 = load i8*, i8** %8, align 8
  %275 = call i8* @skipargs(i8* %274)
  store i8* %275, i8** %8, align 8
  br label %321

276:                                              ; preds = %265
  %277 = load i8**, i8*** @value, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  %281 = load i8*, i8** %280, align 8
  %282 = icmp eq i8* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %276
  %284 = load i64*, i64** %6, align 8
  store i64 0, i64* %284, align 8
  %285 = load i64, i64* @LT_FALSE, align 8
  store i64 %285, i64* %12, align 8
  br label %320

286:                                              ; preds = %276
  %287 = load i8**, i8*** @value, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %287, i64 %289
  %291 = load i8*, i8** %290, align 8
  %292 = call i64 @strtol(i8* %291, i8** %9, i32 0)
  %293 = load i64*, i64** %6, align 8
  store i64 %292, i64* %293, align 8
  %294 = load i8*, i8** %9, align 8
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %306, label %298

298:                                              ; preds = %286
  %299 = load i8*, i8** %9, align 8
  %300 = load i8**, i8*** @value, align 8
  %301 = load i32, i32* %10, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8*, i8** %300, i64 %302
  %304 = load i8*, i8** %303, align 8
  %305 = icmp eq i8* %299, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %298, %286
  %307 = load i64, i64* @LT_ERROR, align 8
  store i64 %307, i64* %4, align 8
  br label %342

308:                                              ; preds = %298
  %309 = load i64*, i64** %6, align 8
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %308
  %313 = load i64, i64* @LT_TRUE, align 8
  br label %316

314:                                              ; preds = %308
  %315 = load i64, i64* @LT_FALSE, align 8
  br label %316

316:                                              ; preds = %314, %312
  %317 = phi i64 [ %313, %312 ], [ %315, %314 ]
  store i64 %317, i64* %12, align 8
  %318 = load i8*, i8** %8, align 8
  %319 = call i8* @skipargs(i8* %318)
  store i8* %319, i8** %8, align 8
  br label %320

320:                                              ; preds = %316, %283
  br label %321

321:                                              ; preds = %320, %272
  store i32 0, i32* @constexpr, align 4
  br label %327

322:                                              ; preds = %260
  %323 = load %struct.ops*, %struct.ops** %5, align 8
  %324 = call i32 @prec(%struct.ops* %323)
  %325 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %324)
  %326 = load i64, i64* @LT_ERROR, align 8
  store i64 %326, i64* %4, align 8
  br label %342

327:                                              ; preds = %321
  br label %328

328:                                              ; preds = %327, %259
  br label %329

329:                                              ; preds = %328, %187
  br label %330

330:                                              ; preds = %329, %161
  br label %331

331:                                              ; preds = %330, %131
  br label %332

332:                                              ; preds = %331, %93
  br label %333

333:                                              ; preds = %332, %55
  %334 = load i8*, i8** %8, align 8
  %335 = load i8**, i8*** %7, align 8
  store i8* %334, i8** %335, align 8
  %336 = load %struct.ops*, %struct.ops** %5, align 8
  %337 = call i32 @prec(%struct.ops* %336)
  %338 = load i64*, i64** %6, align 8
  %339 = load i64, i64* %338, align 8
  %340 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %337, i64 %339)
  %341 = load i64, i64* %12, align 8
  store i64 %341, i64* %4, align 8
  br label %342

342:                                              ; preds = %333, %322, %306, %219, %177, %159, %149, %111, %73, %32
  %343 = load i64, i64* %4, align 8
  ret i64 %343
}

declare dso_local i8* @skipcomment(i8*) #1

declare dso_local i32 @debug(i8*, i32, ...) #1

declare dso_local i32 @prec(%struct.ops*) #1

declare dso_local i64 @eval_table(i32, i64*, i8**) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32* @matchsym(i8*, i8*) #1

declare dso_local i32 @findsym(i8**) #1

declare dso_local i32 @endsym(i8 signext) #1

declare dso_local i8* @skipargs(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
