; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_monthrangeb.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_monthrangeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.monthlines = type { i32*, i64*, i32* }
%struct.weekdays = type { i8** }

@MAX_WIDTH = common dso_local global i32 0, align 4
@MONTH_WIDTH_B_J = common dso_local global i32 0, align 4
@MONTH_WIDTH_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i32] [i32 37, i32 45, i32 42, i32 108, i32 115, i32 32, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [8 x i32] [i32 37, i32 45, i32 108, i32 115, i32 32, i32 37, i32 100, i32 0], align 4
@.str.7 = private unnamed_addr constant [37 x i32] [i32 37, i32 115, i32 37, i32 108, i32 115, i32 37, i32 115, i32 37, i32 108, i32 115, i32 37, i32 115, i32 37, i32 108, i32 115, i32 37, i32 115, i32 37, i32 108, i32 115, i32 37, i32 115, i32 37, i32 108, i32 115, i32 37, i32 115, i32 37, i32 108, i32 115, i32 37, i32 115, i32 37, i32 108, i32 115, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%-*s  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @monthrangeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monthrangeb(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [12 x %struct.monthlines], align 16
  %12 = alloca %struct.weekdays, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %28 = load i32, i32* @MAX_WIDTH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %32 = load i32, i32* @MAX_WIDTH, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %35 = load i32, i32* @MAX_WIDTH, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  %38 = load i32, i32* @MAX_WIDTH, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %17, align 8
  store i32 -1, i32* %26, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 3
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i32, i32* @MONTH_WIDTH_B_J, align 4
  br label %51

49:                                               ; preds = %5
  %50 = load i32, i32* @MONTH_WIDTH_B, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp eq i32 %53, 2
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %56, i8** %18, align 8
  br label %57

57:                                               ; preds = %60, %51
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @DECREASEMONTH(i32 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %57

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %69, 12
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %24, align 4
  %77 = call i32 @mkweekdays(%struct.weekdays* %12)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %21, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp sge i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %68
  %83 = load i32, i32* %23, align 4
  %84 = call i32 @M2M(i32 %83)
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* %21, align 4
  %87 = srem i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %82, %68
  %90 = phi i1 [ false, %68 ], [ %88, %82 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %25, align 4
  %92 = load i32, i32* %23, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %283, %89
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %24, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %287

97:                                               ; preds = %93
  store i32 0, i32* %27, align 4
  store i32 0, i32* %19, align 4
  br label %98

98:                                               ; preds = %128, %97
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %21, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %19, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %24, align 4
  %107 = icmp sle i32 %105, %106
  br label %108

108:                                              ; preds = %102, %98
  %109 = phi i1 [ false, %98 ], [ %107, %102 ]
  br i1 %109, label %110, label %131

110:                                              ; preds = %108
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @M2Y(i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @M2M(i32 %117)
  %119 = sub nsw i32 %118, 1
  %120 = load i32, i32* %8, align 4
  %121 = getelementptr inbounds [12 x %struct.monthlines], [12 x %struct.monthlines]* %11, i64 0, i64 0
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %121, i64 %123
  %125 = call i32 @mkmonthb(i32 %114, i32 %119, i32 %120, %struct.monthlines* %124)
  %126 = load i32, i32* %27, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %27, align 4
  br label %128

128:                                              ; preds = %110
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %98

131:                                              ; preds = %108
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %23, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %131
  %138 = load i32, i32* %25, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @M2Y(i32 %141)
  %143 = load i32, i32* %26, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @M2Y(i32 %146)
  %148 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %22, align 4
  %151 = mul nsw i32 %149, %150
  %152 = call i8* @center(i8* %34, i8* %31, i32 %151)
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @M2Y(i32 %154)
  store i32 %155, i32* %26, align 4
  br label %156

156:                                              ; preds = %145, %140, %137
  store i32 0, i32* %19, align 4
  br label %157

157:                                              ; preds = %193, %156
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %27, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %196

161:                                              ; preds = %157
  %162 = load i32, i32* %25, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [12 x %struct.monthlines], [12 x %struct.monthlines]* %11, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %22, align 4
  %172 = call i32 @wcenter(i32* %37, i32* %170, i32 %171)
  %173 = call i32 (i8*, ...) @wprintf(i8* bitcast ([8 x i32]* @.str.5 to i8*), i32 %165, i32 %172)
  br label %192

174:                                              ; preds = %161
  %175 = mul nuw i64 4, %36
  %176 = udiv i64 %175, 4
  %177 = trunc i64 %176 to i32
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [12 x %struct.monthlines], [12 x %struct.monthlines]* %11, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %19, align 4
  %185 = add nsw i32 %183, %184
  %186 = call i32 @M2Y(i32 %185)
  %187 = call i32 @swprintf(i32* %37, i32 %177, i8* bitcast ([8 x i32]* @.str.6 to i8*), i32* %182, i32 %186)
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* %22, align 4
  %190 = call i32 @wcenter(i32* %40, i32* %37, i32 %189)
  %191 = call i32 (i8*, ...) @wprintf(i8* bitcast ([8 x i32]* @.str.5 to i8*), i32 %188, i32 %190)
  br label %192

192:                                              ; preds = %174, %164
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %19, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %19, align 4
  br label %157

196:                                              ; preds = %157
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %198

198:                                              ; preds = %239, %196
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %27, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %242

202:                                              ; preds = %198
  %203 = load i8*, i8** %18, align 8
  %204 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %12, i32 0, i32 0
  %205 = load i8**, i8*** %204, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 6
  %207 = load i8*, i8** %206, align 8
  %208 = load i8*, i8** %18, align 8
  %209 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %12, i32 0, i32 0
  %210 = load i8**, i8*** %209, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** %18, align 8
  %214 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %12, i32 0, i32 0
  %215 = load i8**, i8*** %214, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 1
  %217 = load i8*, i8** %216, align 8
  %218 = load i8*, i8** %18, align 8
  %219 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %12, i32 0, i32 0
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 2
  %222 = load i8*, i8** %221, align 8
  %223 = load i8*, i8** %18, align 8
  %224 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %12, i32 0, i32 0
  %225 = load i8**, i8*** %224, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 3
  %227 = load i8*, i8** %226, align 8
  %228 = load i8*, i8** %18, align 8
  %229 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %12, i32 0, i32 0
  %230 = load i8**, i8*** %229, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 4
  %232 = load i8*, i8** %231, align 8
  %233 = load i8*, i8** %18, align 8
  %234 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %12, i32 0, i32 0
  %235 = load i8**, i8*** %234, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 5
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 (i8*, ...) @wprintf(i8* bitcast ([37 x i32]* @.str.7 to i8*), i8* %203, i8* %207, i8* %208, i8* %212, i8* %213, i8* %217, i8* %218, i8* %222, i8* %223, i8* %227, i8* %228, i8* %232, i8* %233, i8* %237)
  br label %239

239:                                              ; preds = %202
  %240 = load i32, i32* %19, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %19, align 4
  br label %198

242:                                              ; preds = %198
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %244

244:                                              ; preds = %280, %242
  %245 = load i32, i32* %19, align 4
  %246 = icmp ne i32 %245, 6
  br i1 %246, label %247, label %283

247:                                              ; preds = %244
  store i32 0, i32* %20, align 4
  br label %248

248:                                              ; preds = %275, %247
  %249 = load i32, i32* %20, align 4
  %250 = load i32, i32* %27, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %278

252:                                              ; preds = %248
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* %20, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [12 x %struct.monthlines], [12 x %struct.monthlines]* %11, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %19, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @MW(i32 %253, i32 %262)
  %264 = load i32, i32* %20, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [12 x %struct.monthlines], [12 x %struct.monthlines]* %11, i64 0, i64 %265
  %267 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %266, i32 0, i32 1
  %268 = load i64*, i64** %267, align 8
  %269 = load i32, i32* %19, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %272, 1
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %263, i64 %273)
  br label %275

275:                                              ; preds = %252
  %276 = load i32, i32* %20, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %20, align 4
  br label %248

278:                                              ; preds = %248
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %280

280:                                              ; preds = %278
  %281 = load i32, i32* %19, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %19, align 4
  br label %244

283:                                              ; preds = %244
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* %7, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %7, align 4
  br label %93

287:                                              ; preds = %93
  %288 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %288)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DECREASEMONTH(i32, i32) #2

declare dso_local i32 @mkweekdays(%struct.weekdays*) #2

declare dso_local i32 @M2M(i32) #2

declare dso_local i32 @mkmonthb(i32, i32, i32, %struct.monthlines*) #2

declare dso_local i32 @M2Y(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i8* @center(i8*, i8*, i32) #2

declare dso_local i32 @wprintf(i8*, ...) #2

declare dso_local i32 @wcenter(i32*, i32*, i32) #2

declare dso_local i32 @swprintf(i32*, i32, i8*, i32*, i32) #2

declare dso_local i8* @MW(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
