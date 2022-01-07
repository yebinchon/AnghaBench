; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_handle_fpdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_handle_fpdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32*, i32, i64 }
%struct.fpemu = type { %struct.fpn, %struct.fpn, %struct.fpn, i32 }
%struct.fpn = type { i32 }

@OPC_SHIFT = common dso_local global i32 0, align 4
@SPE_OPC = common dso_local global i32 0, align 4
@PSL_VEC = common dso_local global i32 0, align 4
@EVFSCMPEQ = common dso_local global i32 0, align 4
@EVFSCMPGT = common dso_local global i32 0, align 4
@EVFSCMPLT = common dso_local global i32 0, align 4
@SPE_INST_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown storage width %d\00", align 1
@SPR_SPEFSCR = common dso_local global i32 0, align 4
@SPEFSCR_FINVS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spe_handle_fpdata(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.fpemu, align 4
  %4 = alloca %struct.fpn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %22 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @fueword32(i8* %24, i32* %5)
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %19, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %480

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @OPC_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @SPE_OPC, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %480

36:                                               ; preds = %29
  %37 = call i32 (...) @mfmsr()
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 21
  %40 = and i32 %39, 31
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 31
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 11
  %46 = and i32 %45, 31
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 5
  %49 = and i32 %48, 7
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 31
  %52 = sub nsw i32 28, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 2047
  store i32 %54, i32* %6, align 4
  %55 = call i32 @memset(%struct.fpemu* %3, i32 0, i32 16)
  store i32 132, i32* %18, align 4
  %56 = load i32, i32* %11, align 4
  switch i32 %56, label %394 [
    i32 130, label %57
    i32 129, label %209
    i32 151, label %293
  ]

57:                                               ; preds = %36
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* @PSL_VEC, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @mtmsr(i32 %60)
  %62 = load i32, i32* %6, align 4
  switch i32 %62, label %126 [
    i32 135, label %63
    i32 134, label %84
    i32 133, label %105
  ]

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @spe_save_reg_high(i32 %64)
  %66 = and i32 %65, 2147483647
  store i32 %66, i32* %12, align 4
  %67 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %68 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 2147483647
  %75 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @spe_load_reg_high(i32 %81, i32 %82)
  br label %208

84:                                               ; preds = %57
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @spe_save_reg_high(i32 %85)
  %87 = or i32 %86, -2147483648
  store i32 %87, i32* %12, align 4
  %88 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %89 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, -2147483648
  %96 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %97 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @spe_load_reg_high(i32 %102, i32 %103)
  br label %208

105:                                              ; preds = %57
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @spe_save_reg_high(i32 %106)
  %108 = xor i32 %107, -2147483648
  store i32 %108, i32* %12, align 4
  %109 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %110 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %115, -2147483648
  %117 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %118 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @spe_load_reg_high(i32 %123, i32 %124)
  br label %208

126:                                              ; preds = %57
  %127 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 1
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @spe_save_reg_high(i32 %128)
  %130 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %127, i32 131, i32 %129, i32 0)
  %131 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 0
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @spe_save_reg_high(i32 %132)
  %134 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %131, i32 131, i32 %133, i32 0)
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @spe_emu_instr(i32 %135, %struct.fpemu* %3, %struct.fpn** %4, i32* %15)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %126
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @spe_load_reg_high(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %126
  %144 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @fpscr_to_spefscr(i32 %145)
  %147 = shl i32 %146, 16
  store i32 %147, i32* %16, align 4
  %148 = call i32 @memset(%struct.fpemu* %3, i32 0, i32 16)
  %149 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 1
  %150 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %151 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %149, i32 131, i32 %156, i32 0)
  %158 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 0
  %159 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %160 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %158, i32 131, i32 %165, i32 0)
  %167 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @fpscr_to_spefscr(i32 %168)
  %170 = load i32, i32* %16, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %174 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = call i32 @spe_emu_instr(i32 %172, %struct.fpemu* %3, %struct.fpn** %4, i32* %178)
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @EVFSCMPEQ, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %191, label %183

183:                                              ; preds = %143
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @EVFSCMPGT, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @EVFSCMPLT, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %187, %183, %143
  %192 = load i32, i32* %12, align 4
  %193 = shl i32 %192, 3
  %194 = load i32, i32* %13, align 4
  %195 = shl i32 %194, 2
  %196 = or i32 %193, %195
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %13, align 4
  %199 = or i32 %197, %198
  %200 = shl i32 %199, 1
  %201 = or i32 %196, %200
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %13, align 4
  %204 = and i32 %202, %203
  %205 = or i32 %201, %204
  store i32 %205, i32* %14, align 4
  store i32 132, i32* %18, align 4
  br label %207

206:                                              ; preds = %187
  store i32 128, i32* %18, align 4
  br label %207

