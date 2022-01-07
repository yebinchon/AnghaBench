; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_integrity.c_g_eli_auth_read_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_integrity.c_g_eli_auth_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i64, %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.g_eli_softc = type { i32, i32, i32, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.bio = type { i64, i64, i64, i32, i32, i64, i32*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.g_eli_softc* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Crypto READ request done (%d/%d) (add=%jd completed=%jd).\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Crypto READ request failed (%d/%d) error=%d.\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"%s: Failed to authenticate %jd bytes of data at offset %jd.\00", align 1
@M_ELI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Crypto READ request failed (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*)* @g_eli_auth_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_eli_auth_read_done(%struct.cryptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cryptop*, align 8
  %4 = alloca %struct.g_eli_softc*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cryptop* %0, %struct.cryptop** %3, align 8
  %17 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %18 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EAGAIN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %24 = call i64 @g_eli_crypto_rerun(%struct.cryptop* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %310

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %30 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.bio*
  store %struct.bio* %32, %struct.bio** %5, align 8
  %33 = load %struct.bio*, %struct.bio** %5, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %38 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %28
  %42 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %43 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %56 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, i8*, i64, i64, i64, ...) @G_ELI_DEBUG(i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %54, i64 %57, i64 %60)
  br label %84

62:                                               ; preds = %28
  %63 = load %struct.bio*, %struct.bio** %5, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %70 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, i64, i64, i64, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %68, i64 %71)
  %73 = load %struct.bio*, %struct.bio** %5, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %79 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.bio*, %struct.bio** %5, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %62
  br label %84

84:                                               ; preds = %83, %41
  %85 = load %struct.bio*, %struct.bio** %5, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.g_eli_softc*, %struct.g_eli_softc** %90, align 8
  store %struct.g_eli_softc* %91, %struct.g_eli_softc** %4, align 8
  %92 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %93 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %94 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @g_eli_key_drop(%struct.g_eli_softc* %92, i32 %99)
  %101 = load %struct.bio*, %struct.bio** %5, align 8
  %102 = getelementptr inbounds %struct.bio, %struct.bio* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.bio*, %struct.bio** %5, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %310

109:                                              ; preds = %84
  %110 = load %struct.bio*, %struct.bio** %5, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %268

114:                                              ; preds = %109
  %115 = load %struct.bio*, %struct.bio** %5, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %10, align 4
  %120 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %121 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %120, i32 0, i32 5
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = call %struct.TYPE_14__* @LIST_FIRST(i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %11, align 4
  %129 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %130 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %9, align 4
  %132 = load %struct.bio*, %struct.bio** %5, align 8
  %133 = getelementptr inbounds %struct.bio, %struct.bio* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sdiv i32 %134, %135
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %139 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %137, %140
  %142 = load i32, i32* %11, align 4
  %143 = sdiv i32 %141, %142
  store i32 %143, i32* %8, align 4
  %144 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %145 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %11, align 4
  %148 = sdiv i32 %146, %147
  store i32 %148, i32* %7, align 4
  %149 = load %struct.bio*, %struct.bio** %5, align 8
  %150 = getelementptr inbounds %struct.bio, %struct.bio* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  store i32* %151, i32** %12, align 8
  %152 = load %struct.bio*, %struct.bio** %5, align 8
  %153 = getelementptr inbounds %struct.bio, %struct.bio* %152, i32 0, i32 7
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %13, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %8, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  store i32* %160, i32** %14, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %6, align 4
  br label %161

161:                                              ; preds = %252, %114
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %255

165:                                              ; preds = %161
  %166 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %167 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = srem i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %165
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %9, align 4
  %176 = srem i32 %174, %175
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %173, %165
  %178 = load i32*, i32** %12, align 8
  %179 = load i32*, i32** %14, align 8
  %180 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %181 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @bcmp(i32* %178, i32* %179, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %215

185:                                              ; preds = %177
  %186 = load %struct.bio*, %struct.bio** %5, align 8
  %187 = getelementptr inbounds %struct.bio, %struct.bio* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.bio*, %struct.bio** %5, align 8
  %192 = getelementptr inbounds %struct.bio, %struct.bio* %191, i32 0, i32 2
  store i64 -1, i64* %192, align 8
  br label %193

193:                                              ; preds = %190, %185
  %194 = load i32, i32* %15, align 4
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = load %struct.bio*, %struct.bio** %5, align 8
  %198 = getelementptr inbounds %struct.bio, %struct.bio* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = load i32*, i32** %13, align 8
  %202 = load %struct.bio*, %struct.bio** %5, align 8
  %203 = getelementptr inbounds %struct.bio, %struct.bio* %202, i32 0, i32 7
  %204 = load i32*, i32** %203, align 8
  %205 = ptrtoint i32* %201 to i64
  %206 = ptrtoint i32* %204 to i64
  %207 = sub i64 %205, %206
  %208 = sdiv exact i64 %207, 4
  %209 = add nsw i64 %200, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %15, align 4
  br label %211

211:                                              ; preds = %196, %193
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %16, align 4
  br label %237

215:                                              ; preds = %177
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, -1
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %220 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %16, align 4
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* %15, align 4
  %225 = sext i32 %224 to i64
  %226 = call i32 (i32, i8*, i64, i64, i64, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %221, i64 %223, i64 %225)
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %227

227:                                              ; preds = %218, %215
  %228 = load i32*, i32** %12, align 8
  %229 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %230 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %228, i64 %232
  %234 = load i32*, i32** %13, align 8
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @bcopy(i32* %233, i32* %234, i32 %235)
  br label %237

237:                                              ; preds = %227, %211
  %238 = load i32, i32* %11, align 4
  %239 = load i32*, i32** %12, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %12, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32*, i32** %13, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %13, align 8
  %246 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %247 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32*, i32** %14, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32* %251, i32** %14, align 8
  br label %252

252:                                              ; preds = %237
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %6, align 4
  br label %161

255:                                              ; preds = %161
  %256 = load i32, i32* %15, align 4
  %257 = icmp ne i32 %256, -1
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %260 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* %16, align 4
  %263 = sext i32 %262 to i64
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = call i32 (i32, i8*, i64, i64, i64, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %261, i64 %263, i64 %265)
  br label %267

267:                                              ; preds = %258, %255
  br label %268

268:                                              ; preds = %267, %109
  %269 = load %struct.bio*, %struct.bio** %5, align 8
  %270 = getelementptr inbounds %struct.bio, %struct.bio* %269, i32 0, i32 6
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* @M_ELI, align 4
  %273 = call i32 @free(i32* %271, i32 %272)
  %274 = load %struct.bio*, %struct.bio** %5, align 8
  %275 = getelementptr inbounds %struct.bio, %struct.bio* %274, i32 0, i32 6
  store i32* null, i32** %275, align 8
  %276 = load %struct.bio*, %struct.bio** %5, align 8
  %277 = getelementptr inbounds %struct.bio, %struct.bio* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %300

280:                                              ; preds = %268
  %281 = load %struct.bio*, %struct.bio** %5, align 8
  %282 = getelementptr inbounds %struct.bio, %struct.bio* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %283, -1
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sext i32 %286 to i64
  %288 = load %struct.bio*, %struct.bio** %5, align 8
  %289 = getelementptr inbounds %struct.bio, %struct.bio* %288, i32 0, i32 2
  store i64 %287, i64* %289, align 8
  br label %297

290:                                              ; preds = %280
  %291 = load %struct.bio*, %struct.bio** %5, align 8
  %292 = load %struct.bio*, %struct.bio** %5, align 8
  %293 = getelementptr inbounds %struct.bio, %struct.bio* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = call i32 @G_ELI_LOGREQ(i32 0, %struct.bio* %291, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %290, %285
  %298 = load %struct.bio*, %struct.bio** %5, align 8
  %299 = getelementptr inbounds %struct.bio, %struct.bio* %298, i32 0, i32 5
  store i64 0, i64* %299, align 8
  br label %300

300:                                              ; preds = %297, %268
  %301 = load %struct.bio*, %struct.bio** %5, align 8
  %302 = load %struct.bio*, %struct.bio** %5, align 8
  %303 = getelementptr inbounds %struct.bio, %struct.bio* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 @g_io_deliver(%struct.bio* %301, i32 %305)
  %307 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %308 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %307, i32 0, i32 4
  %309 = call i32 @atomic_subtract_int(i32* %308, i32 1)
  store i32 0, i32* %2, align 4
  br label %310

310:                                              ; preds = %300, %108, %26
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

declare dso_local i64 @g_eli_crypto_rerun(%struct.cryptop*) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @g_eli_key_drop(%struct.g_eli_softc*, i32) #1

declare dso_local %struct.TYPE_14__* @LIST_FIRST(i32*) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @G_ELI_LOGREQ(i32, %struct.bio*, i8*, i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
