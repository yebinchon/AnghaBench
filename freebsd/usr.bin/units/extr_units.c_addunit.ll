; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_addunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_addunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unittype = type { i32, double, double, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c".0123456789\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" *\09\0A/\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"0123456789.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"23456789\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" *\09/\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unittype*, i8*, i32, i32)* @addunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addunit(%struct.unittype* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.unittype*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store %struct.unittype* %0, %struct.unittype** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %298

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @dupstr(i8* %25)
  store i8* %26, i8** %10, align 8
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %14, align 8
  br label %29

29:                                               ; preds = %54, %24
  %30 = load i8*, i8** %14, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load i8*, i8** %14, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load i8, i8* %40, align 1
  %42 = call signext i8 @tolower(i8 signext %41)
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 101
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = call i8* @strchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 signext %48)
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %45, %38
  %52 = load i8*, i8** %14, align 8
  store i8 32, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %45, %33
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %14, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %14, align 8
  br label %29

57:                                               ; preds = %29
  %58 = load i8*, i8** %10, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 47)
  store i8* %59, i8** %14, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i8*, i8** %14, align 8
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %62, %57
  store i32 1, i32* %16, align 4
  br label %65

65:                                               ; preds = %292, %64
  %66 = load i8*, i8** %10, align 8
  %67 = call i8* @strtok(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %67, i8** %12, align 8
  br label %68

68:                                               ; preds = %278, %65
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %280

71:                                               ; preds = %68
  %72 = load i8*, i8** %12, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i8* @strchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8 signext %73)
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %222

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.unittype*, %struct.unittype** %6, align 8
  %81 = getelementptr inbounds %struct.unittype, %struct.unittype* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i8*, i8** %12, align 8
  %84 = call i8* @strchr(i8* %83, i8 signext 38)
  store i8* %84, i8** %15, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** %15, align 8
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = call double @atof(i8* %90)
  store double %91, double* %18, align 8
  br label %93

92:                                               ; preds = %82
  store double 0.000000e+00, double* %18, align 8
  br label %93

93:                                               ; preds = %92, %87
  %94 = load i8*, i8** %12, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 124)
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %173

98:                                               ; preds = %93
  %99 = load i8*, i8** %13, align 8
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %12, align 8
  %101 = call double @atof(i8* %100)
  store double %101, double* %17, align 8
  %102 = load double, double* %17, align 8
  %103 = fcmp une double %102, 0.000000e+00
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = call i32 (...) @zeroerror()
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @free(i8* %106)
  store i32 1, i32* %5, align 4
  br label %298

108:                                              ; preds = %98
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %8, align 4
  %111 = xor i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load double, double* %17, align 8
  %115 = load %struct.unittype*, %struct.unittype** %6, align 8
  %116 = getelementptr inbounds %struct.unittype, %struct.unittype* %115, i32 0, i32 1
  %117 = load double, double* %116, align 8
  %118 = fmul double %117, %114
  store double %118, double* %116, align 8
  %119 = load double, double* %17, align 8
  %120 = load %struct.unittype*, %struct.unittype** %6, align 8
  %121 = getelementptr inbounds %struct.unittype, %struct.unittype* %120, i32 0, i32 2
  %122 = load double, double* %121, align 8
  %123 = fmul double %122, %119
  store double %123, double* %121, align 8
  br label %135

124:                                              ; preds = %108
  %125 = load double, double* %17, align 8
  %126 = load %struct.unittype*, %struct.unittype** %6, align 8
  %127 = getelementptr inbounds %struct.unittype, %struct.unittype* %126, i32 0, i32 1
  %128 = load double, double* %127, align 8
  %129 = fdiv double %128, %125
  store double %129, double* %127, align 8
  %130 = load double, double* %17, align 8
  %131 = load %struct.unittype*, %struct.unittype** %6, align 8
  %132 = getelementptr inbounds %struct.unittype, %struct.unittype* %131, i32 0, i32 2
  %133 = load double, double* %132, align 8
  %134 = fdiv double %133, %130
  store double %134, double* %132, align 8
  br label %135

135:                                              ; preds = %124, %113
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = call double @atof(i8* %137)
  store double %138, double* %17, align 8
  %139 = load double, double* %17, align 8
  %140 = fcmp une double %139, 0.000000e+00
  br i1 %140, label %145, label %141

141:                                              ; preds = %135
  %142 = call i32 (...) @zeroerror()
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @free(i8* %143)
  store i32 1, i32* %5, align 4
  br label %298

145:                                              ; preds = %135
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %8, align 4
  %148 = xor i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load double, double* %17, align 8
  %152 = load %struct.unittype*, %struct.unittype** %6, align 8
  %153 = getelementptr inbounds %struct.unittype, %struct.unittype* %152, i32 0, i32 1
  %154 = load double, double* %153, align 8
  %155 = fdiv double %154, %151
  store double %155, double* %153, align 8
  %156 = load double, double* %17, align 8
  %157 = load %struct.unittype*, %struct.unittype** %6, align 8
  %158 = getelementptr inbounds %struct.unittype, %struct.unittype* %157, i32 0, i32 2
  %159 = load double, double* %158, align 8
  %160 = fdiv double %159, %156
  store double %160, double* %158, align 8
  br label %172

161:                                              ; preds = %145
  %162 = load double, double* %17, align 8
  %163 = load %struct.unittype*, %struct.unittype** %6, align 8
  %164 = getelementptr inbounds %struct.unittype, %struct.unittype* %163, i32 0, i32 1
  %165 = load double, double* %164, align 8
  %166 = fmul double %165, %162
  store double %166, double* %164, align 8
  %167 = load double, double* %17, align 8
  %168 = load %struct.unittype*, %struct.unittype** %6, align 8
  %169 = getelementptr inbounds %struct.unittype, %struct.unittype* %168, i32 0, i32 2
  %170 = load double, double* %169, align 8
  %171 = fmul double %170, %167
  store double %171, double* %169, align 8
  br label %172