207:                                              ; preds = %206, %191
  br label %208

208:                                              ; preds = %207, %105, %84, %63
  br label %463

209:                                              ; preds = %36
  %210 = load i32, i32* %6, align 4
  switch i32 %210, label %273 [
    i32 139, label %211
    i32 137, label %226
    i32 136, label %241
    i32 138, label %256
  ]

211:                                              ; preds = %209
  %212 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %213 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 2147483647
  %220 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %221 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %219, i32* %225, align 4
  br label %292

226:                                              ; preds = %209
  %227 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %228 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, -2147483648
  %235 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %236 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %234, i32* %240, align 4
  br label %292

241:                                              ; preds = %209
  %242 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %243 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = xor i32 %248, -2147483648
  %250 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %251 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  br label %292

256:                                              ; preds = %209
  %257 = load i32, i32* %20, align 4
  %258 = load i32, i32* @PSL_VEC, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @mtmsr(i32 %259)
  %261 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 2
  %262 = load i32, i32* %9, align 4
  %263 = call i32 @spe_save_reg_high(i32 %262)
  %264 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %265 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %261, i32 152, i32 %263, i32 %270)
  %272 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 2
  store %struct.fpn* %272, %struct.fpn** %4, align 8
  store i32 131, i32* %18, align 4
  br label %292

273:                                              ; preds = %209
  %274 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 1
  %275 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %276 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %274, i32 131, i32 %281, i32 0)
  %283 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 0
  %284 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %285 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %283, i32 131, i32 %290, i32 0)
  store i32 131, i32* %18, align 4
  br label %292

292:                                              ; preds = %273, %256, %241, %226, %211
  br label %394

293:                                              ; preds = %36
  %294 = load i32, i32* %20, align 4
  %295 = load i32, i32* @PSL_VEC, align 4
  %296 = or i32 %294, %295
  %297 = call i32 @mtmsr(i32 %296)
  %298 = load i32, i32* %6, align 4
  switch i32 %298, label %370 [
    i32 143, label %299
    i32 141, label %319
    i32 140, label %339
    i32 142, label %359
  ]

299:                                              ; preds = %293
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @spe_save_reg_high(i32 %300)
  %302 = and i32 %301, 2147483647
  store i32 %302, i32* %12, align 4
  %303 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %304 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %311 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %309, i32* %315, align 4
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* %12, align 4
  %318 = call i32 @spe_load_reg_high(i32 %316, i32 %317)
  br label %393

319:                                              ; preds = %293
  %320 = load i32, i32* %8, align 4
  %321 = call i32 @spe_save_reg_high(i32 %320)
  %322 = or i32 %321, -2147483648
  store i32 %322, i32* %12, align 4
  %323 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %324 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %331 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %330, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 %329, i32* %335, align 4
  %336 = load i32, i32* %10, align 4
  %337 = load i32, i32* %12, align 4
  %338 = call i32 @spe_load_reg_high(i32 %336, i32 %337)
  br label %393

339:                                              ; preds = %293
  %340 = load i32, i32* %8, align 4
  %341 = call i32 @spe_save_reg_high(i32 %340)
  %342 = xor i32 %341, -2147483648
  store i32 %342, i32* %12, align 4
  %343 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %344 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %8, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %351 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  store i32 %349, i32* %355, align 4
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* %12, align 4
  %358 = call i32 @spe_load_reg_high(i32 %356, i32 %357)
  br label %393

359:                                              ; preds = %293
  %360 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 2
  %361 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %362 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %9, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %360, i32 131, i32 %367, i32 0)
  %369 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 2
  store %struct.fpn* %369, %struct.fpn** %4, align 8
  store i32 152, i32* %18, align 4
  br label %393

370:                                              ; preds = %293
  %371 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 1
  %372 = load i32, i32* %8, align 4
  %373 = call i32 @spe_save_reg_high(i32 %372)
  %374 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %375 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %8, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %371, i32 152, i32 %373, i32 %380)
  %382 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %3, i32 0, i32 0
  %383 = load i32, i32* %9, align 4
  %384 = call i32 @spe_save_reg_high(i32 %383)
  %385 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %386 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %9, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @spe_explode(%struct.fpemu* %3, %struct.fpn* %382, i32 152, i32 %384, i32 %391)
  store i32 152, i32* %18, align 4
  br label %393

393:                                              ; preds = %370, %359, %339, %319, %299
  br label %394

394:                                              ; preds = %36, %393, %292
  %395 = load i32, i32* %6, align 4
  switch i32 %395, label %397 [
    i32 142, label %396
    i32 138, label %396
  ]

396:                                              ; preds = %394, %394
  br label %412

