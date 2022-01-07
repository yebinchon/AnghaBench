; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_parse_fragment.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_parse_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, i32, i32 }
%struct.patch = type { i32, i32, i64, i64, i64, i32 }
%struct.fragment = type { i64, i64, i64, i64 }

@correct_ws_error = common dso_local global i32 0, align 4
@nowarn_ws_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\ \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"new file depends on old contents\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"deleted file still has contents\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*, i64, %struct.patch*, %struct.fragment*)* @parse_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fragment(%struct.apply_state* %0, i8* %1, i64 %2, %struct.patch* %3, %struct.fragment* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.apply_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.patch*, align 8
  %11 = alloca %struct.fragment*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.apply_state* %0, %struct.apply_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.patch* %3, %struct.patch** %10, align 8
  store %struct.fragment* %4, %struct.fragment** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @linelen(i8* %20, i64 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.fragment*, %struct.fragment** %11, align 8
  %26 = call i32 @parse_fragment_header(i8* %23, i32 %24, %struct.fragment* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %305

30:                                               ; preds = %5
  %31 = load i32, i32* %15, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.patch*, %struct.patch** %10, align 8
  %35 = getelementptr inbounds %struct.patch, %struct.patch* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 %43, %45
  %47 = load %struct.fragment*, %struct.fragment** %11, align 8
  %48 = call i32 @recount_diff(i8* %42, i64 %46, %struct.fragment* %47)
  br label %49

49:                                               ; preds = %38, %33, %30
  %50 = load %struct.fragment*, %struct.fragment** %11, align 8
  %51 = getelementptr inbounds %struct.fragment, %struct.fragment* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %16, align 8
  %53 = load %struct.fragment*, %struct.fragment** %11, align 8
  %54 = getelementptr inbounds %struct.fragment, %struct.fragment* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %9, align 8
  %64 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %65 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %217, %49
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 0, %70
  br i1 %71, label %72, label %233

72:                                               ; preds = %69
  %73 = load i64, i64* %16, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %17, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %233

79:                                               ; preds = %75, %72
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @linelen(i8* %80, i64 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 10
  br i1 %93, label %94, label %95

94:                                               ; preds = %85, %79
  store i32 -1, i32* %6, align 4
  br label %305

95:                                               ; preds = %85
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  switch i32 %98, label %99 [
    i32 10, label %100
    i32 32, label %100
    i32 45, label %139
    i32 43, label %173
    i32 92, label %207
  ]

99:                                               ; preds = %95
  store i32 -1, i32* %6, align 4
  br label %305

100:                                              ; preds = %95, %95
  %101 = load i64, i64* %16, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %16, align 8
  %103 = load i64, i64* %17, align 8
  %104 = add i64 %103, -1
  store i64 %104, i64* %17, align 8
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %18, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %18, align 8
  br label %113

113:                                              ; preds = %110, %107, %100
  %114 = load i64, i64* %19, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %19, align 8
  %116 = load %struct.patch*, %struct.patch** %10, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @check_old_for_crlf(%struct.patch* %116, i8* %117, i32 %118)
  %120 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %121 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %113
  %125 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %126 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @correct_ws_error, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.patch*, %struct.patch** %10, align 8
  %135 = getelementptr inbounds %struct.patch, %struct.patch* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @check_whitespace(%struct.apply_state* %131, i8* %132, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %130, %124, %113
  br label %216

139:                                              ; preds = %95
  %140 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %141 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load %struct.patch*, %struct.patch** %10, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @check_old_for_crlf(%struct.patch* %145, i8* %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %151 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %156 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @nowarn_ws_error, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.patch*, %struct.patch** %10, align 8
  %165 = getelementptr inbounds %struct.patch, %struct.patch* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @check_whitespace(%struct.apply_state* %161, i8* %162, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %160, %154, %149
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  %171 = load i64, i64* %16, align 8
  %172 = add i64 %171, -1
  store i64 %172, i64* %16, align 8
  store i64 0, i64* %19, align 8
  br label %216

173:                                              ; preds = %95
  %174 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %175 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load %struct.patch*, %struct.patch** %10, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @check_old_for_crlf(%struct.patch* %179, i8* %180, i32 %181)
  br label %183

183:                                              ; preds = %178, %173
  %184 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %185 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %183
  %189 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %190 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @nowarn_ws_error, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %188
  %195 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %196 = load i8*, i8** %8, align 8
  %197 = load i32, i32* %14, align 4
  %198 = load %struct.patch*, %struct.patch** %10, align 8
  %199 = getelementptr inbounds %struct.patch, %struct.patch* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @check_whitespace(%struct.apply_state* %195, i8* %196, i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %194, %188, %183
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %12, align 4
  %205 = load i64, i64* %17, align 8
  %206 = add i64 %205, -1
  store i64 %206, i64* %17, align 8
  store i64 0, i64* %19, align 8
  br label %216

207:                                              ; preds = %95
  %208 = load i32, i32* %14, align 4
  %209 = icmp slt i32 %208, 12
  br i1 %209, label %214, label %210

210:                                              ; preds = %207
  %211 = load i8*, i8** %8, align 8
  %212 = call i64 @memcmp(i8* %211, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %210, %207
  store i32 -1, i32* %6, align 4
  br label %305

215:                                              ; preds = %210
  br label %216

216:                                              ; preds = %215, %202, %168, %138
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* %15, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %9, align 8
  %224 = sub i64 %223, %222
  store i64 %224, i64* %9, align 8
  %225 = load i32, i32* %14, align 4
  %226 = load i8*, i8** %8, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  store i8* %228, i8** %8, align 8
  %229 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %230 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  br label %69

233:                                              ; preds = %78, %69
  %234 = load i64, i64* %16, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load i64, i64* %17, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236, %233
  store i32 -1, i32* %6, align 4
  br label %305

240:                                              ; preds = %236
  %241 = load %struct.patch*, %struct.patch** %10, align 8
  %242 = getelementptr inbounds %struct.patch, %struct.patch* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %240
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  store i32 -1, i32* %6, align 4
  br label %305

252:                                              ; preds = %248, %245, %240
  %253 = load i64, i64* %18, align 8
  %254 = load %struct.fragment*, %struct.fragment** %11, align 8
  %255 = getelementptr inbounds %struct.fragment, %struct.fragment* %254, i32 0, i32 2
  store i64 %253, i64* %255, align 8
  %256 = load i64, i64* %19, align 8
  %257 = load %struct.fragment*, %struct.fragment** %11, align 8
  %258 = getelementptr inbounds %struct.fragment, %struct.fragment* %257, i32 0, i32 3
  store i64 %256, i64* %258, align 8
  %259 = load i64, i64* %9, align 8
  %260 = icmp ult i64 12, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %252
  %262 = load i8*, i8** %8, align 8
  %263 = call i64 @memcmp(i8* %262, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %261
  %266 = load i8*, i8** %8, align 8
  %267 = load i64, i64* %9, align 8
  %268 = call i32 @linelen(i8* %266, i64 %267)
  %269 = load i32, i32* %15, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %15, align 4
  br label %271

271:                                              ; preds = %265, %261, %252
  %272 = load i32, i32* %12, align 4
  %273 = load %struct.patch*, %struct.patch** %10, align 8
  %274 = getelementptr inbounds %struct.patch, %struct.patch* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load i32, i32* %13, align 4
  %278 = load %struct.patch*, %struct.patch** %10, align 8
  %279 = getelementptr inbounds %struct.patch, %struct.patch* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load %struct.patch*, %struct.patch** %10, align 8
  %283 = getelementptr inbounds %struct.patch, %struct.patch* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = icmp slt i64 0, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %271
  %287 = load i64, i64* %16, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %291 = call i32 @error(i32 %290)
  store i32 %291, i32* %6, align 4
  br label %305

292:                                              ; preds = %286, %271
  %293 = load %struct.patch*, %struct.patch** %10, align 8
  %294 = getelementptr inbounds %struct.patch, %struct.patch* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = icmp slt i64 0, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %292
  %298 = load i64, i64* %17, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %302 = call i32 @error(i32 %301)
  store i32 %302, i32* %6, align 4
  br label %305

303:                                              ; preds = %297, %292
  %304 = load i32, i32* %15, align 4
  store i32 %304, i32* %6, align 4
  br label %305

305:                                              ; preds = %303, %300, %289, %251, %239, %214, %99, %94, %29
  %306 = load i32, i32* %6, align 4
  ret i32 %306
}

declare dso_local i32 @linelen(i8*, i64) #1

declare dso_local i32 @parse_fragment_header(i8*, i32, %struct.fragment*) #1

declare dso_local i32 @recount_diff(i8*, i64, %struct.fragment*) #1

declare dso_local i32 @check_old_for_crlf(%struct.patch*, i8*, i32) #1

declare dso_local i32 @check_whitespace(%struct.apply_state*, i8*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
