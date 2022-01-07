; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_lbc_banks_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_lbc_banks_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbc_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@LBC_DEV_MAX = common dso_local global i64 0, align 8
@OCP85XX_TGTIF_LBC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbc_softc*)* @lbc_banks_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbc_banks_map(%struct.lbc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lbc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.lbc_softc* %0, %struct.lbc_softc** %3, align 8
  %12 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @bzero(%struct.TYPE_4__* %14, i32 8)
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %187, %1
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @LBC_DEV_MAX, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %190

20:                                               ; preds = %16
  %21 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %187

31:                                               ; preds = %20
  %32 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %119, %31
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %122

43:                                               ; preds = %39
  %44 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %53 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %51, %58
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %43
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %70 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %68
  store i32 %76, i32* %74, align 4
  br label %122

77:                                               ; preds = %62, %43
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %4, align 4
  %82 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %83 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %77
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %93 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp eq i32 %91, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %90
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %104 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %102, i32* %108, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %111 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %109
  store i32 %117, i32* %115, align 4
  br label %122

118:                                              ; preds = %90, %77
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %8, align 8
  br label %39

122:                                              ; preds = %101, %67, %39
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* %9, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %186

126:                                              ; preds = %122
  store i64 0, i64* %8, align 8
  br label %127

127:                                              ; preds = %143, %126
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %133 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %138, %139
  br label %141

141:                                              ; preds = %131, %127
  %142 = phi i1 [ false, %127 ], [ %140, %131 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i64, i64* %8, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %8, align 8
  br label %127

146:                                              ; preds = %141
  %147 = load i64, i64* %9, align 8
  store i64 %147, i64* %10, align 8
  br label %148

148:                                              ; preds = %166, %146
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* %8, align 8
  %151 = icmp ugt i64 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %154 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %156
  %158 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %159 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i64, i64* %10, align 8
  %162 = sub i64 %161, 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = bitcast %struct.TYPE_4__* %157 to i8*
  %165 = bitcast %struct.TYPE_4__* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 4 %165, i64 12, i1 false)
  br label %166

166:                                              ; preds = %152
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %167, -1
  store i64 %168, i64* %10, align 8
  br label %148

169:                                              ; preds = %148
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %172 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i64, i64* %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  store i32 %170, i32* %176, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %179 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i64, i64* %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  store i32 %177, i32* %183, align 4
  %184 = load i64, i64* %9, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %9, align 8
  br label %186

186:                                              ; preds = %169, %122
  br label %187

187:                                              ; preds = %186, %30
  %188 = load i64, i64* %7, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %7, align 8
  br label %16

190:                                              ; preds = %16
  store i64 0, i64* %8, align 8
  br label %191

191:                                              ; preds = %266, %222, %190
  %192 = load i64, i64* %8, align 8
  %193 = load i64, i64* %9, align 8
  %194 = sub i64 %193, 1
  %195 = icmp ult i64 %192, %194
  br i1 %195, label %196, label %275

196:                                              ; preds = %191
  %197 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %198 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i64, i64* %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %205 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %204, i32 0, i32 0
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i64, i64* %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %203, %210
  store i32 %211, i32* %4, align 4
  %212 = load i32, i32* %4, align 4
  %213 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %214 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %213, i32 0, i32 0
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load i64, i64* %8, align 8
  %217 = add i64 %216, 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %212, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %196
  %223 = load i64, i64* %8, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %8, align 8
  br label %191

225:                                              ; preds = %196
  %226 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %227 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %226, i32 0, i32 0
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = load i64, i64* %8, align 8
  %230 = add i64 %229, 1
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %235 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %234, i32 0, i32 0
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = load i64, i64* %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, %233
  store i32 %241, i32* %239, align 4
  %242 = load i64, i64* %8, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %10, align 8
  br label %244

244:                                              ; preds = %263, %225
  %245 = load i64, i64* %10, align 8
  %246 = load i64, i64* %9, align 8
  %247 = sub i64 %246, 1
  %248 = icmp ult i64 %245, %247
  br i1 %248, label %249, label %266

249:                                              ; preds = %244
  %250 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %251 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %250, i32 0, i32 0
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = load i64, i64* %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i64 %253
  %255 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %256 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %255, i32 0, i32 0
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %256, align 8
  %258 = load i64, i64* %10, align 8
  %259 = add i64 %258, 1
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i64 %259
  %261 = bitcast %struct.TYPE_4__* %254 to i8*
  %262 = bitcast %struct.TYPE_4__* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %261, i8* align 4 %262, i64 12, i1 false)
  br label %263

263:                                              ; preds = %249
  %264 = load i64, i64* %10, align 8
  %265 = add i64 %264, 1
  store i64 %265, i64* %10, align 8
  br label %244

266:                                              ; preds = %244
  %267 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %268 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %267, i32 0, i32 0
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = load i64, i64* %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i64 %270
  %272 = call i32 @bzero(%struct.TYPE_4__* %271, i32 12)
  %273 = load i64, i64* %9, align 8
  %274 = add i64 %273, -1
  store i64 %274, i64* %9, align 8
  br label %191

275:                                              ; preds = %191
  store i64 0, i64* %8, align 8
  br label %276