397:                                              ; preds = %394
  %398 = load i32, i32* %6, align 4
  %399 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %400 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %399, i32 0, i32 0
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = call i32 @spe_emu_instr(i32 %398, %struct.fpemu* %3, %struct.fpn** %4, i32* %404)
  store i32 %405, i32* %14, align 4
  %406 = load i32, i32* %14, align 4
  %407 = icmp ne i32 %406, -1
  br i1 %407, label %408, label %411

408:                                              ; preds = %397
  %409 = load i32, i32* %14, align 4
  %410 = shl i32 %409, 2
  store i32 %410, i32* %14, align 4
  br label %411

411:                                              ; preds = %408, %397
  br label %412

412:                                              ; preds = %411, %396
  %413 = load i32, i32* %6, align 4
  %414 = load i32, i32* @SPE_INST_MASK, align 4
  %415 = and i32 %413, %414
  switch i32 %415, label %432 [
    i32 150, label %416
    i32 149, label %416
    i32 148, label %416
    i32 145, label %431
    i32 144, label %431
    i32 147, label %431
    i32 146, label %431
  ]

416:                                              ; preds = %412, %412, %412
  %417 = load i32, i32* %7, align 4
  %418 = shl i32 15, %417
  %419 = xor i32 %418, -1
  %420 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %421 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = and i32 %422, %419
  store i32 %423, i32* %421, align 8
  %424 = load i32, i32* %14, align 4
  %425 = load i32, i32* %7, align 4
  %426 = shl i32 %424, %425
  %427 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %428 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = or i32 %429, %426
  store i32 %430, i32* %428, align 8
  br label %462

431:                                              ; preds = %412, %412, %412, %412
  br label %462

432:                                              ; preds = %412
  %433 = load i32, i32* %18, align 4
  switch i32 %433, label %458 [
    i32 132, label %434
    i32 128, label %434
    i32 131, label %435
    i32 152, label %444
  ]

434:                                              ; preds = %432, %432
  br label %461

435:                                              ; preds = %432
  %436 = load %struct.fpn*, %struct.fpn** %4, align 8
  %437 = call i32 @fpu_ftos(%struct.fpemu* %3, %struct.fpn* %436)
  %438 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %439 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %438, i32 0, i32 0
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %10, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  store i32 %437, i32* %443, align 4
  br label %461

444:                                              ; preds = %432
  %445 = load i32, i32* %10, align 4
  %446 = load %struct.fpn*, %struct.fpn** %4, align 8
  %447 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %448 = call i32 @fpu_ftod(%struct.fpemu* %3, %struct.fpn* %446, i32* %447)
  %449 = call i32 @spe_load_reg_high(i32 %445, i32 %448)
  %450 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %453 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %452, i32 0, i32 0
  %454 = load i32*, i32** %453, align 8
  %455 = load i32, i32* %10, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  store i32 %451, i32* %457, align 4
  br label %461

458:                                              ; preds = %432
  %459 = load i32, i32* %18, align 4
  %460 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %459)
  br label %461

461:                                              ; preds = %458, %444, %435, %434
  br label %462

462:                                              ; preds = %461, %431, %416
  br label %463

463:                                              ; preds = %462, %208
  %464 = load i32, i32* @SPR_SPEFSCR, align 4
  %465 = call i32 @mfspr(i32 %464)
  %466 = load i32, i32* @SPEFSCR_FINVS, align 4
  %467 = xor i32 %466, -1
  %468 = and i32 %465, %467
  %469 = load i32, i32* %16, align 4
  %470 = or i32 %469, %468
  store i32 %470, i32* %16, align 4
  %471 = load i32, i32* @SPR_SPEFSCR, align 4
  %472 = load i32, i32* %16, align 4
  %473 = call i32 @mtspr(i32 %471, i32 %472)
  %474 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %475 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = add nsw i64 %476, 4
  store i64 %477, i64* %475, align 8
  %478 = load i32, i32* %20, align 4
  %479 = call i32 @mtmsr(i32 %478)
  br label %480

480:                                              ; preds = %463, %35, %28
  ret void
}

declare dso_local i32 @fueword32(i8*, i32*) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @memset(%struct.fpemu*, i32, i32) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @spe_save_reg_high(i32) #1

declare dso_local i32 @spe_load_reg_high(i32, i32) #1

declare dso_local i32 @spe_explode(%struct.fpemu*, %struct.fpn*, i32, i32, i32) #1

declare dso_local i32 @spe_emu_instr(i32, %struct.fpemu*, %struct.fpn**, i32*) #1

declare dso_local i32 @fpscr_to_spefscr(i32) #1

declare dso_local i32 @fpu_ftos(%struct.fpemu*, %struct.fpn*) #1

declare dso_local i32 @fpu_ftod(%struct.fpemu*, %struct.fpn*, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
