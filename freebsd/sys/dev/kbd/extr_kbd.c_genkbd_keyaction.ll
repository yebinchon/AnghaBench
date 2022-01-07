; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_genkbd_keyaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_genkbd_keyaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.keyent_t* }
%struct.keyent_t = type { i32, i32*, i32 }

@AGRS = common dso_local global i32 0, align 4
@ALKED = common dso_local global i32 0, align 4
@AGRS1 = common dso_local global i32 0, align 4
@AGRS2 = common dso_local global i32 0, align 4
@ALTGR_OFFSET = common dso_local global i64 0, align 8
@SHIFTS = common dso_local global i32 0, align 4
@CTLS = common dso_local global i32 0, align 4
@ALTS = common dso_local global i32 0, align 4
@FLAG_LOCK_C = common dso_local global i32 0, align 4
@CLKED = common dso_local global i32 0, align 4
@FLAG_LOCK_N = common dso_local global i32 0, align 4
@NLKED = common dso_local global i32 0, align 4
@SHIFTAON = common dso_local global i32 0, align 4
@ALKDOWN = common dso_local global i32 0, align 4
@SHIFTS1 = common dso_local global i32 0, align 4
@SHIFTS2 = common dso_local global i32 0, align 4
@CTLS1 = common dso_local global i32 0, align 4
@CTLS2 = common dso_local global i32 0, align 4
@ALTS1 = common dso_local global i32 0, align 4
@ALTS2 = common dso_local global i32 0, align 4
@METAS1 = common dso_local global i32 0, align 4
@NLKDOWN = common dso_local global i32 0, align 4
@CLKDOWN = common dso_local global i32 0, align 4
@SLKDOWN = common dso_local global i32 0, align 4
@SPCLKEY = common dso_local global i32 0, align 4
@RELKEY = common dso_local global i32 0, align 4
@BKEY = common dso_local global i32 0, align 4
@F_ACC = common dso_local global i32 0, align 4
@L_ACC = common dso_local global i32 0, align 4
@METAS = common dso_local global i32 0, align 4
@MKEY = common dso_local global i32 0, align 4
@F_FN = common dso_local global i32 0, align 4
@L_FN = common dso_local global i32 0, align 4
@FKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genkbd_keyaction(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.keyent_t*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @AGRS, align 4
  %22 = load i32, i32* @ALKED, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @AGRS1, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @AGRS2, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @ALKED, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %28, %5
  %37 = load i64, i64* @ALTGR_OFFSET, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.keyent_t*, %struct.keyent_t** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %47, i64 %49
  store %struct.keyent_t* %50, %struct.keyent_t** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @SHIFTS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @CTLS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 2, i32 0
  %63 = or i32 %56, %62
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @ALTS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 4, i32 0
  %70 = or i32 %63, %69
  store i32 %70, i32* %16, align 4
  %71 = load %struct.keyent_t*, %struct.keyent_t** %12, align 8
  %72 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FLAG_LOCK_C, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %42
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @CLKED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %77, %42
  %83 = load %struct.keyent_t*, %struct.keyent_t** %12, align 8
  %84 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FLAG_LOCK_N, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @NLKED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %77
  %95 = load i32, i32* %16, align 4
  %96 = xor i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %94, %89, %82
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %276

100:                                              ; preds = %97
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %14, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 142, i32* %113, align 4
  %114 = load i32, i32* %14, align 4
  switch i32 %114, label %265 [
    i32 147, label %115
    i32 148, label %129
    i32 132, label %134
    i32 133, label %148
    i32 149, label %153
    i32 150, label %167
    i32 134, label %172
    i32 135, label %186
    i32 151, label %191
    i32 152, label %205
    i32 137, label %210
    i32 138, label %224
    i32 158, label %229
    i32 146, label %234
    i32 144, label %239
    i32 156, label %244
    i32 131, label %249
    i32 159, label %254
    i32 142, label %259
  ]

115:                                              ; preds = %100
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @SHIFTAON, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @set_lockkey_state(%struct.TYPE_8__* %121, i32 %122, i32 159)
  %124 = load i32, i32* @ALKDOWN, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %13, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %120, %115
  store i32 148, i32* %14, align 4
  br label %129

129:                                              ; preds = %100, %128
  %130 = load i32, i32* @SHIFTS1, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %13, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %13, align 4
  br label %265

134:                                              ; preds = %100
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @SHIFTAON, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @set_lockkey_state(%struct.TYPE_8__* %140, i32 %141, i32 159)
  %143 = load i32, i32* @ALKDOWN, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %13, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %139, %134
  store i32 133, i32* %14, align 4
  br label %148

148:                                              ; preds = %100, %147
  %149 = load i32, i32* @SHIFTS2, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %13, align 4
  br label %265

153:                                              ; preds = %100
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @SHIFTAON, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @set_lockkey_state(%struct.TYPE_8__* %159, i32 %160, i32 159)
  %162 = load i32, i32* @ALKDOWN, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %13, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %158, %153
  store i32 150, i32* %14, align 4
  br label %167

167:                                              ; preds = %100, %166
  %168 = load i32, i32* @CTLS1, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %13, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %13, align 4
  br label %265

172:                                              ; preds = %100
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @SHIFTAON, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @set_lockkey_state(%struct.TYPE_8__* %178, i32 %179, i32 159)
  %181 = load i32, i32* @ALKDOWN, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %13, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %177, %172
  store i32 135, i32* %14, align 4
  br label %186

186:                                              ; preds = %100, %185
  %187 = load i32, i32* @CTLS2, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %13, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %13, align 4
  br label %265

191:                                              ; preds = %100
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @SHIFTAON, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @set_lockkey_state(%struct.TYPE_8__* %197, i32 %198, i32 159)
  %200 = load i32, i32* @ALKDOWN, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %13, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %196, %191
  store i32 152, i32* %14, align 4
  br label %205

205:                                              ; preds = %100, %204
  %206 = load i32, i32* @ALTS1, align 4
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %13, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %13, align 4
  br label %265

210:                                              ; preds = %100
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @SHIFTAON, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %210
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @set_lockkey_state(%struct.TYPE_8__* %216, i32 %217, i32 159)
  %219 = load i32, i32* @ALKDOWN, align 4
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %13, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %13, align 4
  br label %223

223:                                              ; preds = %215, %210
  store i32 138, i32* %14, align 4
  br label %224

224:                                              ; preds = %100, %223
  %225 = load i32, i32* @ALTS2, align 4
  %226 = xor i32 %225, -1
  %227 = load i32, i32* %13, align 4
  %228 = and i32 %227, %226
  store i32 %228, i32* %13, align 4
  br label %265

229:                                              ; preds = %100
  %230 = load i32, i32* @AGRS1, align 4
  %231 = xor i32 %230, -1
  %232 = load i32, i32* %13, align 4
  %233 = and i32 %232, %231
  store i32 %233, i32* %13, align 4
  br label %265

234:                                              ; preds = %100
  %235 = load i32, i32* @METAS1, align 4
  %236 = xor i32 %235, -1
  %237 = load i32, i32* %13, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %13, align 4
  br label %265

239:                                              ; preds = %100
  %240 = load i32, i32* @NLKDOWN, align 4
  %241 = xor i32 %240, -1
  %242 = load i32, i32* %13, align 4
  %243 = and i32 %242, %241
  store i32 %243, i32* %13, align 4
  br label %265

244:                                              ; preds = %100
  %245 = load i32, i32* @CLKDOWN, align 4
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %13, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %13, align 4
  br label %265

249:                                              ; preds = %100
  %250 = load i32, i32* @SLKDOWN, align 4
  %251 = xor i32 %250, -1
  %252 = load i32, i32* %13, align 4
  %253 = and i32 %252, %251
  store i32 %253, i32* %13, align 4
  br label %265

254:                                              ; preds = %100
  %255 = load i32, i32* @ALKDOWN, align 4
  %256 = xor i32 %255, -1
  %257 = load i32, i32* %13, align 4
  %258 = and i32 %257, %256
  store i32 %258, i32* %13, align 4
  br label %265

259:                                              ; preds = %100
  %260 = load i32, i32* @SHIFTAON, align 4
  %261 = xor i32 %260, -1
  %262 = load i32*, i32** %10, align 8
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, %261
  store i32 %264, i32* %262, align 4
  store i32 143, i32* %6, align 4
  br label %497

265:                                              ; preds = %100, %254, %249, %244, %239, %234, %229, %224, %205, %186, %167, %148, %129
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* @SHIFTAON, align 4
  %268 = xor i32 %267, -1
  %269 = and i32 %266, %268
  %270 = load i32*, i32** %10, align 8
  store i32 %269, i32* %270, align 4
  %271 = load i32, i32* @SPCLKEY, align 4
  %272 = load i32, i32* @RELKEY, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* %14, align 4
  %275 = or i32 %273, %274
  store i32 %275, i32* %6, align 4
  br label %497

276:                                              ; preds = %97
  %277 = load %struct.keyent_t*, %struct.keyent_t** %12, align 8
  %278 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %14, align 4
  %284 = load i32, i32* @SHIFTAON, align 4
  %285 = xor i32 %284, -1
  %286 = load i32, i32* %13, align 4
  %287 = and i32 %286, %285
  store i32 %287, i32* %13, align 4
  %288 = load %struct.keyent_t*, %struct.keyent_t** %12, align 8
  %289 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %16, align 4
  %292 = ashr i32 128, %291
  %293 = and i32 %290, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %464

295:                                              ; preds = %276
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 142
  br i1 %303, label %304, label %312

304:                                              ; preds = %295
  %305 = load i32, i32* %14, align 4
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %305, i32* %311, align 4
  br label %312

312:                                              ; preds = %304, %295
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %14, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %312
  store i32 142, i32* %14, align 4
  br label %323

323:                                              ; preds = %322, %312
  %324 = load i32, i32* %14, align 4
  switch i32 %324, label %407 [
    i32 144, label %325
    i32 156, label %329
    i32 131, label %333
    i32 159, label %337
    i32 130, label %341
    i32 136, label %341
    i32 128, label %341
    i32 129, label %341
    i32 155, label %341
    i32 145, label %341
    i32 139, label %341
    i32 140, label %341
    i32 153, label %341
    i32 141, label %341
    i32 157, label %343
    i32 147, label %348
    i32 148, label %352
    i32 132, label %356
    i32 133, label %360
    i32 149, label %364
    i32 150, label %368
    i32 134, label %372
    i32 135, label %376
    i32 151, label %380
    i32 152, label %384
    i32 137, label %388
    i32 138, label %392
    i32 158, label %396
    i32 146, label %400
    i32 142, label %404
  ]

325:                                              ; preds = %323
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %327 = load i32, i32* %13, align 4
  %328 = call i32 @set_lockkey_state(%struct.TYPE_8__* %326, i32 %327, i32 144)
  br label %458

329:                                              ; preds = %323
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %331 = load i32, i32* %13, align 4
  %332 = call i32 @set_lockkey_state(%struct.TYPE_8__* %330, i32 %331, i32 156)
  br label %458

333:                                              ; preds = %323
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %335 = load i32, i32* %13, align 4
  %336 = call i32 @set_lockkey_state(%struct.TYPE_8__* %334, i32 %335, i32 131)
  br label %458

337:                                              ; preds = %323
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %339 = load i32, i32* %13, align 4
  %340 = call i32 @set_lockkey_state(%struct.TYPE_8__* %338, i32 %339, i32 159)
  br label %458

341:                                              ; preds = %323, %323, %323, %323, %323, %323, %323, %323, %323, %323
  %342 = load i32*, i32** %11, align 8
  store i32 0, i32* %342, align 4
  br label %458

343:                                              ; preds = %323
  %344 = load i32*, i32** %11, align 8
  store i32 0, i32* %344, align 4
  %345 = load i32, i32* @BKEY, align 4
  %346 = load i32, i32* %14, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %14, align 4
  br label %458

348:                                              ; preds = %323
  %349 = load i32, i32* @SHIFTAON, align 4
  %350 = load i32, i32* %13, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %13, align 4
  store i32 148, i32* %14, align 4
  br label %352

352:                                              ; preds = %323, %348
  %353 = load i32, i32* @SHIFTS1, align 4
  %354 = load i32, i32* %13, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %13, align 4
  br label %458

356:                                              ; preds = %323
  %357 = load i32, i32* @SHIFTAON, align 4
  %358 = load i32, i32* %13, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %13, align 4
  store i32 133, i32* %14, align 4
  br label %360

360:                                              ; preds = %323, %356
  %361 = load i32, i32* @SHIFTS2, align 4
  %362 = load i32, i32* %13, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %13, align 4
  br label %458

364:                                              ; preds = %323
  %365 = load i32, i32* @SHIFTAON, align 4
  %366 = load i32, i32* %13, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %13, align 4
  store i32 150, i32* %14, align 4
  br label %368

368:                                              ; preds = %323, %364
  %369 = load i32, i32* @CTLS1, align 4
  %370 = load i32, i32* %13, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %13, align 4
  br label %458

372:                                              ; preds = %323
  %373 = load i32, i32* @SHIFTAON, align 4
  %374 = load i32, i32* %13, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %13, align 4
  store i32 135, i32* %14, align 4
  br label %376

376:                                              ; preds = %323, %372
  %377 = load i32, i32* @CTLS2, align 4
  %378 = load i32, i32* %13, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %13, align 4
  br label %458

380:                                              ; preds = %323
  %381 = load i32, i32* @SHIFTAON, align 4
  %382 = load i32, i32* %13, align 4
  %383 = or i32 %382, %381
  store i32 %383, i32* %13, align 4
  store i32 152, i32* %14, align 4
  br label %384

384:                                              ; preds = %323, %380
  %385 = load i32, i32* @ALTS1, align 4
  %386 = load i32, i32* %13, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %13, align 4
  br label %458

388:                                              ; preds = %323
  %389 = load i32, i32* @SHIFTAON, align 4
  %390 = load i32, i32* %13, align 4
  %391 = or i32 %390, %389
  store i32 %391, i32* %13, align 4
  store i32 138, i32* %14, align 4
  br label %392

392:                                              ; preds = %323, %388
  %393 = load i32, i32* @ALTS2, align 4
  %394 = load i32, i32* %13, align 4
  %395 = or i32 %394, %393
  store i32 %395, i32* %13, align 4
  br label %458

396:                                              ; preds = %323
  %397 = load i32, i32* @AGRS1, align 4
  %398 = load i32, i32* %13, align 4
  %399 = or i32 %398, %397
  store i32 %399, i32* %13, align 4
  br label %458

400:                                              ; preds = %323
  %401 = load i32, i32* @METAS1, align 4
  %402 = load i32, i32* %13, align 4
  %403 = or i32 %402, %401
  store i32 %403, i32* %13, align 4
  br label %458

404:                                              ; preds = %323
  %405 = load i32, i32* %13, align 4
  %406 = load i32*, i32** %10, align 8
  store i32 %405, i32* %406, align 4
  store i32 143, i32* %6, align 4
  br label %497

407:                                              ; preds = %323
  %408 = load i32, i32* %13, align 4
  %409 = load i32*, i32** %10, align 8
  store i32 %408, i32* %409, align 4
  %410 = load i32, i32* %14, align 4
  %411 = load i32, i32* @F_ACC, align 4
  %412 = icmp sge i32 %410, %411
  br i1 %412, label %413, label %436

413:                                              ; preds = %407
  %414 = load i32, i32* %14, align 4
  %415 = load i32, i32* @L_ACC, align 4
  %416 = icmp sle i32 %414, %415
  br i1 %416, label %417, label %436

417:                                              ; preds = %413
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %419 = load i32, i32* %14, align 4
  %420 = load i32*, i32** %11, align 8
  %421 = call i32 @save_accent_key(%struct.TYPE_8__* %418, i32 %419, i32* %420)
  store i32 %421, i32* %14, align 4
  %422 = load i32, i32* %14, align 4
  switch i32 %422, label %425 [
    i32 143, label %423
    i32 154, label %423
  ]

423:                                              ; preds = %417, %417
  %424 = load i32, i32* %14, align 4
  store i32 %424, i32* %6, align 4
  br label %497

425:                                              ; preds = %417
  %426 = load i32, i32* %13, align 4
  %427 = load i32, i32* @METAS, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %425
  %431 = load i32, i32* %14, align 4
  %432 = load i32, i32* @MKEY, align 4
  %433 = or i32 %431, %432
  store i32 %433, i32* %6, align 4
  br label %497

434:                                              ; preds = %425
  %435 = load i32, i32* %14, align 4
  store i32 %435, i32* %6, align 4
  br label %497

436:                                              ; preds = %413, %407
  %437 = load i32*, i32** %11, align 8
  %438 = load i32, i32* %437, align 4
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %436
  %441 = load i32*, i32** %11, align 8
  store i32 0, i32* %441, align 4
  store i32 154, i32* %6, align 4
  br label %497

442:                                              ; preds = %436
  %443 = load i32, i32* %14, align 4
  %444 = load i32, i32* @F_FN, align 4
  %445 = icmp sge i32 %443, %444
  br i1 %445, label %446, label %454

446:                                              ; preds = %442
  %447 = load i32, i32* %14, align 4
  %448 = load i32, i32* @L_FN, align 4
  %449 = icmp sle i32 %447, %448
  br i1 %449, label %450, label %454

450:                                              ; preds = %446
  %451 = load i32, i32* @FKEY, align 4
  %452 = load i32, i32* %14, align 4
  %453 = or i32 %452, %451
  store i32 %453, i32* %14, align 4
  br label %454

454:                                              ; preds = %450, %446, %442
  %455 = load i32, i32* @SPCLKEY, align 4
  %456 = load i32, i32* %14, align 4
  %457 = or i32 %455, %456
  store i32 %457, i32* %6, align 4
  br label %497

458:                                              ; preds = %400, %396, %392, %384, %376, %368, %360, %352, %343, %341, %337, %333, %329, %325
  %459 = load i32, i32* %13, align 4
  %460 = load i32*, i32** %10, align 8
  store i32 %459, i32* %460, align 4
  %461 = load i32, i32* @SPCLKEY, align 4
  %462 = load i32, i32* %14, align 4
  %463 = or i32 %461, %462
  store i32 %463, i32* %6, align 4
  br label %497

464:                                              ; preds = %276
  %465 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %465, i32 0, i32 0
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %8, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  store i32 142, i32* %470, align 4
  %471 = load i32, i32* %13, align 4
  %472 = load i32*, i32** %10, align 8
  store i32 %471, i32* %472, align 4
  %473 = load i32*, i32** %11, align 8
  %474 = load i32, i32* %473, align 4
  %475 = icmp sgt i32 %474, 0
  br i1 %475, label %476, label %486

476:                                              ; preds = %464
  %477 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %478 = load i32, i32* %14, align 4
  %479 = load i32*, i32** %11, align 8
  %480 = call i32 @make_accent_char(%struct.TYPE_8__* %477, i32 %478, i32* %479)
  store i32 %480, i32* %14, align 4
  %481 = load i32, i32* %14, align 4
  %482 = icmp eq i32 %481, 154
  br i1 %482, label %483, label %485

483:                                              ; preds = %476
  %484 = load i32, i32* %14, align 4
  store i32 %484, i32* %6, align 4
  br label %497

485:                                              ; preds = %476
  br label %486

486:                                              ; preds = %485, %464
  %487 = load i32, i32* %13, align 4
  %488 = load i32, i32* @METAS, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %495

491:                                              ; preds = %486
  %492 = load i32, i32* @MKEY, align 4
  %493 = load i32, i32* %14, align 4
  %494 = or i32 %493, %492
  store i32 %494, i32* %14, align 4
  br label %495

495:                                              ; preds = %491, %486
  %496 = load i32, i32* %14, align 4
  store i32 %496, i32* %6, align 4
  br label %497

497:                                              ; preds = %495, %483, %458, %454, %440, %434, %430, %423, %404, %265, %259
  %498 = load i32, i32* %6, align 4
  ret i32 %498
}

declare dso_local i32 @set_lockkey_state(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @save_accent_key(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @make_accent_char(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
