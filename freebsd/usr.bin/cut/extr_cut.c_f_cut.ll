; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_f_cut.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_f_cut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sflag = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@positions = common dso_local global i8* null, align 8
@maxval = common dso_local global i32 0, align 4
@dcharmb = common dso_local global i8* null, align 8
@wflag = common dso_local global i64 0, align 8
@autostop = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @f_cut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_cut(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %14, align 8
  br label %18

18:                                               ; preds = %291, %107, %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @fgetln(i32* %19, i64* %16)
  store i8* %20, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %293

22:                                               ; preds = %18
  %23 = load i64, i64* %16, align 8
  store i64 %23, i64* %17, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i64, i64* %16, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 10
  br i1 %30, label %31, label %50

31:                                               ; preds = %22
  %32 = load i64, i64* %16, align 8
  %33 = add i64 %32, 1
  %34 = call i8* @malloc(i64 %33)
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i64, i64* %16, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load i8*, i8** %14, align 8
  %45 = load i64, i64* %16, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 10, i8* %46, align 1
  %47 = load i8*, i8** %14, align 8
  store i8* %47, i8** %13, align 8
  %48 = load i64, i64* %17, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %17, align 8
  br label %50

50:                                               ; preds = %39, %22
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %51 = load i8*, i8** %13, align 8
  store i8* %51, i8** %11, align 8
  br label %52

52:                                               ; preds = %100, %50
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %17, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8*, i8** %11, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i64 @mbrtowc(i8* %6, i8* %53, i32 %61, i32* null)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp eq i64 %63, -1
  br i1 %64, label %68, label %65

65:                                               ; preds = %52
  %66 = load i64, i64* %15, align 8
  %67 = icmp eq i64 %66, -2
  br i1 %67, label %68, label %74

68:                                               ; preds = %65, %52
  %69 = load i32, i32* @EILSEQ, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @warnc(i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @free(i8* %72)
  store i32 1, i32* %3, align 4
  br label %296

74:                                               ; preds = %65
  %75 = load i64, i64* %15, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i64 1, i64* %15, align 8
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i8, i8* %6, align 1
  %80 = call i64 @is_delim(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i8, i8* %6, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @sflag, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %13, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i32, i32* @stdout, align 4
  %97 = call i32 @fwrite(i8* %94, i64 %95, i32 1, i32 %96)
  br label %98

98:                                               ; preds = %93, %90, %87
  br label %104

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %15, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %11, align 8
  br label %52

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %18

108:                                              ; preds = %104
  %109 = load i8*, i8** @positions, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8* %110, i8** %10, align 8
  %111 = load i32, i32* @maxval, align 4
  store i32 %111, i32* %7, align 4
  %112 = load i8*, i8** %13, align 8
  store i8* %112, i8** %11, align 8
  br label %113

113:                                              ; preds = %231, %108
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %236

116:                                              ; preds = %113
  %117 = load i8*, i8** %10, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %116
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  %124 = icmp ne i32 %122, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %121
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %141, %125
  %127 = load i8*, i8** @dcharmb, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %126
  %135 = load i8*, i8** @dcharmb, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = call i32 @putchar(i8 signext %139)
  br label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %126

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %121, %116
  br label %146

146:                                              ; preds = %224, %145
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = load i64, i64* %17, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load i8*, i8** %11, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = call i64 @mbrtowc(i8* %6, i8* %147, i32 %155, i32* null)
  store i64 %156, i64* %15, align 8
  %157 = load i64, i64* %15, align 8
  %158 = icmp eq i64 %157, -1
  br i1 %158, label %162, label %159

159:                                              ; preds = %146
  %160 = load i64, i64* %15, align 8
  %161 = icmp eq i64 %160, -2
  br i1 %161, label %162, label %168

162:                                              ; preds = %159, %146
  %163 = load i32, i32* @EILSEQ, align 4
  %164 = load i8*, i8** %5, align 8
  %165 = call i32 @warnc(i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %164)
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @free(i8* %166)
  store i32 1, i32* %3, align 4
  br label %296

168:                                              ; preds = %159
  %169 = load i64, i64* %15, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i64 1, i64* %15, align 8
  br label %172

172:                                              ; preds = %171, %168
  %173 = load i64, i64* %15, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8* %175, i8** %11, align 8
  %176 = load i8, i8* %6, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 10
  br i1 %178, label %183, label %179

179:                                              ; preds = %172
  %180 = load i8, i8* %6, align 1
  %181 = call i64 @is_delim(i8 signext %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %201

183:                                              ; preds = %179, %172
  %184 = load i64, i64* @wflag, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load i8, i8* %6, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 10
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  br label %191

191:                                              ; preds = %196, %190
  %192 = load i8*, i8** %11, align 8
  %193 = load i8, i8* %192, align 1
  %194 = call i64 @is_delim(i8 signext %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i8*, i8** %11, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %11, align 8
  br label %191

199:                                              ; preds = %191
  br label %200

200:                                              ; preds = %199, %186, %183
  br label %225

201:                                              ; preds = %179
  %202 = load i8*, i8** %10, align 8
  %203 = load i8, i8* %202, align 1
  %204 = icmp ne i8 %203, 0
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  store i32 0, i32* %8, align 4
  br label %206

206:                                              ; preds = %220, %205
  %207 = load i32, i32* %8, align 4
  %208 = load i64, i64* %15, align 8
  %209 = trunc i64 %208 to i32
  %210 = icmp slt i32 %207, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %206
  %212 = load i8*, i8** %11, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %15, align 8
  %216 = sub i64 %214, %215
  %217 = getelementptr inbounds i8, i8* %212, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = call i32 @putchar(i8 signext %218)
  br label %220

220:                                              ; preds = %211
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %206

223:                                              ; preds = %206
  br label %224

224:                                              ; preds = %223, %201
  br label %146

225:                                              ; preds = %200
  %226 = load i8, i8* %6, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 10
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  br label %236

230:                                              ; preds = %225
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %7, align 4
  %234 = load i8*, i8** %10, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %10, align 8
  br label %113

236:                                              ; preds = %229, %113
  %237 = load i8, i8* %6, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 10
  br i1 %239, label %240, label %291

240:                                              ; preds = %236
  %241 = load i64, i64* @autostop, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %279

243:                                              ; preds = %240
  %244 = load i32, i32* %12, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %266

246:                                              ; preds = %243
  store i32 0, i32* %8, align 4
  br label %247

247:                                              ; preds = %262, %246
  %248 = load i8*, i8** @dcharmb, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %247
  %256 = load i8*, i8** @dcharmb, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = call i32 @putchar(i8 signext %260)
  br label %262

262:                                              ; preds = %255
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %8, align 4
  br label %247

265:                                              ; preds = %247
  br label %266

266:                                              ; preds = %265, %243
  br label %267

267:                                              ; preds = %275, %266
  %268 = load i8*, i8** %11, align 8
  %269 = load i8, i8* %268, align 1
  store i8 %269, i8* %6, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 10
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = load i8, i8* %6, align 1
  %274 = call i32 @putchar(i8 signext %273)
  br label %275

275:                                              ; preds = %272
  %276 = load i8*, i8** %11, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %11, align 8
  br label %267

278:                                              ; preds = %267
  br label %290

279:                                              ; preds = %240
  br label %280

280:                                              ; preds = %286, %279
  %281 = load i8*, i8** %11, align 8
  %282 = load i8, i8* %281, align 1
  store i8 %282, i8* %6, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp ne i32 %283, 10
  br i1 %284, label %285, label %289

285:                                              ; preds = %280
  br label %286

286:                                              ; preds = %285
  %287 = load i8*, i8** %11, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %11, align 8
  br label %280

289:                                              ; preds = %280
  br label %290

290:                                              ; preds = %289, %278
  br label %291

291:                                              ; preds = %290, %236
  %292 = call i32 @putchar(i8 signext 10)
  br label %18

293:                                              ; preds = %18
  %294 = load i8*, i8** %14, align 8
  %295 = call i32 @free(i8* %294)
  store i32 0, i32* %3, align 4
  br label %296

296:                                              ; preds = %293, %162, %68
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @mbrtowc(i8*, i8*, i32, i32*) #1

declare dso_local i32 @warnc(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @is_delim(i8 signext) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