172:                                              ; preds = %161, %150
  br label %210

173:                                              ; preds = %93
  %174 = load i8*, i8** %12, align 8
  %175 = call double @atof(i8* %174)
  store double %175, double* %17, align 8
  %176 = load double, double* %17, align 8
  %177 = fcmp une double %176, 0.000000e+00
  br i1 %177, label %182, label %178

178:                                              ; preds = %173
  %179 = call i32 (...) @zeroerror()
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @free(i8* %180)
  store i32 1, i32* %5, align 4
  br label %298

182:                                              ; preds = %173
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %8, align 4
  %185 = xor i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %182
  %188 = load double, double* %17, align 8
  %189 = load %struct.unittype*, %struct.unittype** %6, align 8
  %190 = getelementptr inbounds %struct.unittype, %struct.unittype* %189, i32 0, i32 1
  %191 = load double, double* %190, align 8
  %192 = fmul double %191, %188
  store double %192, double* %190, align 8
  %193 = load double, double* %17, align 8
  %194 = load %struct.unittype*, %struct.unittype** %6, align 8
  %195 = getelementptr inbounds %struct.unittype, %struct.unittype* %194, i32 0, i32 2
  %196 = load double, double* %195, align 8
  %197 = fmul double %196, %193
  store double %197, double* %195, align 8
  br label %209

198:                                              ; preds = %182
  %199 = load double, double* %17, align 8
  %200 = load %struct.unittype*, %struct.unittype** %6, align 8
  %201 = getelementptr inbounds %struct.unittype, %struct.unittype* %200, i32 0, i32 1
  %202 = load double, double* %201, align 8
  %203 = fdiv double %202, %199
  store double %203, double* %201, align 8
  %204 = load double, double* %17, align 8
  %205 = load %struct.unittype*, %struct.unittype** %6, align 8
  %206 = getelementptr inbounds %struct.unittype, %struct.unittype* %205, i32 0, i32 2
  %207 = load double, double* %206, align 8
  %208 = fdiv double %207, %204
  store double %208, double* %206, align 8
  br label %209

209:                                              ; preds = %198, %187
  br label %210

210:                                              ; preds = %209, %172
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %8, align 4
  %213 = xor i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load double, double* %18, align 8
  %217 = load %struct.unittype*, %struct.unittype** %6, align 8
  %218 = getelementptr inbounds %struct.unittype, %struct.unittype* %217, i32 0, i32 2
  %219 = load double, double* %218, align 8
  %220 = fadd double %219, %216
  store double %220, double* %218, align 8
  br label %221

221:                                              ; preds = %215, %210
  br label %278

222:                                              ; preds = %71
  store i32 1, i32* %19, align 4
  %223 = load i8*, i8** %12, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = call i32 @strlen(i8* %224)
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %223, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8 signext %229)
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %248

232:                                              ; preds = %222
  %233 = load i8*, i8** %12, align 8
  %234 = load i8*, i8** %12, align 8
  %235 = call i32 @strlen(i8* %234)
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %233, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = sub nsw i32 %240, 48
  store i32 %241, i32* %19, align 4
  %242 = load i8*, i8** %12, align 8
  %243 = load i8*, i8** %12, align 8
  %244 = call i32 @strlen(i8* %243)
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %242, i64 %246
  store i8 0, i8* %247, align 1
  br label %248

248:                                              ; preds = %232, %222
  br label %249

249:                                              ; preds = %274, %248
  %250 = load i32, i32* %19, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %277

252:                                              ; preds = %249
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %8, align 4
  %255 = xor i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = load %struct.unittype*, %struct.unittype** %6, align 8
  %259 = getelementptr inbounds %struct.unittype, %struct.unittype* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  br label %265

261:                                              ; preds = %252
  %262 = load %struct.unittype*, %struct.unittype** %6, align 8
  %263 = getelementptr inbounds %struct.unittype, %struct.unittype* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  br label %265

265:                                              ; preds = %261, %257
  %266 = phi i32 [ %260, %257 ], [ %264, %261 ]
  %267 = load i8*, i8** %12, align 8
  %268 = call i64 @addsubunit(i32 %266, i8* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i8*, i8** %11, align 8
  %272 = call i32 @free(i8* %271)
  store i32 1, i32* %5, align 4
  br label %298

273:                                              ; preds = %265
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %19, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %19, align 4
  br label %249

277:                                              ; preds = %249
  br label %278

278:                                              ; preds = %277, %221
  %279 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %279, i8** %12, align 8
  br label %68

280:                                              ; preds = %68
  %281 = load i32, i32* %16, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %16, align 4
  %283 = load i8*, i8** %14, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load i8*, i8** %14, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 1
  store i8* %287, i8** %10, align 8
  br label %291

288:                                              ; preds = %280
  %289 = load i32, i32* %16, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %16, align 4
  br label %291

291:                                              ; preds = %288, %285
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %16, align 4
  %294 = icmp sge i32 %293, 0
  br i1 %294, label %65, label %295

295:                                              ; preds = %292
  %296 = load i8*, i8** %11, align 8
  %297 = call i32 @free(i8* %296)
  store i32 0, i32* %5, align 4
  br label %298

298:                                              ; preds = %295, %270, %178, %141, %104, %23
  %299 = load i32, i32* %5, align 4
  ret i32 %299
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @dupstr(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @zeroerror(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @addsubunit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
