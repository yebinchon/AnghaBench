; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_pnpparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_pnpparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PNP0F01\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PNP0F04\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MOUSE\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"non-PnP mouse '%c'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"PnP ID string: '%*.*s'\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"PnP rev %d.%02d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"PnP checksum: 0x%X\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32)* @pnpparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpparse(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8 0, i8* %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i8* null, i8** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i8* null, i8** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store i8* null, i8** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i8* null, i8** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  store i8* null, i8** %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 7
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 8
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 9
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 10
  store i32 0, i32* %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 40
  br i1 %39, label %40, label %82

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 8
  br i1 %45, label %46, label %82

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %51 [
    i32 77, label %53
    i32 72, label %56
  ]

51:                                               ; preds = %46
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %4, align 4
  br label %450

53:                                               ; preds = %46
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %55, align 8
  br label %59

56:                                               ; preds = %46
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @strlen(i8* %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strlen(i8* %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %4, align 4
  br label %450

82:                                               ; preds = %40, %3
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = sub nsw i32 40, %86
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %111, %82
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 3
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = add nsw i32 %108, %102
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %106, align 1
  br label %111

111:                                              ; preds = %93
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %88

114:                                              ; preds = %88
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %138, %114
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = add nsw i32 %135, %129
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %133, align 1
  br label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %124

141:                                              ; preds = %124
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %142, i32 %143, i8* %144)
  %146 = load i32, i32* %9, align 4
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = sub nsw i32 %150, %146
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %148, align 1
  %153 = load i32, i32* %9, align 4
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = sub nsw i32 %157, %153
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %155, align 1
  %160 = load i8*, i8** %6, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = and i32 %163, 63
  %165 = shl i32 %164, 6
  %166 = load i8*, i8** %6, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = and i32 %169, 63
  %171 = or i32 %165, %170
  %172 = trunc i32 %171 to i8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i8 %172, i8* %174, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i8, i8* %176, align 8
  %178 = sext i8 %177 to i32
  %179 = sdiv i32 %178, 100
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i8, i8* %181, align 8
  %183 = sext i8 %182 to i32
  %184 = srem i32 %183, 100
  %185 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %179, i32 %184)
  %186 = load i8*, i8** %6, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 3
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 6
  store i32 7, i32* %191, align 8
  store i32 10, i32* %11, align 4
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 92
  br i1 %198, label %199, label %241

199:                                              ; preds = %141
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %11, align 4
  store i32 %201, i32* %12, align 4
  br label %202

202:                                              ; preds = %216, %199
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %202
  %207 = load i8*, i8** %6, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 92
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %219

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  br label %202

219:                                              ; preds = %214, %202
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %7, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* %11, align 4
  %225 = sub nsw i32 %224, 3
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* %12, align 4
  %229 = sub nsw i32 %227, %228
  %230 = icmp eq i32 %229, 8
  br i1 %230, label %231, label %240

231:                                              ; preds = %226
  %232 = load i8*, i8** %6, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 2
  store i8* %235, i8** %237, align 8
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 7
  store i32 8, i32* %239, align 4
  br label %240

240:                                              ; preds = %231, %226
  br label %241

241:                                              ; preds = %240, %141
  %242 = load i8*, i8** %6, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 92
  br i1 %248, label %249, label %294

249:                                              ; preds = %241
  %250 = load i32, i32* %11, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %11, align 4
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %266, %249
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %7, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %269

256:                                              ; preds = %252
  %257 = load i8*, i8** %6, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 92
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  br label %269

265:                                              ; preds = %256
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %11, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %11, align 4
  br label %252

269:                                              ; preds = %264, %252
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp sge i32 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %269
  %274 = load i32, i32* %11, align 4
  %275 = sub nsw i32 %274, 3
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %273, %269
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, 1
  %280 = icmp sgt i32 %277, %279
  br i1 %280, label %281, label %293

281:                                              ; preds = %276
  %282 = load i8*, i8** %6, align 8
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 3
  store i8* %285, i8** %287, align 8
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* %12, align 4
  %290 = sub nsw i32 %288, %289
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 8
  store i32 %290, i32* %292, align 8
  br label %293

293:                                              ; preds = %281, %276
  br label %294

294:                                              ; preds = %293, %241
  %295 = load i8*, i8** %6, align 8
  %296 = load i32, i32* %11, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 92
  br i1 %301, label %302, label %358

302:                                              ; preds = %294
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %11, align 4
  store i32 %304, i32* %12, align 4
  br label %305

305:                                              ; preds = %319, %302
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* %7, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %322

309:                                              ; preds = %305
  %310 = load i8*, i8** %6, align 8
  %311 = load i32, i32* %11, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 92
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  br label %322

318:                                              ; preds = %309
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %11, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %11, align 4
  br label %305

322:                                              ; preds = %317, %305
  %323 = load i8*, i8** %6, align 8
  %324 = load i32, i32* %12, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %323, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp eq i32 %328, 42
  br i1 %329, label %330, label %333

330:                                              ; preds = %322
  %331 = load i32, i32* %12, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %12, align 4
  br label %333

333:                                              ; preds = %330, %322
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %7, align 4
  %336 = icmp sge i32 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %333
  %338 = load i32, i32* %11, align 4
  %339 = sub nsw i32 %338, 3
  store i32 %339, i32* %11, align 4
  br label %340

340:                                              ; preds = %337, %333
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %12, align 4
  %343 = add nsw i32 %342, 1
  %344 = icmp sgt i32 %341, %343
  br i1 %344, label %345, label %357

345:                                              ; preds = %340
  %346 = load i8*, i8** %6, align 8
  %347 = load i32, i32* %12, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 4
  store i8* %349, i8** %351, align 8
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* %12, align 4
  %354 = sub nsw i32 %352, %353
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 9
  store i32 %354, i32* %356, align 4
  br label %357

357:                                              ; preds = %345, %340
  br label %358

358:                                              ; preds = %357, %294
  %359 = load i8*, i8** %6, align 8
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %359, i64 %361
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %364, 92
  br i1 %365, label %366, label %411

366:                                              ; preds = %358
  %367 = load i32, i32* %11, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %11, align 4
  store i32 %368, i32* %12, align 4
  br label %369

369:                                              ; preds = %383, %366
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* %7, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %386

373:                                              ; preds = %369
  %374 = load i8*, i8** %6, align 8
  %375 = load i32, i32* %11, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = sext i8 %378 to i32
  %380 = icmp eq i32 %379, 59
  br i1 %380, label %381, label %382

381:                                              ; preds = %373
  br label %386

382:                                              ; preds = %373
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %11, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %11, align 4
  br label %369

386:                                              ; preds = %381, %369
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %7, align 4
  %389 = icmp sge i32 %387, %388
  br i1 %389, label %390, label %393

390:                                              ; preds = %386
  %391 = load i32, i32* %11, align 4
  %392 = sub nsw i32 %391, 3
  store i32 %392, i32* %11, align 4
  br label %393

393:                                              ; preds = %390, %386
  %394 = load i32, i32* %11, align 4
  %395 = load i32, i32* %12, align 4
  %396 = add nsw i32 %395, 1
  %397 = icmp sgt i32 %394, %396
  br i1 %397, label %398, label %410

398:                                              ; preds = %393
  %399 = load i8*, i8** %6, align 8
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, i8* %399, i64 %401
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 5
  store i8* %402, i8** %404, align 8
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* %12, align 4
  %407 = sub nsw i32 %405, %406
  %408 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 10
  store i32 %407, i32* %409, align 8
  br label %410

410:                                              ; preds = %398, %393
  br label %411

411:                                              ; preds = %410, %358
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 7
  %414 = load i32, i32* %413, align 4
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %431, label %416

416:                                              ; preds = %411
  %417 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 8
  %419 = load i32, i32* %418, align 8
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %431, label %421

421:                                              ; preds = %416
  %422 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 9
  %424 = load i32, i32* %423, align 4
  %425 = icmp sgt i32 %424, 0
  br i1 %425, label %431, label %426

426:                                              ; preds = %421
  %427 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 10
  %429 = load i32, i32* %428, align 8
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %448

431:                                              ; preds = %426, %421, %416, %411
  %432 = load i32, i32* %10, align 4
  %433 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %432)
  %434 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %435 = load i32, i32* %10, align 4
  %436 = and i32 %435, 255
  %437 = call i32 @sprintf(i8* %434, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %436)
  %438 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %439 = load i8*, i8** %6, align 8
  %440 = load i32, i32* %7, align 4
  %441 = sub nsw i32 %440, 3
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8, i8* %439, i64 %442
  %444 = call i64 @strncmp(i8* %438, i8* %443, i32 2)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %431
  br label %447

447:                                              ; preds = %446, %431
  br label %448

448:                                              ; preds = %447, %426
  %449 = load i32, i32* @TRUE, align 4
  store i32 %449, i32* %4, align 4
  br label %450

450:                                              ; preds = %448, %59, %51
  %451 = load i32, i32* %4, align 4
  ret i32 %451
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @debug(i8*, i32, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
