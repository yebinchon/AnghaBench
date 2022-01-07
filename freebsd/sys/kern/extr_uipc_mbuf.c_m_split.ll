; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i32, %struct.mbuf*, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8* }

@M_PKTHDR = common dso_local global i32 0, align 4
@CSUM_SND_TAG = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_split(%struct.mbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @MBUF_CHECKSLEEP(i32 %14)
  %16 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %16, %struct.mbuf** %8, align 8
  br label %17

17:                                               ; preds = %34, %3
  %18 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %19 = icmp ne %struct.mbuf* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %28
  %35 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 2
  %37 = load %struct.mbuf*, %struct.mbuf** %36, align 8
  store %struct.mbuf* %37, %struct.mbuf** %8, align 8
  br label %17

38:                                               ; preds = %26
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %287

42:                                               ; preds = %38
  %43 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @M_PKTHDR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %119

54:                                               ; preds = %42
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %119

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.mbuf* @m_gethdr(i32 %58, i32 %61)
  store %struct.mbuf* %62, %struct.mbuf** %9, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %64 = icmp eq %struct.mbuf* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %287

66:                                               ; preds = %57
  %67 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 2
  %69 = load %struct.mbuf*, %struct.mbuf** %68, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 2
  store %struct.mbuf* %69, %struct.mbuf** %71, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %73, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CSUM_SND_TAG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %66
  %82 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @m_snd_tag_ref(i8* %85)
  %87 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i8* %86, i8** %89, align 8
  %90 = load i32, i32* @CSUM_SND_TAG, align 4
  %91 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 8
  br label %104

96:                                               ; preds = %66
  %97 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %102 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %96, %81
  %105 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %106 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %112 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %116 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %118, %struct.mbuf** %4, align 8
  br label %287

119:                                              ; preds = %54, %42
  %120 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @M_PKTHDR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %217

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call %struct.mbuf* @m_gethdr(i32 %127, i32 %130)
  store %struct.mbuf* %131, %struct.mbuf** %9, align 8
  %132 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %133 = icmp eq %struct.mbuf* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %287

135:                                              ; preds = %126
  %136 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %137 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @CSUM_SND_TAG, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %135
  %144 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %145 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @m_snd_tag_ref(i8* %147)
  %149 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %150 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  store i8* %148, i8** %151, align 8
  %152 = load i32, i32* @CSUM_SND_TAG, align 4
  %153 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %154 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 8
  br label %166

158:                                              ; preds = %135
  %159 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %160 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %164 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  store i32 %162, i32* %165, align 8
  br label %166

166:                                              ; preds = %158, %143
  %167 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %168 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %6, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %174 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %178 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %181 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @M_EXT, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %166
  br label %243

187:                                              ; preds = %166
  %188 = load i64, i64* %11, align 8
  %189 = load i64, i64* @MHLEN, align 8
  %190 = icmp sgt i64 %188, %189
  br i1 %190, label %191, label %212

191:                                              ; preds = %187
  %192 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %193 = call i32 @M_ALIGN(%struct.mbuf* %192, i64 0)
  %194 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %195 = load i64, i64* %10, align 8
  %196 = trunc i64 %195 to i32
  %197 = load i32, i32* %7, align 4
  %198 = call %struct.mbuf* @m_split(%struct.mbuf* %194, i32 %196, i32 %197)
  %199 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %200 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %199, i32 0, i32 2
  store %struct.mbuf* %198, %struct.mbuf** %200, align 8
  %201 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %202 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %201, i32 0, i32 2
  %203 = load %struct.mbuf*, %struct.mbuf** %202, align 8
  %204 = icmp eq %struct.mbuf* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %191
  %206 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %207 = call i32 @m_free(%struct.mbuf* %206)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %287

208:                                              ; preds = %191
  %209 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %210 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  %211 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %211, %struct.mbuf** %4, align 8
  br label %287

212:                                              ; preds = %187
  %213 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %214 = load i64, i64* %11, align 8
  %215 = call i32 @M_ALIGN(%struct.mbuf* %213, i64 %214)
  br label %216

216:                                              ; preds = %212
  br label %241

217:                                              ; preds = %119
  %218 = load i64, i64* %11, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %217
  %221 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %222 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %221, i32 0, i32 2
  %223 = load %struct.mbuf*, %struct.mbuf** %222, align 8
  store %struct.mbuf* %223, %struct.mbuf** %9, align 8
  %224 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %225 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %224, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %225, align 8
  %226 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %226, %struct.mbuf** %4, align 8
  br label %287

227:                                              ; preds = %217
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %230 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = call %struct.mbuf* @m_get(i32 %228, i32 %231)
  store %struct.mbuf* %232, %struct.mbuf** %9, align 8
  %233 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %234 = icmp eq %struct.mbuf* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %287

236:                                              ; preds = %227
  %237 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %238 = load i64, i64* %11, align 8
  %239 = call i32 @M_ALIGN(%struct.mbuf* %237, i64 %238)
  br label %240

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %216
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242, %186
  %244 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %245 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @M_EXT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %243
  %251 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %252 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* %10, align 8
  %255 = add nsw i64 %253, %254
  %256 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %257 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %256, i32 0, i32 3
  store i64 %255, i64* %257, align 8
  %258 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %259 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %260 = call i32 @mb_dupcl(%struct.mbuf* %258, %struct.mbuf* %259)
  br label %272

261:                                              ; preds = %243
  %262 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %263 = load i32, i32* @caddr_t, align 4
  %264 = call i64 @mtod(%struct.mbuf* %262, i32 %263)
  %265 = load i64, i64* %10, align 8
  %266 = add nsw i64 %264, %265
  %267 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %268 = load i32, i32* @caddr_t, align 4
  %269 = call i64 @mtod(%struct.mbuf* %267, i32 %268)
  %270 = load i64, i64* %11, align 8
  %271 = call i32 @bcopy(i64 %266, i64 %269, i64 %270)
  br label %272

272:                                              ; preds = %261, %250
  %273 = load i64, i64* %11, align 8
  %274 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %275 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %274, i32 0, i32 0
  store i64 %273, i64* %275, align 8
  %276 = load i64, i64* %10, align 8
  %277 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %278 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %277, i32 0, i32 0
  store i64 %276, i64* %278, align 8
  %279 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %280 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %279, i32 0, i32 2
  %281 = load %struct.mbuf*, %struct.mbuf** %280, align 8
  %282 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %283 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %282, i32 0, i32 2
  store %struct.mbuf* %281, %struct.mbuf** %283, align 8
  %284 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %285 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %284, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %285, align 8
  %286 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %286, %struct.mbuf** %4, align 8
  br label %287

287:                                              ; preds = %272, %235, %220, %208, %205, %134, %104, %65, %41
  %288 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %288
}

declare dso_local i32 @MBUF_CHECKSLEEP(i32) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i8* @m_snd_tag_ref(i8*) #1

declare dso_local i32 @M_ALIGN(%struct.mbuf*, i64) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @mb_dupcl(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @bcopy(i64, i64, i64) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