276:                                              ; preds = %314, %275
  %277 = load i64, i64* %8, align 8
  %278 = load i64, i64* %9, align 8
  %279 = icmp ult i64 %277, %278
  br i1 %279, label %280, label %317

280:                                              ; preds = %276
  %281 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %282 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %281, i32 0, i32 0
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = load i64, i64* %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %5, align 4
  %288 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %289 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %288, i32 0, i32 0
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = load i64, i64* %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* %6, align 4
  %295 = load i32, i32* @OCP85XX_TGTIF_LBC, align 4
  %296 = load i32, i32* %5, align 4
  %297 = load i32, i32* %6, align 4
  %298 = call i32 @law_enable(i32 %295, i32 %296, i32 %297)
  store i32 %298, i32* %11, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %280
  %302 = load i32, i32* %11, align 4
  store i32 %302, i32* %2, align 4
  br label %421

303:                                              ; preds = %280
  %304 = load i32, i32* %5, align 4
  %305 = load i32, i32* %6, align 4
  %306 = call i64 @pmap_mapdev(i32 %304, i32 %305)
  %307 = trunc i64 %306 to i32
  %308 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %309 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %308, i32 0, i32 0
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %309, align 8
  %311 = load i64, i64* %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 2
  store i32 %307, i32* %313, align 4
  br label %314

314:                                              ; preds = %303
  %315 = load i64, i64* %8, align 8
  %316 = add i64 %315, 1
  store i64 %316, i64* %8, align 8
  br label %276

317:                                              ; preds = %276
  %318 = load i64, i64* %9, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  %321 = load i32, i32* @EINVAL, align 4
  store i32 %321, i32* %2, align 4
  br label %421

322:                                              ; preds = %317
  store i64 0, i64* %7, align 8
  br label %323

323:                                              ; preds = %417, %322
  %324 = load i64, i64* %7, align 8
  %325 = load i64, i64* @LBC_DEV_MAX, align 8
  %326 = icmp ult i64 %324, %325
  br i1 %326, label %327, label %420

327:                                              ; preds = %323
  %328 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %329 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %328, i32 0, i32 1
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** %329, align 8
  %331 = load i64, i64* %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %6, align 4
  %335 = load i32, i32* %6, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %327
  br label %417

338:                                              ; preds = %327
  %339 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %340 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %339, i32 0, i32 1
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %340, align 8
  %342 = load i64, i64* %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %5, align 4
  store i64 0, i64* %8, align 8
  br label %346

346:                                              ; preds = %385, %338
  %347 = load i64, i64* %8, align 8
  %348 = load i64, i64* %9, align 8
  %349 = icmp ult i64 %347, %348
  br i1 %349, label %350, label %388

350:                                              ; preds = %346
  %351 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %352 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %351, i32 0, i32 0
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %352, align 8
  %354 = load i64, i64* %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = sub nsw i32 %357, 1
  %359 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %360 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %359, i32 0, i32 0
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = load i64, i64* %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %358, %365
  store i32 %366, i32* %4, align 4
  %367 = load i32, i32* %5, align 4
  %368 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %369 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %368, i32 0, i32 0
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %369, align 8
  %371 = load i64, i64* %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = icmp sge i32 %367, %374
  br i1 %375, label %376, label %384

376:                                              ; preds = %350
  %377 = load i32, i32* %5, align 4
  %378 = sub nsw i32 %377, 1
  %379 = load i32, i32* %6, align 4
  %380 = add nsw i32 %378, %379
  %381 = load i32, i32* %4, align 4
  %382 = icmp sle i32 %380, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %376
  br label %388

384:                                              ; preds = %376, %350
  br label %385

385:                                              ; preds = %384
  %386 = load i64, i64* %8, align 8
  %387 = add i64 %386, 1
  store i64 %387, i64* %8, align 8
  br label %346

388:                                              ; preds = %383, %346
  %389 = load i64, i64* %8, align 8
  %390 = load i64, i64* %9, align 8
  %391 = icmp ult i64 %389, %390
  br i1 %391, label %392, label %416

392:                                              ; preds = %388
  %393 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %394 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %393, i32 0, i32 0
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %394, align 8
  %396 = load i64, i64* %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %5, align 4
  %401 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %402 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %401, i32 0, i32 0
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %402, align 8
  %404 = load i64, i64* %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = sub nsw i32 %400, %407
  %409 = add nsw i32 %399, %408
  %410 = load %struct.lbc_softc*, %struct.lbc_softc** %3, align 8
  %411 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %410, i32 0, i32 1
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** %411, align 8
  %413 = load i64, i64* %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 2
  store i32 %409, i32* %415, align 4
  br label %416

416:                                              ; preds = %392, %388
  br label %417

417:                                              ; preds = %416, %337
  %418 = load i64, i64* %7, align 8
  %419 = add i64 %418, 1
  store i64 %419, i64* %7, align 8
  br label %323

420:                                              ; preds = %323
  store i32 0, i32* %2, align 4
  br label %421

421:                                              ; preds = %420, %320, %301
  %422 = load i32, i32* %2, align 4
  ret i32 %422
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @law_enable(i32, i32, i32) #1

declare dso_local i64 @pmap_mapdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
