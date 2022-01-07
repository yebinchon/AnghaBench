; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_reset_qvalues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_reset_qvalues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64*, i64*, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64*, i32, i64*, i64*, i64*, i64*, i64* }
%struct.TYPE_5__ = type { i64, i64, i64*, i64* }

@.str = private unnamed_addr constant [53 x i8] c"nrxd%d: %d less than nrxd_min %d - resetting to min\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"nrxd%d: %d greater than nrxd_max %d - resetting to max\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"nrxd%d: %d is not a power of 2 - using default value of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"ntxd%d: %d less than ntxd_min %d - resetting to min\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"ntxd%d: %d greater than ntxd_max %d - resetting to max\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"ntxd%d: %d is not a power of 2 - using default value of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @iflib_reset_qvalues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_reset_qvalues(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %25
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %81, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %59, i64* %65, align 8
  br label %80

66:                                               ; preds = %43
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %73, i64* %79, align 8
  br label %80

80:                                               ; preds = %66, %52
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %37

84:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %129, %84
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %132

91:                                               ; preds = %85
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %91
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  store i64 %107, i64* %113, align 8
  br label %128

114:                                              ; preds = %91
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 %121, i64* %127, align 8
  br label %128

128:                                              ; preds = %114, %100
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %85

132:                                              ; preds = %85
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %275, %132
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %278

139:                                              ; preds = %133
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %146, %153
  br i1 %154, label %155, label %186

155:                                              ; preds = %139
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 4
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %157, i64 %164, i64 %171)
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 4
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  store i64 %179, i64* %185, align 8
  br label %186

186:                                              ; preds = %155, %139
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 5
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %193, %200
  br i1 %201, label %202, label %233

202:                                              ; preds = %186
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 5
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @device_printf(i32 %203, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %204, i64 %211, i64 %218)
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 5
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  store i64 %226, i64* %232, align 8
  br label %233

233:                                              ; preds = %202, %186
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 3
  %236 = load i64*, i64** %235, align 8
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @powerof2(i64 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %274, label %243

243:                                              ; preds = %233
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 3
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 3
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @device_printf(i32 %244, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %245, i64 %252, i64 %259)
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 3
  %263 = load i64*, i64** %262, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 3
  %270 = load i64*, i64** %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  store i64 %267, i64* %273, align 8
  br label %274

274:                                              ; preds = %243, %233
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %6, align 4
  br label %133

278:                                              ; preds = %133
  store i32 0, i32* %6, align 4
  br label %279

279:                                              ; preds = %421, %278
  %280 = load i32, i32* %6, align 4
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %424

285:                                              ; preds = %279
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 2
  %288 = load i64*, i64** %287, align 8
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 6
  %295 = load i64*, i64** %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = icmp slt i64 %292, %299
  br i1 %300, label %301, label %332

301:                                              ; preds = %285
  %302 = load i32, i32* %5, align 4
  %303 = load i32, i32* %6, align 4
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 2
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 6
  %313 = load i64*, i64** %312, align 8
  %314 = load i32, i32* %6, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i64, i64* %313, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @device_printf(i32 %302, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %303, i64 %310, i64 %317)
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 6
  %321 = load i64*, i64** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i64, i64* %321, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 2
  %328 = load i64*, i64** %327, align 8
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i64, i64* %328, i64 %330
  store i64 %325, i64* %331, align 8
  br label %332

332:                                              ; preds = %301, %285
  %333 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 2
  %335 = load i64*, i64** %334, align 8
  %336 = load i32, i32* %6, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i64, i64* %335, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 7
  %342 = load i64*, i64** %341, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %342, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = icmp sgt i64 %339, %346
  br i1 %347, label %348, label %379

348:                                              ; preds = %332
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* %6, align 4
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 2
  %353 = load i64*, i64** %352, align 8
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 7
  %360 = load i64*, i64** %359, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %360, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = call i32 @device_printf(i32 %349, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %350, i64 %357, i64 %364)
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 7
  %368 = load i64*, i64** %367, align 8
  %369 = load i32, i32* %6, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i64, i64* %368, i64 %370
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 2
  %375 = load i64*, i64** %374, align 8
  %376 = load i32, i32* %6, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %375, i64 %377
  store i64 %372, i64* %378, align 8
  br label %379

379:                                              ; preds = %348, %332
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 2
  %382 = load i64*, i64** %381, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i64, i64* %382, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = call i32 @powerof2(i64 %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %420, label %389

389:                                              ; preds = %379
  %390 = load i32, i32* %5, align 4
  %391 = load i32, i32* %6, align 4
  %392 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 2
  %394 = load i64*, i64** %393, align 8
  %395 = load i32, i32* %6, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i64, i64* %394, i64 %396
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 1
  %401 = load i64*, i64** %400, align 8
  %402 = load i32, i32* %6, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %401, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = call i32 @device_printf(i32 %390, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %391, i64 %398, i64 %405)
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 1
  %409 = load i64*, i64** %408, align 8
  %410 = load i32, i32* %6, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i64, i64* %409, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i32 0, i32 2
  %416 = load i64*, i64** %415, align 8
  %417 = load i32, i32* %6, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i64, i64* %416, i64 %418
  store i64 %413, i64* %419, align 8
  br label %420

420:                                              ; preds = %389, %379
  br label %421

421:                                              ; preds = %420
  %422 = load i32, i32* %6, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %6, align 4
  br label %279

424:                                              ; preds = %279
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @powerof2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
