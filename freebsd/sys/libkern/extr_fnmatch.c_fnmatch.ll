; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_fnmatch.c_fnmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_fnmatch.c_fnmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNM_LEADING_DIR = common dso_local global i32 0, align 4
@FNM_NOMATCH = common dso_local global i32 0, align 4
@FNM_PATHNAME = common dso_local global i32 0, align 4
@FNM_PERIOD = common dso_local global i32 0, align 4
@FNM_NOESCAPE = common dso_local global i32 0, align 4
@FNM_CASEFOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnmatch(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %302, %3
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  %16 = load i8, i8* %14, align 1
  store i8 %16, i8* %10, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %274 [
    i32 131, label %18
    i32 63, label %39
    i32 42, label %88
    i32 91, label %198
    i32 92, label %258
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @FNM_LEADING_DIR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %303

29:                                               ; preds = %23, %18
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 131
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @FNM_NOMATCH, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 0, %34 ], [ %36, %35 ]
  store i32 %38, i32* %4, align 4
  br label %303

39:                                               ; preds = %13
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 131
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %45, i32* %4, align 4
  br label %303

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FNM_PATHNAME, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %57, i32* %4, align 4
  br label %303

58:                                               ; preds = %51, %46
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @FNM_PERIOD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @FNM_PATHNAME, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 -1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 47
  br i1 %82, label %83, label %85

83:                                               ; preds = %77, %68
  %84 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %84, i32* %4, align 4
  br label %303

85:                                               ; preds = %77, %72, %63, %58
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  br label %302

88:                                               ; preds = %13
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  store i8 %90, i8* %10, align 1
  br label %91

91:                                               ; preds = %95, %88
  %92 = load i8, i8* %10, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 42
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %5, align 8
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %10, align 1
  br label %91

99:                                               ; preds = %91
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 46
  br i1 %103, label %104, label %126

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @FNM_PERIOD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load i8*, i8** %6, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = icmp eq i8* %110, %111
  br i1 %112, label %124, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @FNM_PATHNAME, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 -1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 47
  br i1 %123, label %124, label %126

124:                                              ; preds = %118, %109
  %125 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %125, i32* %4, align 4
  br label %303

126:                                              ; preds = %118, %113, %104, %99
  %127 = load i8, i8* %10, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 131
  br i1 %129, label %130, label %150

130:                                              ; preds = %126
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @FNM_PATHNAME, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @FNM_LEADING_DIR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %6, align 8
  %142 = call i8* @strchr(i8* %141, i8 signext 47)
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %140, %135
  br label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @FNM_NOMATCH, align 4
  br label %147

147:                                              ; preds = %145, %144
  %148 = phi i32 [ 0, %144 ], [ %146, %145 ]
  store i32 %148, i32* %4, align 4
  br label %303

149:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %303

150:                                              ; preds = %126
  %151 = load i8, i8* %10, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 47
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @FNM_PATHNAME, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i8*, i8** %6, align 8
  %161 = call i8* @strchr(i8* %160, i8 signext 47)
  store i8* %161, i8** %6, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %164, i32* %4, align 4
  br label %303

165:                                              ; preds = %159
  br label %302

166:                                              ; preds = %154, %150
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %193, %167
  %169 = load i8*, i8** %6, align 8
  %170 = load i8, i8* %169, align 1
  store i8 %170, i8* %11, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 131
  br i1 %172, label %173, label %196

173:                                              ; preds = %168
  %174 = load i8*, i8** %5, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @FNM_PERIOD, align 4
  %178 = xor i32 %177, -1
  %179 = and i32 %176, %178
  %180 = call i32 @fnmatch(i8* %174, i8* %175, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %303

183:                                              ; preds = %173
  %184 = load i8, i8* %11, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 47
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @FNM_PATHNAME, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %196

193:                                              ; preds = %187, %183
  %194 = load i8*, i8** %6, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %6, align 8
  br label %168

196:                                              ; preds = %192, %168
  %197 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %197, i32* %4, align 4
  br label %303

198:                                              ; preds = %13
  %199 = load i8*, i8** %6, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 131
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %204, i32* %4, align 4
  br label %303

205:                                              ; preds = %198
  %206 = load i8*, i8** %6, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 47
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @FNM_PATHNAME, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %216, i32* %4, align 4
  br label %303

217:                                              ; preds = %210, %205
  %218 = load i8*, i8** %6, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 46
  br i1 %221, label %222, label %244

222:                                              ; preds = %217
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @FNM_PERIOD, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %244

227:                                              ; preds = %222
  %228 = load i8*, i8** %6, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = icmp eq i8* %228, %229
  br i1 %230, label %242, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @FNM_PATHNAME, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load i8*, i8** %6, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 -1
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 47
  br i1 %241, label %242, label %244

242:                                              ; preds = %236, %227
  %243 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %243, i32* %4, align 4
  br label %303

244:                                              ; preds = %236, %231, %222, %217
  %245 = load i8*, i8** %5, align 8
  %246 = load i8*, i8** %6, align 8
  %247 = load i8, i8* %246, align 1
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @rangematch(i8* %245, i8 signext %247, i32 %248, i8** %9)
  switch i32 %249, label %255 [
    i32 130, label %250
    i32 129, label %251
    i32 128, label %253
  ]

250:                                              ; preds = %244
  br label %275

251:                                              ; preds = %244
  %252 = load i8*, i8** %9, align 8
  store i8* %252, i8** %5, align 8
  br label %255

253:                                              ; preds = %244
  %254 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %254, i32* %4, align 4
  br label %303

255:                                              ; preds = %244, %251
  %256 = load i8*, i8** %6, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %6, align 8
  br label %302

258:                                              ; preds = %13
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* @FNM_NOESCAPE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %273, label %263

263:                                              ; preds = %258
  %264 = load i8*, i8** %5, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %5, align 8
  %266 = load i8, i8* %264, align 1
  store i8 %266, i8* %10, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 131
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  store i8 92, i8* %10, align 1
  %270 = load i8*, i8** %5, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 -1
  store i8* %271, i8** %5, align 8
  br label %272

272:                                              ; preds = %269, %263
  br label %273

273:                                              ; preds = %272, %258
  br label %274

274:                                              ; preds = %13, %273
  br label %275

275:                                              ; preds = %274, %250
  %276 = load i8, i8* %10, align 1
  %277 = sext i8 %276 to i32
  %278 = load i8*, i8** %6, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %277, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  br label %299

283:                                              ; preds = %275
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* @FNM_CASEFOLD, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %283
  %289 = load i8, i8* %10, align 1
  %290 = call i32 @tolower(i8 zeroext %289)
  %291 = load i8*, i8** %6, align 8
  %292 = load i8, i8* %291, align 1
  %293 = call i32 @tolower(i8 zeroext %292)
  %294 = icmp eq i32 %290, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %288
  br label %298

296:                                              ; preds = %288, %283
  %297 = load i32, i32* @FNM_NOMATCH, align 4
  store i32 %297, i32* %4, align 4
  br label %303

298:                                              ; preds = %295
  br label %299

299:                                              ; preds = %298, %282
  %300 = load i8*, i8** %6, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %6, align 8
  br label %302

302:                                              ; preds = %299, %255, %165, %85
  br label %13

303:                                              ; preds = %296, %253, %242, %215, %203, %196, %182, %163, %149, %147, %124, %83, %56, %44, %37, %28
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @rangematch(i8*, i8 signext, i32, i8**) #1

declare dso_local i32 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
