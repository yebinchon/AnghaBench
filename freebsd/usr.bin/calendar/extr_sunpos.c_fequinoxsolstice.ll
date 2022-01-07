; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_sunpos.c_fequinoxsolstice.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_sunpos.c_fequinoxsolstice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cumdaytab = common dso_local global i32** null, align 8
@SECSPERDAY = common dso_local global i32 0, align 4
@FSECSPERDAY = common dso_local global i32 0, align 4
@HOURSPERDAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fequinoxsolstice(i32 %0, double %1, double* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  store i32 0, i32* %16, align 4
  %23 = load i32**, i32*** @cumdaytab, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @isleap(i32 %24)
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %22, align 8
  store i32 18, i32* %13, align 4
  br label %28

28:                                               ; preds = %97, %4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 31
  br i1 %30, label %31, label %100

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load double, double* %6, align 8
  %35 = call i32 @sunpos(i32 %32, i32 3, i32 %33, double %34, i32 0, i32 0, i32 0, double 0.000000e+00, double 0.000000e+00, double* %11, double* %17)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  %39 = load double, double* %6, align 8
  %40 = call i32 @sunpos(i32 %36, i32 3, i32 %38, double %39, i32 0, i32 0, i32 0, double 0.000000e+00, double 0.000000e+00, double* %11, double* %18)
  %41 = load double, double* %17, align 8
  %42 = call i64 @SIGN(double %41)
  %43 = load double, double* %18, align 8
  %44 = call i64 @SIGN(double %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %97

47:                                               ; preds = %31
  %48 = load i32, i32* @SECSPERDAY, align 4
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* @SECSPERDAY, align 4
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %21, align 4
  br label %51

51:                                               ; preds = %80, %47
  %52 = load i32, i32* %21, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load double, double* %6, align 8
  %58 = load i32, i32* %20, align 4
  %59 = call i32 @SHOUR(i32 %58)
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @SMIN(i32 %60)
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @SSEC(i32 %62)
  %64 = call i32 @sunpos(i32 %55, i32 3, i32 %56, double %57, i32 %59, i32 %61, i32 %63, double 0.000000e+00, double 0.000000e+00, double* %11, double* %19)
  %65 = load double, double* %17, align 8
  %66 = call i64 @SIGN(double %65)
  %67 = load double, double* %19, align 8
  %68 = call i64 @SIGN(double %67)
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %54
  %71 = load double, double* %19, align 8
  store double %71, double* %17, align 8
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %20, align 4
  br label %80

75:                                               ; preds = %54
  %76 = load double, double* %19, align 8
  store double %76, double* %18, align 8
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %20, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %21, align 4
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %21, align 4
  br label %51

83:                                               ; preds = %51
  %84 = load i32*, i32** %22, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 1, %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* @FSECSPERDAY, align 4
  %92 = sdiv i32 %90, %91
  %93 = add nsw i32 %89, %92
  %94 = sitofp i32 %93 to double
  %95 = load double*, double** %7, align 8
  %96 = getelementptr inbounds double, double* %95, i64 0
  store double %94, double* %96, align 8
  br label %100

97:                                               ; preds = %46
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %28

100:                                              ; preds = %83, %28
  store i32 18, i32* %13, align 4
  br label %101

101:                                              ; preds = %170, %100
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 31
  br i1 %103, label %104, label %173

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load double, double* %6, align 8
  %108 = call i32 @sunpos(i32 %105, i32 9, i32 %106, double %107, i32 0, i32 0, i32 0, double 0.000000e+00, double 0.000000e+00, double* %11, double* %17)
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  %112 = load double, double* %6, align 8
  %113 = call i32 @sunpos(i32 %109, i32 9, i32 %111, double %112, i32 0, i32 0, i32 0, double 0.000000e+00, double 0.000000e+00, double* %11, double* %18)
  %114 = load double, double* %17, align 8
  %115 = call i64 @SIGN(double %114)
  %116 = load double, double* %18, align 8
  %117 = call i64 @SIGN(double %116)
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %104
  br label %170

120:                                              ; preds = %104
  %121 = load i32, i32* @SECSPERDAY, align 4
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* @SECSPERDAY, align 4
  %123 = sdiv i32 %122, 2
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %153, %120
  %125 = load i32, i32* %21, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %156

127:                                              ; preds = %124
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load double, double* %6, align 8
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @SHOUR(i32 %131)
  %133 = load i32, i32* %20, align 4
  %134 = call i32 @SMIN(i32 %133)
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @SSEC(i32 %135)
  %137 = call i32 @sunpos(i32 %128, i32 9, i32 %129, double %130, i32 %132, i32 %134, i32 %136, double 0.000000e+00, double 0.000000e+00, double* %11, double* %19)
  %138 = load double, double* %17, align 8
  %139 = call i64 @SIGN(double %138)
  %140 = load double, double* %19, align 8
  %141 = call i64 @SIGN(double %140)
  %142 = icmp eq i64 %139, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %127
  %144 = load double, double* %19, align 8
  store double %144, double* %17, align 8
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %20, align 4
  br label %153

148:                                              ; preds = %127
  %149 = load double, double* %19, align 8
  store double %149, double* %18, align 8
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %20, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %20, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %21, align 4
  %155 = sdiv i32 %154, 2
  store i32 %155, i32* %21, align 4
  br label %124

156:                                              ; preds = %124
  %157 = load i32*, i32** %22, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 9
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 1, %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* @FSECSPERDAY, align 4
  %165 = sdiv i32 %163, %164
  %166 = add nsw i32 %162, %165
  %167 = sitofp i32 %166 to double
  %168 = load double*, double** %7, align 8
  %169 = getelementptr inbounds double, double* %168, i64 1
  store double %167, double* %169, align 8
  br label %173

170:                                              ; preds = %119
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %101

173:                                              ; preds = %156, %101
  store i32 0, i32* %16, align 4
  store double 0.000000e+00, double* %10, align 8
  store i32 1, i32* %14, align 4
  store i32 18, i32* %13, align 4
  br label %174

174:                                              ; preds = %226, %173
  %175 = load i32, i32* %13, align 4
  %176 = icmp slt i32 %175, 31
  br i1 %176, label %177, label %229

177:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %178

178:                                              ; preds = %218, %177
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @HOURSPERDAY, align 4
  %181 = mul nsw i32 4, %180
  %182 = icmp slt i32 %179, %181
  br i1 %182, label %183, label %221

183:                                              ; preds = %178
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load double, double* %6, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @HOUR(i32 %187)
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @MIN(i32 %189)
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @SEC(i32 %191)
  %193 = call i32 @sunpos(i32 %184, i32 6, i32 %185, double %186, i32 %188, i32 %190, i32 %192, double 0.000000e+00, double 0.000000e+00, double* %11, double* %9)
  %194 = load double, double* %10, align 8
  %195 = load double, double* %9, align 8
  %196 = call i32 @ANGLE(double %194, double %195)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %183
  %201 = load i32*, i32** %22, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 6
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 1, %203
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %204, %205
  %207 = sitofp i32 %206 to double
  %208 = load i32, i32* %12, align 4
  %209 = sitofp i32 %208 to double
  %210 = fdiv double %209, 4.000000e+00
  %211 = fdiv double %210, 2.400000e+01
  %212 = fadd double %207, %211
  %213 = load double*, double** %8, align 8
  %214 = getelementptr inbounds double, double* %213, i64 0
  store double %212, double* %214, align 8
  store i32 1, i32* %16, align 4
  br label %221

215:                                              ; preds = %183
  %216 = load double, double* %9, align 8
  store double %216, double* %10, align 8
  %217 = load i32, i32* %15, align 4
  store i32 %217, i32* %14, align 4
  br label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %178

221:                                              ; preds = %200, %178
  %222 = load i32, i32* %16, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  br label %229

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  br label %174

229:                                              ; preds = %224, %174
  store i32 0, i32* %16, align 4
  store double 3.600000e+02, double* %10, align 8
  store i32 -1, i32* %14, align 4
  store i32 18, i32* %13, align 4
  br label %230

230:                                              ; preds = %282, %229
  %231 = load i32, i32* %13, align 4
  %232 = icmp slt i32 %231, 31
  br i1 %232, label %233, label %285

233:                                              ; preds = %230
  store i32 0, i32* %12, align 4
  br label %234

234:                                              ; preds = %274, %233
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* @HOURSPERDAY, align 4
  %237 = mul nsw i32 4, %236
  %238 = icmp slt i32 %235, %237
  br i1 %238, label %239, label %277

239:                                              ; preds = %234
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* %13, align 4
  %242 = load double, double* %6, align 8
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @HOUR(i32 %243)
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @MIN(i32 %245)
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @SEC(i32 %247)
  %249 = call i32 @sunpos(i32 %240, i32 12, i32 %241, double %242, i32 %244, i32 %246, i32 %248, double 0.000000e+00, double 0.000000e+00, double* %11, double* %9)
  %250 = load double, double* %10, align 8
  %251 = load double, double* %9, align 8
  %252 = call i32 @ANGLE(double %250, double %251)
  store i32 %252, i32* %15, align 4
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* %15, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %271

256:                                              ; preds = %239
  %257 = load i32*, i32** %22, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 12
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 1, %259
  %261 = load i32, i32* %13, align 4
  %262 = add nsw i32 %260, %261
  %263 = sitofp i32 %262 to double
  %264 = load i32, i32* %12, align 4
  %265 = sitofp i32 %264 to double
  %266 = fdiv double %265, 4.000000e+00
  %267 = fdiv double %266, 2.400000e+01
  %268 = fadd double %263, %267
  %269 = load double*, double** %8, align 8
  %270 = getelementptr inbounds double, double* %269, i64 1
  store double %268, double* %270, align 8
  store i32 1, i32* %16, align 4
  br label %277

271:                                              ; preds = %239
  %272 = load double, double* %9, align 8
  store double %272, double* %10, align 8
  %273 = load i32, i32* %15, align 4
  store i32 %273, i32* %14, align 4
  br label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %12, align 4
  br label %234

277:                                              ; preds = %256, %234
  %278 = load i32, i32* %16, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  br label %285

281:                                              ; preds = %277
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %13, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %13, align 4
  br label %230

285:                                              ; preds = %280, %230
  ret void
}

declare dso_local i64 @isleap(i32) #1

declare dso_local i32 @sunpos(i32, i32, i32, double, i32, i32, i32, double, double, double*, double*) #1

declare dso_local i64 @SIGN(double) #1

declare dso_local i32 @SHOUR(i32) #1

declare dso_local i32 @SMIN(i32) #1

declare dso_local i32 @SSEC(i32) #1

declare dso_local i32 @HOUR(i32) #1

declare dso_local i32 @MIN(i32) #1

declare dso_local i32 @SEC(i32) #1

declare dso_local i32 @ANGLE(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
