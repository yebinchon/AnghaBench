; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_mppcd.c_MPPC_Decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_mppcd.c_MPPC_Decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPPC_decomp_state = type { i32*, i32 }

@MPPC_OK = common dso_local global i32 0, align 4
@MPPC_RESTART_HISTORY = common dso_local global i32 0, align 4
@MPPE_HIST_LEN = common dso_local global i32 0, align 4
@MPPC_DEST_EXHAUSTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MPPC_Decompress(i32** %0, i32** %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.MPPC_decomp_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = bitcast i8* %27 to %struct.MPPC_decomp_state*
  store %struct.MPPC_decomp_state* %28, %struct.MPPC_decomp_state** %14, align 8
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %25, align 8
  %31 = load i32, i32* @MPPC_OK, align 4
  store i32 %31, i32* %26, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @MPPC_RESTART_HISTORY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %6
  %37 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %38 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %41 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @MPPE_HIST_LEN, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* @MPPE_HIST_LEN, align 4
  %47 = call i32 @memcpy(i32* %39, i32* %45, i32 %46)
  %48 = load i32, i32* @MPPE_HIST_LEN, align 4
  %49 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %50 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %36, %6
  %52 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %53 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %56 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %23, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 8, i32* %22, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 8
  store i32 %62, i32* %18, align 4
  br label %63

63:                                               ; preds = %434, %138, %98, %51
  %64 = load i32, i32* %18, align 4
  %65 = icmp sge i32 %64, 8
  br i1 %65, label %66, label %435

66:                                               ; preds = %63
  %67 = load i32*, i32** %25, align 8
  %68 = load i32, i32* %21, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %22, align 4
  %71 = call i32 @getbyte(i32* %67, i32 %68, i32 %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp slt i32 %72, 128
  br i1 %73, label %74, label %103

74:                                               ; preds = %66
  %75 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %76 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MPPE_HIST_LEN, align 4
  %79 = mul nsw i32 2, %78
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load i32, i32* %19, align 4
  %83 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %84 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %87 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  store i32 %82, i32* %91, align 4
  br label %98

92:                                               ; preds = %74
  %93 = load i32, i32* @MPPC_OK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %26, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %26, align 4
  %97 = load i32, i32* %26, align 4
  store i32 %97, i32* %7, align 4
  br label %484

98:                                               ; preds = %81
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %18, align 4
  %102 = sub nsw i32 %101, 8
  store i32 %102, i32* %18, align 4
  br label %63

103:                                              ; preds = %66
  %104 = load i32, i32* %19, align 4
  %105 = and i32 %104, 192
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp eq i32 %106, 128
  br i1 %107, label %108, label %143

108:                                              ; preds = %103
  %109 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %110 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MPPE_HIST_LEN, align 4
  %113 = mul nsw i32 2, %112
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = load i32, i32* %19, align 4
  %117 = and i32 %116, 63
  %118 = shl i32 %117, 1
  %119 = or i32 128, %118
  %120 = load i32*, i32** %25, align 8
  %121 = call i32 @getbits(i32* %120, i32 1, i32* %21, i32* %22)
  %122 = or i32 %119, %121
  %123 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %124 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %127 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %125, i64 %130
  store i32 %122, i32* %131, align 4
  br label %138

132:                                              ; preds = %108
  %133 = load i32, i32* @MPPC_OK, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %26, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %26, align 4
  %137 = load i32, i32* %26, align 4
  store i32 %137, i32* %7, align 4
  br label %484

138:                                              ; preds = %115
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %18, align 4
  %142 = sub nsw i32 %141, 9
  store i32 %142, i32* %18, align 4
  br label %63

143:                                              ; preds = %103
  %144 = load i32, i32* %19, align 4
  %145 = and i32 %144, 240
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp eq i32 %146, 240
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load i32, i32* %19, align 4
  %150 = and i32 %149, 15
  %151 = shl i32 %150, 2
  %152 = load i32*, i32** %25, align 8
  %153 = call i32 @getbits(i32* %152, i32 2, i32* %21, i32* %22)
  %154 = or i32 %151, %153
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %18, align 4
  %156 = sub nsw i32 %155, 10
  store i32 %156, i32* %18, align 4
  br label %206

157:                                              ; preds = %143
  %158 = load i32, i32* %20, align 4
  %159 = icmp eq i32 %158, 224
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load i32, i32* %19, align 4
  %162 = and i32 %161, 15
  %163 = shl i32 %162, 4
  %164 = load i32*, i32** %25, align 8
  %165 = call i32 @getbits(i32* %164, i32 4, i32* %21, i32* %22)
  %166 = or i32 %163, %165
  %167 = add nsw i32 %166, 64
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %18, align 4
  %169 = sub nsw i32 %168, 12
  store i32 %169, i32* %18, align 4
  br label %205

170:                                              ; preds = %157
  %171 = load i32, i32* %20, align 4
  %172 = and i32 %171, 224
  %173 = icmp eq i32 %172, 192
  br i1 %173, label %174, label %198

174:                                              ; preds = %170
  %175 = load i32, i32* %19, align 4
  %176 = and i32 %175, 31
  %177 = shl i32 %176, 8
  %178 = load i32*, i32** %25, align 8
  %179 = load i32, i32* %21, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %21, align 4
  %181 = load i32, i32* %22, align 4
  %182 = call i32 @getbyte(i32* %178, i32 %179, i32 %181)
  %183 = or i32 %177, %182
  %184 = add nsw i32 %183, 320
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %18, align 4
  %186 = sub nsw i32 %185, 16
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* @MPPE_HIST_LEN, align 4
  %189 = sub nsw i32 %188, 1
  %190 = icmp sgt i32 %187, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %174
  %192 = load i32, i32* @MPPC_OK, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %26, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %26, align 4
  %196 = load i32, i32* %26, align 4
  store i32 %196, i32* %7, align 4
  br label %484

197:                                              ; preds = %174
  br label %204

198:                                              ; preds = %170
  %199 = load i32, i32* @MPPC_OK, align 4
  %200 = xor i32 %199, -1
  %201 = load i32, i32* %26, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %26, align 4
  %203 = load i32, i32* %26, align 4
  store i32 %203, i32* %7, align 4
  br label %484

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204, %160
  br label %206

206:                                              ; preds = %205, %148
  %207 = load i32*, i32** %25, align 8
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %22, align 4
  %210 = call i32 @getbyte(i32* %207, i32 %208, i32 %209)
  store i32 %210, i32* %19, align 4
  %211 = load i32, i32* %19, align 4
  %212 = and i32 %211, 128
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %206
  store i32 3, i32* %17, align 4
  %215 = load i32, i32* %18, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %18, align 4
  %217 = load i32*, i32** %25, align 8
  %218 = call i32 @getbits(i32* %217, i32 1, i32* %21, i32* %22)
  br label %396

219:                                              ; preds = %206
  %220 = load i32, i32* %19, align 4
  %221 = and i32 %220, 192
  %222 = icmp eq i32 %221, 128
  br i1 %222, label %223, label %232

223:                                              ; preds = %219
  %224 = load i32, i32* %19, align 4
  %225 = ashr i32 %224, 4
  %226 = and i32 %225, 3
  %227 = or i32 4, %226
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %18, align 4
  %229 = sub nsw i32 %228, 4
  store i32 %229, i32* %18, align 4
  %230 = load i32*, i32** %25, align 8
  %231 = call i32 @getbits(i32* %230, i32 4, i32* %21, i32* %22)
  br label %395

232:                                              ; preds = %219
  %233 = load i32, i32* %19, align 4
  %234 = and i32 %233, 224
  %235 = icmp eq i32 %234, 192
  br i1 %235, label %236, label %245

236:                                              ; preds = %232
  %237 = load i32, i32* %19, align 4
  %238 = ashr i32 %237, 2
  %239 = and i32 %238, 7
  %240 = or i32 8, %239
  store i32 %240, i32* %17, align 4
  %241 = load i32, i32* %18, align 4
  %242 = sub nsw i32 %241, 6
  store i32 %242, i32* %18, align 4
  %243 = load i32*, i32** %25, align 8
  %244 = call i32 @getbits(i32* %243, i32 6, i32* %21, i32* %22)
  br label %394

245:                                              ; preds = %232
  %246 = load i32, i32* %19, align 4
  %247 = and i32 %246, 240
  %248 = icmp eq i32 %247, 224
  br i1 %248, label %249, label %257

249:                                              ; preds = %245
  %250 = load i32, i32* %19, align 4
  %251 = and i32 %250, 15
  %252 = or i32 16, %251
  store i32 %252, i32* %17, align 4
  %253 = load i32, i32* %18, align 4
  %254 = sub nsw i32 %253, 8
  store i32 %254, i32* %18, align 4
  %255 = load i32, i32* %21, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %21, align 4
  br label %393

257:                                              ; preds = %245
  %258 = load i32, i32* %18, align 4
  %259 = sub nsw i32 %258, 8
  store i32 %259, i32* %18, align 4
  %260 = load i32, i32* %19, align 4
  %261 = shl i32 %260, 8
  %262 = load i32*, i32** %25, align 8
  %263 = load i32, i32* %21, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %21, align 4
  %265 = load i32, i32* %22, align 4
  %266 = call i32 @getbyte(i32* %262, i32 %264, i32 %265)
  %267 = or i32 %261, %266
  store i32 %267, i32* %19, align 4
  %268 = load i32, i32* %19, align 4
  %269 = and i32 %268, 63488
  %270 = icmp eq i32 %269, 61440
  br i1 %270, label %271, label %280

271:                                              ; preds = %257
  %272 = load i32, i32* %19, align 4
  %273 = ashr i32 %272, 6
  %274 = and i32 %273, 31
  %275 = or i32 32, %274
  store i32 %275, i32* %17, align 4
  %276 = load i32, i32* %18, align 4
  %277 = sub nsw i32 %276, 2
  store i32 %277, i32* %18, align 4
  %278 = load i32*, i32** %25, align 8
  %279 = call i32 @getbits(i32* %278, i32 2, i32* %21, i32* %22)
  br label %392

280:                                              ; preds = %257
  %281 = load i32, i32* %19, align 4
  %282 = and i32 %281, 64512
  %283 = icmp eq i32 %282, 63488
  br i1 %283, label %284, label %293

284:                                              ; preds = %280
  %285 = load i32, i32* %19, align 4
  %286 = ashr i32 %285, 4
  %287 = and i32 %286, 63
  %288 = or i32 64, %287
  store i32 %288, i32* %17, align 4
  %289 = load i32, i32* %18, align 4
  %290 = sub nsw i32 %289, 4
  store i32 %290, i32* %18, align 4
  %291 = load i32*, i32** %25, align 8
  %292 = call i32 @getbits(i32* %291, i32 4, i32* %21, i32* %22)
  br label %391

293:                                              ; preds = %280
  %294 = load i32, i32* %19, align 4
  %295 = and i32 %294, 65024
  %296 = icmp eq i32 %295, 64512
  br i1 %296, label %297, label %306

297:                                              ; preds = %293
  %298 = load i32, i32* %19, align 4
  %299 = ashr i32 %298, 2
  %300 = and i32 %299, 127
  %301 = or i32 128, %300
  store i32 %301, i32* %17, align 4
  %302 = load i32, i32* %18, align 4
  %303 = sub nsw i32 %302, 6
  store i32 %303, i32* %18, align 4
  %304 = load i32*, i32** %25, align 8
  %305 = call i32 @getbits(i32* %304, i32 6, i32* %21, i32* %22)
  br label %390

306:                                              ; preds = %293
  %307 = load i32, i32* %19, align 4
  %308 = and i32 %307, 65280
  %309 = icmp eq i32 %308, 65024
  br i1 %309, label %310, label %318

310:                                              ; preds = %306
  %311 = load i32, i32* %19, align 4
  %312 = and i32 %311, 255
  %313 = or i32 256, %312
  store i32 %313, i32* %17, align 4
  %314 = load i32, i32* %18, align 4
  %315 = sub nsw i32 %314, 8
  store i32 %315, i32* %18, align 4
  %316 = load i32, i32* %21, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %21, align 4
  br label %389

318:                                              ; preds = %306
  %319 = load i32, i32* %18, align 4
  %320 = sub nsw i32 %319, 8
  store i32 %320, i32* %18, align 4
  %321 = load i32, i32* %19, align 4
  %322 = shl i32 %321, 8
  %323 = load i32*, i32** %25, align 8
  %324 = load i32, i32* %21, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %21, align 4
  %326 = load i32, i32* %22, align 4
  %327 = call i32 @getbyte(i32* %323, i32 %325, i32 %326)
  %328 = or i32 %322, %327
  store i32 %328, i32* %19, align 4
  %329 = load i32, i32* %19, align 4
  %330 = and i32 %329, 16744448
  %331 = icmp eq i32 %330, 16711680
  br i1 %331, label %332, label %341

332:                                              ; preds = %318
  %333 = load i32, i32* %19, align 4
  %334 = ashr i32 %333, 6
  %335 = and i32 %334, 511
  %336 = or i32 512, %335
  store i32 %336, i32* %17, align 4
  %337 = load i32, i32* %18, align 4
  %338 = sub nsw i32 %337, 2
  store i32 %338, i32* %18, align 4
  %339 = load i32*, i32** %25, align 8
  %340 = call i32 @getbits(i32* %339, i32 2, i32* %21, i32* %22)
  br label %388

341:                                              ; preds = %318
  %342 = load i32, i32* %19, align 4
  %343 = and i32 %342, 16760832
  %344 = icmp eq i32 %343, 16744448
  br i1 %344, label %345, label %354

345:                                              ; preds = %341
  %346 = load i32, i32* %19, align 4
  %347 = ashr i32 %346, 4
  %348 = and i32 %347, 1023
  %349 = or i32 1024, %348
  store i32 %349, i32* %17, align 4
  %350 = load i32, i32* %18, align 4
  %351 = sub nsw i32 %350, 4
  store i32 %351, i32* %18, align 4
  %352 = load i32*, i32** %25, align 8
  %353 = call i32 @getbits(i32* %352, i32 4, i32* %21, i32* %22)
  br label %387

354:                                              ; preds = %341
  %355 = load i32, i32* %19, align 4
  %356 = and i32 %355, 16769024
  %357 = icmp eq i32 %356, 16760832
  br i1 %357, label %358, label %367

358:                                              ; preds = %354
  %359 = load i32, i32* %19, align 4
  %360 = ashr i32 %359, 2
  %361 = and i32 %360, 2047
  %362 = or i32 2048, %361
  store i32 %362, i32* %17, align 4
  %363 = load i32, i32* %18, align 4
  %364 = sub nsw i32 %363, 6
  store i32 %364, i32* %18, align 4
  %365 = load i32*, i32** %25, align 8
  %366 = call i32 @getbits(i32* %365, i32 6, i32* %21, i32* %22)
  br label %386

367:                                              ; preds = %354
  %368 = load i32, i32* %19, align 4
  %369 = and i32 %368, 16773120
  %370 = icmp eq i32 %369, 16769024
  br i1 %370, label %371, label %379

371:                                              ; preds = %367
  %372 = load i32, i32* %19, align 4
  %373 = and i32 %372, 4095
  %374 = or i32 4096, %373
  store i32 %374, i32* %17, align 4
  %375 = load i32, i32* %18, align 4
  %376 = sub nsw i32 %375, 8
  store i32 %376, i32* %18, align 4
  %377 = load i32, i32* %21, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %21, align 4
  br label %385

379:                                              ; preds = %367
  %380 = load i32, i32* @MPPC_OK, align 4
  %381 = xor i32 %380, -1
  %382 = load i32, i32* %26, align 4
  %383 = and i32 %382, %381
  store i32 %383, i32* %26, align 4
  %384 = load i32, i32* %26, align 4
  store i32 %384, i32* %7, align 4
  br label %484

385:                                              ; preds = %371
  br label %386

386:                                              ; preds = %385, %358
  br label %387

387:                                              ; preds = %386, %345
  br label %388

388:                                              ; preds = %387, %332
  br label %389

389:                                              ; preds = %388, %310
  br label %390

390:                                              ; preds = %389, %297
  br label %391

391:                                              ; preds = %390, %284
  br label %392

392:                                              ; preds = %391, %271
  br label %393

393:                                              ; preds = %392, %249
  br label %394

394:                                              ; preds = %393, %236
  br label %395

395:                                              ; preds = %394, %223
  br label %396

396:                                              ; preds = %395, %214
  %397 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %398 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %401 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %399, i64 %403
  store i32* %404, i32** %24, align 8
  %405 = load i32, i32* %17, align 4
  %406 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %407 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = add nsw i32 %408, %405
  store i32 %409, i32* %407, align 8
  %410 = load i32, i32* %17, align 4
  %411 = load i32, i32* %15, align 4
  %412 = add nsw i32 %411, %410
  store i32 %412, i32* %15, align 4
  %413 = load %struct.MPPC_decomp_state*, %struct.MPPC_decomp_state** %14, align 8
  %414 = getelementptr inbounds %struct.MPPC_decomp_state, %struct.MPPC_decomp_state* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @MPPE_HIST_LEN, align 4
  %417 = mul nsw i32 2, %416
  %418 = icmp slt i32 %415, %417
  br i1 %418, label %419, label %428

419:                                              ; preds = %396
  %420 = load i32*, i32** %24, align 8
  %421 = load i32*, i32** %24, align 8
  %422 = load i32, i32* %16, align 4
  %423 = sext i32 %422 to i64
  %424 = sub i64 0, %423
  %425 = getelementptr inbounds i32, i32* %421, i64 %424
  %426 = load i32, i32* %17, align 4
  %427 = call i32 @lamecopy(i32* %420, i32* %425, i32 %426)
  br label %434

428:                                              ; preds = %396
  %429 = load i32, i32* @MPPC_OK, align 4
  %430 = xor i32 %429, -1
  %431 = load i32, i32* %26, align 4
  %432 = and i32 %431, %430
  store i32 %432, i32* %26, align 4
  %433 = load i32, i32* %26, align 4
  store i32 %433, i32* %7, align 4
  br label %484

434:                                              ; preds = %419
  br label %63

435:                                              ; preds = %63
  %436 = load i32, i32* %15, align 4
  store i32 %436, i32* %17, align 4
  %437 = load i32*, i32** %23, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 0
  %439 = load i32, i32* %438, align 4
  %440 = and i32 %439, 1
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %451

442:                                              ; preds = %435
  %443 = load i32**, i32*** %9, align 8
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 0
  store i32 0, i32* %445, align 4
  %446 = load i32**, i32*** %9, align 8
  %447 = load i32*, i32** %446, align 8
  %448 = getelementptr inbounds i32, i32* %447, i32 1
  store i32* %448, i32** %446, align 8
  %449 = load i32, i32* %17, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %17, align 4
  br label %451

451:                                              ; preds = %442, %435
  %452 = load i32, i32* %17, align 4
  %453 = load i32*, i32** %11, align 8
  %454 = load i32, i32* %453, align 4
  %455 = icmp sle i32 %452, %454
  br i1 %455, label %456, label %462

456:                                              ; preds = %451
  %457 = load i32**, i32*** %9, align 8
  %458 = load i32*, i32** %457, align 8
  %459 = load i32*, i32** %23, align 8
  %460 = load i32, i32* %15, align 4
  %461 = call i32 @memcpy(i32* %458, i32* %459, i32 %460)
  br label %466

462:                                              ; preds = %451
  %463 = load i32, i32* @MPPC_DEST_EXHAUSTED, align 4
  %464 = load i32, i32* %26, align 4
  %465 = or i32 %464, %463
  store i32 %465, i32* %26, align 4
  br label %466

466:                                              ; preds = %462, %456
  %467 = load i32*, i32** %10, align 8
  %468 = load i32, i32* %467, align 4
  %469 = load i32**, i32*** %8, align 8
  %470 = load i32*, i32** %469, align 8
  %471 = sext i32 %468 to i64
  %472 = getelementptr inbounds i32, i32* %470, i64 %471
  store i32* %472, i32** %469, align 8
  %473 = load i32*, i32** %10, align 8
  store i32 0, i32* %473, align 4
  %474 = load i32, i32* %17, align 4
  %475 = load i32**, i32*** %9, align 8
  %476 = load i32*, i32** %475, align 8
  %477 = sext i32 %474 to i64
  %478 = getelementptr inbounds i32, i32* %476, i64 %477
  store i32* %478, i32** %475, align 8
  %479 = load i32, i32* %17, align 4
  %480 = load i32*, i32** %11, align 8
  %481 = load i32, i32* %480, align 4
  %482 = sub nsw i32 %481, %479
  store i32 %482, i32* %480, align 4
  %483 = load i32, i32* %26, align 4
  store i32 %483, i32* %7, align 4
  br label %484

484:                                              ; preds = %466, %428, %379, %198, %191, %132, %92
  %485 = load i32, i32* %7, align 4
  ret i32 %485
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @getbyte(i32*, i32, i32) #1

declare dso_local i32 @getbits(i32*, i32, i32*, i32*) #1

declare dso_local i32 @lamecopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
