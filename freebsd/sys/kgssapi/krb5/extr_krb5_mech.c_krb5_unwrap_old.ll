; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_unwrap_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_unwrap_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.mbuf = type { i64*, i32, %struct.mbuf* }

@.str = private unnamed_addr constant [3 x i8] c"\02\01\00", align 1
@TRUE = common dso_local global i32 0, align 4
@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@GSS_C_REPLAY_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_context*, %struct.mbuf**, i32*, i32*, i32*)* @krb5_unwrap_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_unwrap_old(%struct.krb5_context* %0, %struct.mbuf** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.krb5_context*, align 8
  %8 = alloca %struct.mbuf**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca %struct.mbuf*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca [32 x i32], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.krb5_context* %0, %struct.krb5_context** %7, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %30 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %30, align 8
  store %struct.mbuf* %31, %struct.mbuf** %13, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %33 = call i64 @m_length(%struct.mbuf* %32, %struct.mbuf** %14)
  store i64 %33, i64* %20, align 8
  %34 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %35 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %34, i32 0, i32 3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i64 @token_length(%struct.TYPE_7__* %36)
  store i64 %37, i64* %21, align 8
  %38 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %39 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %38, i32 0, i32 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %25, align 8
  %45 = load i64, i64* %21, align 8
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32* @krb5_verify_token(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %45, %struct.mbuf** %13, i64* %22, i32 %46)
  store i32* %47, i32** %18, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %49 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* %48, %struct.mbuf** %49, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %5
  %53 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %53, i32* %6, align 4
  br label %449

54:                                               ; preds = %5
  %55 = load i64, i64* %22, align 8
  %56 = load i64, i64* %21, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %23, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = bitcast i64* %62 to i32*
  %64 = ptrtoint i32* %59 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @m_adj(%struct.mbuf* %58, i32 %68)
  %70 = load i32*, i32** %18, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32* %71, i32** %18, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %54
  %80 = load i32*, i32** %18, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79, %54
  %88 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %88, i32* %6, align 4
  br label %449

89:                                               ; preds = %79
  %90 = load i32*, i32** %18, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32* %91, i32** %18, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %89
  %100 = load i32*, i32** %18, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i32 1, i32* %29, align 4
  br label %122

108:                                              ; preds = %99, %89
  %109 = load i32*, i32** %18, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 255
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32*, i32** %18, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 255
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %29, align 4
  br label %121

119:                                              ; preds = %113, %108
  %120 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %120, i32* %6, align 4
  br label %449

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %107
  %123 = load i32*, i32** %18, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32* %124, i32** %18, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 255
  br i1 %128, label %134, label %129

129:                                              ; preds = %122
  %130 = load i32*, i32** %18, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 255
  br i1 %133, label %134, label %136

134:                                              ; preds = %129, %122
  %135 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %135, i32* %6, align 4
  br label %449

136:                                              ; preds = %129
  %137 = load i32*, i32** %18, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  store i32* %138, i32** %18, align 8
  %139 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %140 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %139, i32 0, i32 3
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %143 = load i32*, i32** %18, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 8
  %145 = call i32 @krb5_decrypt(%struct.TYPE_7__* %141, %struct.mbuf* %142, i32 8, i64 8, i32* %144, i32 8)
  %146 = load i32*, i32** %10, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 17
  br i1 %149, label %150, label %169

150:                                              ; preds = %136
  %151 = load i32*, i32** %18, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %18, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 8
  %158 = or i32 %153, %157
  %159 = load i32*, i32** %18, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 16
  %163 = or i32 %158, %162
  %164 = load i32*, i32** %18, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 24
  %168 = or i32 %163, %167
  store i32 %168, i32* %27, align 4
  br label %188

169:                                              ; preds = %136
  %170 = load i32*, i32** %18, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %18, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 8
  %177 = or i32 %172, %176
  %178 = load i32*, i32** %18, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 16
  %182 = or i32 %177, %181
  %183 = load i32*, i32** %18, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = shl i32 %185, 24
  %187 = or i32 %182, %186
  store i32 %187, i32* %27, align 4
  br label %188

188:                                              ; preds = %169, %150
  %189 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %190 = call i64 @is_initiator(%struct.krb5_context* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  store i32 255, i32* %19, align 4
  br label %194

193:                                              ; preds = %188
  store i32 0, i32* %19, align 4
  br label %194

194:                                              ; preds = %193, %192
  %195 = load i32*, i32** %18, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 4
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %19, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %218, label %200

200:                                              ; preds = %194
  %201 = load i32*, i32** %18, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 5
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %19, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %218, label %206

206:                                              ; preds = %200
  %207 = load i32*, i32** %18, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 6
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %19, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = load i32*, i32** %18, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 7
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %212, %206, %200, %194
  %219 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %219, i32* %6, align 4
  br label %449

220:                                              ; preds = %212
  %221 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %222 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %226 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %227 = or i32 %225, %226
  %228 = and i32 %224, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %220
  %231 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %232 = load i32, i32* %27, align 4
  %233 = call i32 @krb5_sequence_check(%struct.krb5_context* %231, i32 %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = call i64 @GSS_ERROR(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %230
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* %6, align 4
  br label %449

239:                                              ; preds = %230
  br label %242

240:                                              ; preds = %220
  %241 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %241, i32* %12, align 4
  br label %242

242:                                              ; preds = %240, %239
  %243 = load i32, i32* %29, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %272

245:                                              ; preds = %242
  %246 = load i32*, i32** %11, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 16
  br i1 %249, label %250, label %261

250:                                              ; preds = %245
  %251 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %252 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %251, i32 0, i32 1
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %255 = load i64, i64* %25, align 8
  %256 = add i64 16, %255
  %257 = trunc i64 %256 to i32
  %258 = load i64, i64* %23, align 8
  %259 = load i32*, i32** %18, align 8
  %260 = call i32 @krb5_decrypt(%struct.TYPE_7__* %253, %struct.mbuf* %254, i32 %257, i64 %258, i32* %259, i32 4)
  br label %271

261:                                              ; preds = %245
  %262 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %263 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %262, i32 0, i32 1
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %266 = load i64, i64* %25, align 8
  %267 = add i64 16, %266
  %268 = trunc i64 %267 to i32
  %269 = load i64, i64* %23, align 8
  %270 = call i32 @krb5_decrypt(%struct.TYPE_7__* %264, %struct.mbuf* %265, i32 %268, i64 %269, i32* null, i32 0)
  br label %271

271:                                              ; preds = %261, %250
  br label %272

272:                                              ; preds = %271, %242
  %273 = load i32*, i32** %9, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32, i32* %29, align 4
  %277 = load i32*, i32** %9, align 8
  store i32 %276, i32* %277, align 4
  br label %278

278:                                              ; preds = %275, %272
  %279 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %280 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %278
  %284 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %285 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %284, i32 0, i32 0
  %286 = load i64*, i64** %285, align 8
  %287 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %288 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %286, i64 %291
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %24, align 8
  br label %319

294:                                              ; preds = %278
  %295 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %296 = load i64, i64* %21, align 8
  %297 = load i64, i64* %23, align 8
  %298 = add i64 %296, %297
  %299 = sub i64 %298, 1
  %300 = call %struct.mbuf* @m_getptr(%struct.mbuf* %295, i64 %299, i32* %28)
  store %struct.mbuf* %300, %struct.mbuf** %17, align 8
  %301 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %302 = icmp eq %struct.mbuf* %301, null
  br i1 %302, label %309, label %303

303:                                              ; preds = %294
  %304 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %305 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* %28, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %303, %294
  %310 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %310, i32* %6, align 4
  br label %449

311:                                              ; preds = %303
  %312 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %313 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %312, i32 0, i32 0
  %314 = load i64*, i64** %313, align 8
  %315 = load i32, i32* %28, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %314, i64 %316
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %24, align 8
  br label %319

319:                                              ; preds = %311, %283
  %320 = load i64, i64* %24, align 8
  %321 = icmp ult i64 %320, 1
  br i1 %321, label %331, label %322

322:                                              ; preds = %319
  %323 = load i64, i64* %24, align 8
  %324 = icmp ugt i64 %323, 8
  br i1 %324, label %331, label %325

325:                                              ; preds = %322
  %326 = load i64, i64* %24, align 8
  %327 = load i64, i64* %21, align 8
  %328 = load i64, i64* %23, align 8
  %329 = add i64 %327, %328
  %330 = icmp ugt i64 %326, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %325, %322, %319
  %332 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %332, i32* %6, align 4
  br label %449

333:                                              ; preds = %325
  %334 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %335 = load i64, i64* %21, align 8
  %336 = load i64, i64* %23, align 8
  %337 = add i64 %335, %336
  %338 = load i64, i64* %24, align 8
  %339 = sub i64 %337, %338
  %340 = load i64, i64* %24, align 8
  %341 = getelementptr inbounds [32 x i32], [32 x i32]* %26, i64 0, i64 0
  %342 = call i32 @m_copydata(%struct.mbuf* %334, i64 %339, i64 %340, i32* %341)
  store i32 0, i32* %28, align 4
  br label %343

343:                                              ; preds = %359, %333
  %344 = load i32, i32* %28, align 4
  %345 = sext i32 %344 to i64
  %346 = load i64, i64* %24, align 8
  %347 = icmp ult i64 %345, %346
  br i1 %347, label %348, label %362

348:                                              ; preds = %343
  %349 = load i32, i32* %28, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [32 x i32], [32 x i32]* %26, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = load i64, i64* %24, align 8
  %355 = icmp ne i64 %353, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %348
  %357 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %357, i32* %6, align 4
  br label %449

358:                                              ; preds = %348
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %28, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %28, align 4
  br label %343

362:                                              ; preds = %343
  %363 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %363, %struct.mbuf** %15, align 8
  %364 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %365 = load i64, i64* %25, align 8
  %366 = add i64 16, %365
  %367 = trunc i64 %366 to i32
  %368 = load i32, i32* @M_WAITOK, align 4
  %369 = call %struct.mbuf* @m_split(%struct.mbuf* %364, i32 %367, i32 %368)
  store %struct.mbuf* %369, %struct.mbuf** %13, align 8
  %370 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* %369, %struct.mbuf** %370, align 8
  %371 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %372 = call %struct.mbuf* @m_last(%struct.mbuf* %371)
  store %struct.mbuf* %372, %struct.mbuf** %14, align 8
  %373 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %374 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %373, i32 0, i32 1
  store i32 8, i32* %374, align 8
  %375 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %376 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %377 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %376, i32 0, i32 2
  store %struct.mbuf* %375, %struct.mbuf** %377, align 8
  %378 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %379 = load i32, i32* @M_WAITOK, align 4
  %380 = load i32, i32* @MT_DATA, align 4
  %381 = call i32 @MGET(%struct.mbuf* %378, i32 %379, i32 %380)
  %382 = load i64, i64* %25, align 8
  %383 = trunc i64 %382 to i32
  %384 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %385 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %384, i32 0, i32 1
  store i32 %383, i32* %385, align 8
  %386 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %387 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %388 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %387, i32 0, i32 2
  store %struct.mbuf* %386, %struct.mbuf** %388, align 8
  %389 = load %struct.krb5_context*, %struct.krb5_context** %7, align 8
  %390 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %393 = load i64, i64* %23, align 8
  %394 = add i64 %393, 8
  %395 = load i64, i64* %25, align 8
  %396 = call i32 @krb5_checksum(i32 %391, i32 13, %struct.mbuf* %392, i32 0, i64 %394, i64 %395)
  %397 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %398 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %397, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %398, align 8
  %399 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %400 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %399, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %400, align 8
  %401 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %402 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %401, i32 0, i32 0
  %403 = load i64*, i64** %402, align 8
  %404 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %405 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %404, i32 0, i32 0
  %406 = load i64*, i64** %405, align 8
  %407 = getelementptr inbounds i64, i64* %406, i64 16
  %408 = load i64, i64* %25, align 8
  %409 = call i64 @bcmp(i64* %403, i64* %407, i64 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %362
  %412 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %413 = call i32 @m_freem(%struct.mbuf* %412)
  %414 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %415 = call i32 @m_free(%struct.mbuf* %414)
  %416 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %416, i32* %6, align 4
  br label %449

417:                                              ; preds = %362
  %418 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %419 = call i32 @m_freem(%struct.mbuf* %418)
  %420 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %421 = call i32 @m_free(%struct.mbuf* %420)
  %422 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %423 = call i32 @m_adj(%struct.mbuf* %422, i32 8)
  %424 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %425 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = sext i32 %426 to i64
  %428 = load i64, i64* %24, align 8
  %429 = icmp uge i64 %427, %428
  br i1 %429, label %430, label %438

430:                                              ; preds = %417
  %431 = load i64, i64* %24, align 8
  %432 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %433 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = sub i64 %435, %431
  %437 = trunc i64 %436 to i32
  store i32 %437, i32* %433, align 8
  br label %445

438:                                              ; preds = %417
  %439 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %440 = load i64, i64* %23, align 8
  %441 = sub i64 %440, 8
  %442 = load i64, i64* %24, align 8
  %443 = sub i64 %441, %442
  %444 = call i32 @m_trim(%struct.mbuf* %439, i64 %443)
  br label %445

445:                                              ; preds = %438, %430
  %446 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %447 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* %446, %struct.mbuf** %447, align 8
  %448 = load i32, i32* %12, align 4
  store i32 %448, i32* %6, align 4
  br label %449

449:                                              ; preds = %445, %411, %356, %331, %309, %237, %218, %134, %119, %87, %52
  %450 = load i32, i32* %6, align 4
  ret i32 %450
}

declare dso_local i64 @m_length(%struct.mbuf*, %struct.mbuf**) #1

declare dso_local i64 @token_length(%struct.TYPE_7__*) #1

declare dso_local i32* @krb5_verify_token(i8*, i64, %struct.mbuf**, i64*, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @krb5_decrypt(%struct.TYPE_7__*, %struct.mbuf*, i32, i64, i32*, i32) #1

declare dso_local i64 @is_initiator(%struct.krb5_context*) #1

declare dso_local i32 @krb5_sequence_check(%struct.krb5_context*, i32) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local %struct.mbuf* @m_getptr(%struct.mbuf*, i64, i32*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i64, i64, i32*) #1

declare dso_local %struct.mbuf* @m_split(%struct.mbuf*, i32, i32) #1

declare dso_local %struct.mbuf* @m_last(%struct.mbuf*) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @krb5_checksum(i32, i32, %struct.mbuf*, i32, i64, i64) #1

declare dso_local i64 @bcmp(i64*, i64*, i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @m_trim(%struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
