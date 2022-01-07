; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_decode_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unlz.c_lz_decode_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lz_decoder = type { i32, i32, i32, i32, %struct.lz_range_decoder }
%struct.lz_range_decoder = type { i32 }
%struct.lz_len_model = type { i32 }

@LITERAL_CONTEXT_BITS = common dso_local global i32 0, align 4
@LZ_STATES = common dso_local global i32 0, align 4
@POS_STATES = common dso_local global i32 0, align 4
@DIS_SLOT_BITS = common dso_local global i32 0, align 4
@MODELED_DISTANCES = common dso_local global i32 0, align 4
@DIS_MODEL_END = common dso_local global i32 0, align 4
@DIS_ALIGN_SIZE = common dso_local global i32 0, align 4
@POS_STATE_MASK = common dso_local global i32 0, align 4
@MIN_MATCH_LEN = common dso_local global i32 0, align 4
@STATES = common dso_local global i64 0, align 8
@DIS_MODEL_START = common dso_local global i32 0, align 4
@DIS_ALIGN_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lz_decoder*)* @lz_decode_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_decode_member(%struct.lz_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lz_decoder*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.lz_len_model, align 4
  %16 = alloca %struct.lz_len_model, align 4
  %17 = alloca %struct.lz_range_decoder*, align 8
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.lz_decoder* %0, %struct.lz_decoder** %3, align 8
  %32 = load i32, i32* @LITERAL_CONTEXT_BITS, align 4
  %33 = shl i32 1, %32
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %4, align 8
  %36 = alloca [768 x i32], i64 %34, align 16
  store i64 %34, i64* %5, align 8
  %37 = load i32, i32* @LZ_STATES, align 4
  %38 = zext i32 %37 to i64
  %39 = load i32, i32* @POS_STATES, align 4
  %40 = zext i32 %39 to i64
  %41 = mul nuw i64 %38, %40
  %42 = alloca i32, i64 %41, align 16
  store i64 %38, i64* %6, align 8
  store i64 %40, i64* %7, align 8
  %43 = load i32, i32* @LZ_STATES, align 4
  %44 = zext i32 %43 to i64
  %45 = mul nuw i64 4, %44
  %46 = alloca i32, i64 %45, align 16
  store i64 %44, i64* %8, align 8
  %47 = load i32, i32* @LZ_STATES, align 4
  %48 = zext i32 %47 to i64
  %49 = load i32, i32* @POS_STATES, align 4
  %50 = zext i32 %49 to i64
  %51 = mul nuw i64 %48, %50
  %52 = alloca i32, i64 %51, align 16
  store i64 %48, i64* %9, align 8
  store i64 %50, i64* %10, align 8
  %53 = load i32, i32* @LZ_STATES, align 4
  %54 = zext i32 %53 to i64
  %55 = load i32, i32* @DIS_SLOT_BITS, align 4
  %56 = shl i32 1, %55
  %57 = zext i32 %56 to i64
  %58 = mul nuw i64 %54, %57
  %59 = alloca i32, i64 %58, align 16
  store i64 %54, i64* %11, align 8
  store i64 %57, i64* %12, align 8
  %60 = load i32, i32* @MODELED_DISTANCES, align 4
  %61 = load i32, i32* @DIS_MODEL_END, align 4
  %62 = sub i32 %60, %61
  %63 = add i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = alloca i32, i64 %64, align 16
  store i64 %64, i64* %13, align 8
  %66 = load i32, i32* @DIS_ALIGN_SIZE, align 4
  %67 = zext i32 %66 to i64
  %68 = alloca i32, i64 %67, align 16
  store i64 %67, i64* %14, align 8
  %69 = bitcast [768 x i32]* %36 to i32**
  %70 = call i32 @LZ_BM_INIT2(i32** %69)
  %71 = bitcast i32* %42 to i32**
  %72 = call i32 @LZ_BM_INIT2(i32** %71)
  %73 = bitcast i32* %46 to i32**
  %74 = call i32 @LZ_BM_INIT2(i32** %73)
  %75 = bitcast i32* %52 to i32**
  %76 = call i32 @LZ_BM_INIT2(i32** %75)
  %77 = bitcast i32* %59 to i32**
  %78 = call i32 @LZ_BM_INIT2(i32** %77)
  %79 = call i32 @LZ_BM_INIT(i32* %65)
  %80 = call i32 @LZ_BM_INIT(i32* %68)
  %81 = getelementptr inbounds %struct.lz_len_model, %struct.lz_len_model* %15, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @LZ_MODEL_INIT(i32 %82)
  %84 = getelementptr inbounds %struct.lz_len_model, %struct.lz_len_model* %16, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @LZ_MODEL_INIT(i32 %85)
  %87 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %88 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %87, i32 0, i32 4
  store %struct.lz_range_decoder* %88, %struct.lz_range_decoder** %17, align 8
  %89 = bitcast [4 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %89, i8 0, i64 16, i1 false)
  store i32 0, i32* %19, align 4
  br label %90

90:                                               ; preds = %378, %185, %153, %1
  %91 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %92 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @feof(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %90
  %97 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %98 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ferror(i32 %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %96, %90
  %104 = phi i1 [ false, %90 ], [ %102, %96 ]
  br i1 %104, label %105, label %379

105:                                              ; preds = %103
  %106 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %107 = call i32 @lz_get_data_position(%struct.lz_decoder* %106)
  %108 = load i32, i32* @POS_STATE_MASK, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %20, align 4
  %110 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %40
  %114 = getelementptr inbounds i32, i32* %42, i64 %113
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i64 @lz_rd_decode_bit(%struct.lz_range_decoder* %110, i32* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %105
  %121 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %122 = call i8* @lz_peek(%struct.lz_decoder* %121, i32 0)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* @LITERAL_CONTEXT_BITS, align 4
  %126 = sub nsw i32 8, %125
  %127 = ashr i32 %124, %126
  store i32 %127, i32* %22, align 4
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [768 x i32], [768 x i32]* %36, i64 %129
  %131 = getelementptr inbounds [768 x i32], [768 x i32]* %130, i64 0, i64 0
  store i32* %131, i32** %23, align 8
  %132 = load i32, i32* %19, align 4
  %133 = call i64 @lz_st_is_char(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %120
  %136 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %137 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %138 = load i32*, i32** %23, align 8
  %139 = call i8* @lz_rd_decode_tree(%struct.lz_range_decoder* %137, i32* %138, i32 8)
  %140 = call i32 @lz_put(%struct.lz_decoder* %136, i8* %139)
  br label %153

141:                                              ; preds = %120
  %142 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %144 = load i32, i32* %143, align 16
  %145 = call i8* @lz_peek(%struct.lz_decoder* %142, i32 %144)
  %146 = ptrtoint i8* %145 to i32
  store i32 %146, i32* %24, align 4
  %147 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %148 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %149 = load i32*, i32** %23, align 8
  %150 = load i32, i32* %24, align 4
  %151 = call i8* @lz_rd_decode_matched(%struct.lz_range_decoder* %148, i32* %149, i32 %150)
  %152 = call i32 @lz_put(%struct.lz_decoder* %147, i8* %151)
  br label %153

153:                                              ; preds = %141, %135
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @lz_st_get_char(i32 %154)
  store i32 %155, i32* %19, align 4
  br label %90

156:                                              ; preds = %105
  %157 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %158 = mul nsw i64 0, %44
  %159 = getelementptr inbounds i32, i32* %46, i64 %158
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = call i64 @lz_rd_decode_bit(%struct.lz_range_decoder* %157, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %243

165:                                              ; preds = %156
  %166 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %167 = mul nsw i64 1, %44
  %168 = getelementptr inbounds i32, i32* %46, i64 %167
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = call i64 @lz_rd_decode_bit(%struct.lz_range_decoder* %166, i32* %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %165
  %175 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %176 = load i32, i32* %19, align 4
  %177 = sext i32 %176 to i64
  %178 = mul nsw i64 %177, %50
  %179 = getelementptr inbounds i32, i32* %52, i64 %178
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = call i64 @lz_rd_decode_bit(%struct.lz_range_decoder* %175, i32* %182)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %174
  %186 = load i32, i32* %19, align 4
  %187 = call i32 @lz_st_get_short_rep(i32 %186)
  store i32 %187, i32* %19, align 4
  %188 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %189 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %191 = load i32, i32* %190, align 16
  %192 = call i8* @lz_peek(%struct.lz_decoder* %189, i32 %191)
  %193 = call i32 @lz_put(%struct.lz_decoder* %188, i8* %192)
  br label %90

194:                                              ; preds = %174
  br label %235

195:                                              ; preds = %165
  %196 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %197 = mul nsw i64 2, %44
  %198 = getelementptr inbounds i32, i32* %46, i64 %197
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = call i64 @lz_rd_decode_bit(%struct.lz_range_decoder* %196, i32* %201)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %26, align 4
  br label %229

207:                                              ; preds = %195
  %208 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %209 = mul nsw i64 3, %44
  %210 = getelementptr inbounds i32, i32* %46, i64 %209
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = call i64 @lz_rd_decode_bit(%struct.lz_range_decoder* %208, i32* %213)
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %207
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %26, align 4
  br label %225

219:                                              ; preds = %207
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %26, align 4
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %223 = load i32, i32* %222, align 8
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %223, i32* %224, align 4
  br label %225

225:                                              ; preds = %219, %216
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %227, i32* %228, align 8
  br label %229

229:                                              ; preds = %225, %204
  %230 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %231 = load i32, i32* %230, align 16
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %231, i32* %232, align 4
  %233 = load i32, i32* %26, align 4
  %234 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %233, i32* %234, align 16
  br label %235

235:                                              ; preds = %229, %194
  %236 = load i32, i32* %19, align 4
  %237 = call i32 @lz_st_get_rep(i32 %236)
  store i32 %237, i32* %19, align 4
  %238 = load i32, i32* @MIN_MATCH_LEN, align 4
  %239 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %240 = load i32, i32* %20, align 4
  %241 = call i32 @lz_rd_decode_len(%struct.lz_range_decoder* %239, %struct.lz_len_model* %16, i32 %240)
  %242 = add nsw i32 %238, %241
  store i32 %242, i32* %25, align 4
  br label %363

243:                                              ; preds = %156
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %245, i32* %246, align 4
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %248, i32* %249, align 8
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %251 = load i32, i32* %250, align 16
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %251, i32* %252, align 4
  %253 = load i32, i32* @MIN_MATCH_LEN, align 4
  %254 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %255 = load i32, i32* %20, align 4
  %256 = call i32 @lz_rd_decode_len(%struct.lz_range_decoder* %254, %struct.lz_len_model* %15, i32 %255)
  %257 = add nsw i32 %253, %256
  store i32 %257, i32* %25, align 4
  %258 = load i32, i32* %25, align 4
  %259 = load i32, i32* @MIN_MATCH_LEN, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load i64, i64* @STATES, align 8
  %262 = sub nsw i64 %261, 1
  %263 = call i32 @MIN(i32 %260, i64 %262)
  store i32 %263, i32* %27, align 4
  %264 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %265 = load i32, i32* %27, align 4
  %266 = sext i32 %265 to i64
  %267 = mul nsw i64 %266, %57
  %268 = getelementptr inbounds i32, i32* %59, i64 %267
  %269 = load i32, i32* @DIS_SLOT_BITS, align 4
  %270 = call i8* @lz_rd_decode_tree(%struct.lz_range_decoder* %264, i32* %268, i32 %269)
  %271 = ptrtoint i8* %270 to i32
  %272 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %271, i32* %272, align 16
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %274 = load i32, i32* %273, align 16
  %275 = load i32, i32* @DIS_MODEL_START, align 4
  %276 = icmp uge i32 %274, %275
  br i1 %276, label %277, label %338

277:                                              ; preds = %243
  %278 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %279 = load i32, i32* %278, align 16
  store i32 %279, i32* %28, align 4
  %280 = load i32, i32* %28, align 4
  %281 = lshr i32 %280, 1
  %282 = sub i32 %281, 1
  store i32 %282, i32* %29, align 4
  %283 = load i32, i32* %28, align 4
  %284 = and i32 %283, 1
  %285 = or i32 2, %284
  %286 = load i32, i32* %29, align 4
  %287 = shl i32 %285, %286
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %287, i32* %288, align 16
  %289 = load i32, i32* %28, align 4
  %290 = load i32, i32* @DIS_MODEL_END, align 4
  %291 = icmp ult i32 %289, %290
  br i1 %291, label %292, label %307

292:                                              ; preds = %277
  %293 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %294 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %295 = load i32, i32* %294, align 16
  %296 = load i32, i32* %28, align 4
  %297 = sub i32 %295, %296
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %65, i64 %298
  %300 = load i32, i32* %29, align 4
  %301 = call i64 @lz_rd_decode_tree_reversed(%struct.lz_range_decoder* %293, i32* %299, i32 %300)
  %302 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %303 = load i32, i32* %302, align 16
  %304 = zext i32 %303 to i64
  %305 = add nsw i64 %304, %301
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %302, align 16
  br label %337

307:                                              ; preds = %277
  %308 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %309 = load i32, i32* %29, align 4
  %310 = load i32, i32* @DIS_ALIGN_BITS, align 4
  %311 = sub nsw i32 %309, %310
  %312 = call i32 @lz_rd_decode(%struct.lz_range_decoder* %308, i32 %311)
  %313 = load i32, i32* @DIS_ALIGN_BITS, align 4
  %314 = shl i32 %312, %313
  %315 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %316 = load i32, i32* %315, align 16
  %317 = add i32 %316, %314
  store i32 %317, i32* %315, align 16
  %318 = load %struct.lz_range_decoder*, %struct.lz_range_decoder** %17, align 8
  %319 = load i32, i32* @DIS_ALIGN_BITS, align 4
  %320 = call i64 @lz_rd_decode_tree_reversed(%struct.lz_range_decoder* %318, i32* %68, i32 %319)
  %321 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %322 = load i32, i32* %321, align 16
  %323 = zext i32 %322 to i64
  %324 = add nsw i64 %323, %320
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %321, align 16
  %326 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %327 = load i32, i32* %326, align 16
  %328 = icmp eq i32 %327, -1
  br i1 %328, label %329, label %336

329:                                              ; preds = %307
  %330 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %331 = call i32 @lz_flush(%struct.lz_decoder* %330)
  %332 = load i32, i32* %25, align 4
  %333 = load i32, i32* @MIN_MATCH_LEN, align 4
  %334 = icmp eq i32 %332, %333
  %335 = zext i1 %334 to i32
  store i32 %335, i32* %2, align 4
  store i32 1, i32* %30, align 4
  br label %382

336:                                              ; preds = %307
  br label %337

337:                                              ; preds = %336, %292
  br label %338

338:                                              ; preds = %337, %243
  %339 = load i32, i32* %19, align 4
  %340 = call i32 @lz_st_get_match(i32 %339)
  store i32 %340, i32* %19, align 4
  %341 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %342 = load i32, i32* %341, align 16
  %343 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %344 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = icmp uge i32 %342, %345
  br i1 %346, label %359, label %347

347:                                              ; preds = %338
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %349 = load i32, i32* %348, align 16
  %350 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %351 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = icmp uge i32 %349, %352
  br i1 %353, label %354, label %362

354:                                              ; preds = %347
  %355 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %356 = getelementptr inbounds %struct.lz_decoder, %struct.lz_decoder* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %354, %338
  %360 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %361 = call i32 @lz_flush(%struct.lz_decoder* %360)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %30, align 4
  br label %382

362:                                              ; preds = %354, %347
  br label %363

363:                                              ; preds = %362, %235
  store i32 0, i32* %31, align 4
  br label %364

364:                                              ; preds = %375, %363
  %365 = load i32, i32* %31, align 4
  %366 = load i32, i32* %25, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %378

368:                                              ; preds = %364
  %369 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %370 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %371 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %372 = load i32, i32* %371, align 16
  %373 = call i8* @lz_peek(%struct.lz_decoder* %370, i32 %372)
  %374 = call i32 @lz_put(%struct.lz_decoder* %369, i8* %373)
  br label %375

375:                                              ; preds = %368
  %376 = load i32, i32* %31, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %31, align 4
  br label %364

378:                                              ; preds = %364
  br label %90

379:                                              ; preds = %103
  %380 = load %struct.lz_decoder*, %struct.lz_decoder** %3, align 8
  %381 = call i32 @lz_flush(%struct.lz_decoder* %380)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %30, align 4
  br label %382

382:                                              ; preds = %379, %359, %329
  %383 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %383)
  %384 = load i32, i32* %2, align 4
  ret i32 %384
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LZ_BM_INIT2(i32**) #2

declare dso_local i32 @LZ_BM_INIT(i32*) #2

declare dso_local i32 @LZ_MODEL_INIT(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @feof(i32) #2

declare dso_local i32 @ferror(i32) #2

declare dso_local i32 @lz_get_data_position(%struct.lz_decoder*) #2

declare dso_local i64 @lz_rd_decode_bit(%struct.lz_range_decoder*, i32*) #2

declare dso_local i8* @lz_peek(%struct.lz_decoder*, i32) #2

declare dso_local i64 @lz_st_is_char(i32) #2

declare dso_local i32 @lz_put(%struct.lz_decoder*, i8*) #2

declare dso_local i8* @lz_rd_decode_tree(%struct.lz_range_decoder*, i32*, i32) #2

declare dso_local i8* @lz_rd_decode_matched(%struct.lz_range_decoder*, i32*, i32) #2

declare dso_local i32 @lz_st_get_char(i32) #2

declare dso_local i32 @lz_st_get_short_rep(i32) #2

declare dso_local i32 @lz_st_get_rep(i32) #2

declare dso_local i32 @lz_rd_decode_len(%struct.lz_range_decoder*, %struct.lz_len_model*, i32) #2

declare dso_local i32 @MIN(i32, i64) #2

declare dso_local i64 @lz_rd_decode_tree_reversed(%struct.lz_range_decoder*, i32*, i32) #2

declare dso_local i32 @lz_rd_decode(%struct.lz_range_decoder*, i32) #2

declare dso_local i32 @lz_flush(%struct.lz_decoder*) #2

declare dso_local i32 @lz_st_get_match(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
