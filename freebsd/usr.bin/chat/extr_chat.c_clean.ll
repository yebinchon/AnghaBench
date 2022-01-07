; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STR_LEN = common dso_local global i32 0, align 4
@phone_num = common dso_local global i8* null, align 8
@phone_num2 = common dso_local global i8* null, align 8
@quiet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @clean(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @STR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %10, align 4
  store i8* %14, i8** %8, align 8
  br label %16

16:                                               ; preds = %296, %69, %64, %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = ptrtoint i8* %14 to i64
  %25 = sub i64 %23, %24
  %26 = sub i64 %12, 2
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %26, %28
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %25, %31
  br label %33

33:                                               ; preds = %21, %16
  %34 = phi i1 [ false, %16 ], [ %32, %21 ]
  br i1 %34, label %35, label %297

35:                                               ; preds = %33
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %3, align 8
  %38 = load i8, i8* %36, align 1
  store i8 %38, i8* %7, align 1
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 94
  br i1 %41, label %42, label %65

42:                                               ; preds = %35
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %7, align 1
  %46 = load i8, i8* %7, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  store i8 94, i8* %50, align 1
  br label %297

52:                                               ; preds = %42
  %53 = load i8, i8* %7, align 1
  %54 = sext i8 %53 to i32
  %55 = and i32 %54, 31
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i8, i8* %7, align 1
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  store i8 %61, i8* %62, align 1
  br label %64

64:                                               ; preds = %60, %52
  br label %16

65:                                               ; preds = %35
  %66 = load i8, i8* %7, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 92
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8, i8* %7, align 1
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  store i8 %70, i8* %71, align 1
  br label %16

73:                                               ; preds = %65
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %3, align 8
  %76 = load i8, i8* %74, align 1
  store i8 %76, i8* %7, align 1
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  store i8 92, i8* %84, align 1
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  store i8 92, i8* %86, align 1
  br label %88

88:                                               ; preds = %83, %80
  br label %297

89:                                               ; preds = %73
  %90 = load i8, i8* %7, align 1
  %91 = sext i8 %90 to i32
  switch i32 %91, label %200 [
    i32 98, label %92
    i32 99, label %95
    i32 92, label %109
    i32 75, label %109
    i32 112, label %109
    i32 100, label %109
    i32 84, label %119
    i32 85, label %147
    i32 113, label %175
    i32 114, label %176
    i32 110, label %179
    i32 115, label %182
    i32 116, label %185
    i32 78, label %188
  ]

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  store i8 8, i8* %93, align 1
  br label %296

95:                                               ; preds = %89
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i8*, i8** %3, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %108

104:                                              ; preds = %98, %95
  %105 = load i8, i8* %7, align 1
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %8, align 8
  store i8 %105, i8* %106, align 1
  br label %108

108:                                              ; preds = %104, %103
  br label %296

109:                                              ; preds = %89, %89, %89, %89
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %8, align 8
  store i8 92, i8* %113, align 1
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i8, i8* %7, align 1
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %8, align 8
  store i8 %116, i8* %117, align 1
  br label %296

119:                                              ; preds = %89
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %119
  %123 = load i8*, i8** @phone_num, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load i8*, i8** @phone_num, align 8
  store i8* %126, i8** %9, align 8
  br label %127

127:                                              ; preds = %137, %125
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load i8*, i8** %9, align 8
  %134 = load i8, i8* %133, align 1
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  store i8 %134, i8* %135, align 1
  br label %137

137:                                              ; preds = %132
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %9, align 8
  br label %127

140:                                              ; preds = %127
  br label %146

141:                                              ; preds = %122, %119
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %8, align 8
  store i8 92, i8* %142, align 1
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %8, align 8
  store i8 84, i8* %144, align 1
  br label %146

146:                                              ; preds = %141, %140
  br label %296

147:                                              ; preds = %89
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %147
  %151 = load i8*, i8** @phone_num2, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  %154 = load i8*, i8** @phone_num2, align 8
  store i8* %154, i8** %9, align 8
  br label %155

155:                                              ; preds = %165, %153
  %156 = load i8*, i8** %9, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load i8*, i8** %9, align 8
  %162 = load i8, i8* %161, align 1
  %163 = load i8*, i8** %8, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %8, align 8
  store i8 %162, i8* %163, align 1
  br label %165

165:                                              ; preds = %160
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %9, align 8
  br label %155

168:                                              ; preds = %155
  br label %174

169:                                              ; preds = %150, %147
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %8, align 8
  store i8 92, i8* %170, align 1
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %8, align 8
  store i8 85, i8* %172, align 1
  br label %174

174:                                              ; preds = %169, %168
  br label %296

175:                                              ; preds = %89
  store i32 1, i32* @quiet, align 4
  br label %296

176:                                              ; preds = %89
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %8, align 8
  store i8 13, i8* %177, align 1
  br label %296

179:                                              ; preds = %89
  %180 = load i8*, i8** %8, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %8, align 8
  store i8 10, i8* %180, align 1
  br label %296

182:                                              ; preds = %89
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %8, align 8
  store i8 32, i8* %183, align 1
  br label %296

185:                                              ; preds = %89
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %8, align 8
  store i8 9, i8* %186, align 1
  br label %296

188:                                              ; preds = %89
  %189 = load i32, i32* %4, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %8, align 8
  store i8 92, i8* %192, align 1
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %8, align 8
  store i8 0, i8* %194, align 1
  br label %199

196:                                              ; preds = %188
  %197 = load i8*, i8** %8, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %8, align 8
  store i8 78, i8* %197, align 1
  br label %199

199:                                              ; preds = %196, %191
  br label %296

200:                                              ; preds = %89
  %201 = load i8, i8* %7, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp sge i32 %202, 48
  br i1 %203, label %204, label %286

204:                                              ; preds = %200
  %205 = load i8, i8* %7, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp sle i32 %206, 55
  br i1 %207, label %208, label %286

208:                                              ; preds = %204
  %209 = load i8, i8* %7, align 1
  %210 = sext i8 %209 to i32
  %211 = and i32 %210, 7
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %7, align 1
  %213 = load i8*, i8** %3, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp sge i32 %215, 48
  br i1 %216, label %217, label %260

217:                                              ; preds = %208
  %218 = load i8*, i8** %3, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp sle i32 %220, 55
  br i1 %221, label %222, label %260

222:                                              ; preds = %217
  %223 = load i8, i8* %7, align 1
  %224 = sext i8 %223 to i32
  %225 = shl i32 %224, 3
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %7, align 1
  %227 = load i8*, i8** %3, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %3, align 8
  %229 = load i8, i8* %227, align 1
  %230 = sext i8 %229 to i32
  %231 = sub nsw i32 %230, 48
  %232 = load i8, i8* %7, align 1
  %233 = sext i8 %232 to i32
  %234 = or i32 %233, %231
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %7, align 1
  %236 = load i8*, i8** %3, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp sge i32 %238, 48
  br i1 %239, label %240, label %259

240:                                              ; preds = %222
  %241 = load i8*, i8** %3, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp sle i32 %243, 55
  br i1 %244, label %245, label %259

245:                                              ; preds = %240
  %246 = load i8, i8* %7, align 1
  %247 = sext i8 %246 to i32
  %248 = shl i32 %247, 3
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %7, align 1
  %250 = load i8*, i8** %3, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %3, align 8
  %252 = load i8, i8* %250, align 1
  %253 = sext i8 %252 to i32
  %254 = sub nsw i32 %253, 48
  %255 = load i8, i8* %7, align 1
  %256 = sext i8 %255 to i32
  %257 = or i32 %256, %254
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %7, align 1
  br label %259

259:                                              ; preds = %245, %240, %222
  br label %260

260:                                              ; preds = %259, %217, %208
  %261 = load i8, i8* %7, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %260
  %265 = load i32, i32* %4, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %285

267:                                              ; preds = %264, %260
  %268 = load i32, i32* %4, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %267
  %271 = load i8, i8* %7, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 92
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = load i8, i8* %7, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %274, %270
  %279 = load i8*, i8** %8, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %8, align 8
  store i8 92, i8* %279, align 1
  br label %281

281:                                              ; preds = %278, %274, %267
  %282 = load i8, i8* %7, align 1
  %283 = load i8*, i8** %8, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %8, align 8
  store i8 %282, i8* %283, align 1
  br label %285

285:                                              ; preds = %281, %264
  br label %296

286:                                              ; preds = %204, %200
  %287 = load i32, i32* %4, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i8*, i8** %8, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %8, align 8
  store i8 92, i8* %290, align 1
  br label %292

292:                                              ; preds = %289, %286
  %293 = load i8, i8* %7, align 1
  %294 = load i8*, i8** %8, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %8, align 8
  store i8 %293, i8* %294, align 1
  br label %296

296:                                              ; preds = %292, %285, %199, %185, %182, %179, %176, %175, %174, %146, %115, %108, %92
  br label %16

297:                                              ; preds = %88, %49, %33
  %298 = load i32, i32* %10, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i8*, i8** %8, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %8, align 8
  store i8 13, i8* %301, align 1
  br label %303

303:                                              ; preds = %300, %297
  %304 = load i8*, i8** %8, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %8, align 8
  store i8 0, i8* %304, align 1
  %306 = load i8*, i8** %8, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %8, align 8
  store i8 0, i8* %306, align 1
  %308 = load i8*, i8** %8, align 8
  %309 = ptrtoint i8* %308 to i64
  %310 = ptrtoint i8* %14 to i64
  %311 = sub i64 %309, %310
  %312 = call i8* @dup_mem(i8* %14, i64 %311)
  %313 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %313)
  ret i8* %312
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @dup_mem(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
