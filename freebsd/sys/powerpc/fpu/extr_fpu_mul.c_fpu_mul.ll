; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_mul.c_fpu_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_mul.c_fpu_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpn = type { i64*, i64, i32, i32 }
%struct.fpemu = type { i32, %struct.fpn, %struct.fpn }

@FPU_DECL_CARRY = common dso_local global i32 0, align 4
@FPE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fpu_mul:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"=>\0A\00", align 1
@FPSCR_VXSNAN = common dso_local global i32 0, align 4
@FPSCR_VXIMZ = common dso_local global i32 0, align 4
@FP_NG = common dso_local global i32 0, align 4
@FP_2 = common dso_local global i64 0, align 8
@SHR1 = common dso_local global i32 0, align 4
@SHR32 = common dso_local global i32 0, align 4
@STEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpn* @fpu_mul(%struct.fpemu* %0) #0 {
  %2 = alloca %struct.fpn*, align 8
  %3 = alloca %struct.fpemu*, align 8
  %4 = alloca %struct.fpn*, align 8
  %5 = alloca %struct.fpn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %3, align 8
  %17 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %18 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %17, i32 0, i32 2
  store %struct.fpn* %18, %struct.fpn** %4, align 8
  %19 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %20 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %19, i32 0, i32 1
  store %struct.fpn* %20, %struct.fpn** %5, align 8
  %21 = load i32, i32* @FPU_DECL_CARRY, align 4
  %22 = load i32, i32* @FPE_REG, align 4
  %23 = call i32 @DPRINTF(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @FPE_REG, align 4
  %25 = load %struct.fpn*, %struct.fpn** %4, align 8
  %26 = call i32 @DUMPFPN(i32 %24, %struct.fpn* %25)
  %27 = load i32, i32* @FPE_REG, align 4
  %28 = load %struct.fpn*, %struct.fpn** %5, align 8
  %29 = call i32 @DUMPFPN(i32 %27, %struct.fpn* %28)
  %30 = load i32, i32* @FPE_REG, align 4
  %31 = call i32 @DPRINTF(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.fpn*, %struct.fpn** %4, align 8
  %33 = load %struct.fpn*, %struct.fpn** %5, align 8
  %34 = call i32 @ORDER(%struct.fpn* %32, %struct.fpn* %33)
  %35 = load %struct.fpn*, %struct.fpn** %5, align 8
  %36 = call i64 @ISNAN(%struct.fpn* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %1
  %39 = load %struct.fpn*, %struct.fpn** %4, align 8
  %40 = getelementptr inbounds %struct.fpn, %struct.fpn* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fpn*, %struct.fpn** %5, align 8
  %43 = getelementptr inbounds %struct.fpn, %struct.fpn* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @FPSCR_VXSNAN, align 4
  %47 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %48 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* @FPE_REG, align 4
  %52 = load %struct.fpn*, %struct.fpn** %5, align 8
  %53 = call i32 @DUMPFPN(i32 %51, %struct.fpn* %52)
  %54 = load %struct.fpn*, %struct.fpn** %5, align 8
  store %struct.fpn* %54, %struct.fpn** %2, align 8
  br label %454

55:                                               ; preds = %1
  %56 = load %struct.fpn*, %struct.fpn** %5, align 8
  %57 = call i64 @ISINF(%struct.fpn* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load %struct.fpn*, %struct.fpn** %4, align 8
  %61 = call i64 @ISZERO(%struct.fpn* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @FPSCR_VXIMZ, align 4
  %65 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %66 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %70 = call %struct.fpn* @fpu_newnan(%struct.fpemu* %69)
  store %struct.fpn* %70, %struct.fpn** %2, align 8
  br label %454

71:                                               ; preds = %59
  %72 = load %struct.fpn*, %struct.fpn** %4, align 8
  %73 = getelementptr inbounds %struct.fpn, %struct.fpn* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fpn*, %struct.fpn** %5, align 8
  %76 = getelementptr inbounds %struct.fpn, %struct.fpn* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @FPE_REG, align 4
  %80 = load %struct.fpn*, %struct.fpn** %5, align 8
  %81 = call i32 @DUMPFPN(i32 %79, %struct.fpn* %80)
  %82 = load %struct.fpn*, %struct.fpn** %5, align 8
  store %struct.fpn* %82, %struct.fpn** %2, align 8
  br label %454

83:                                               ; preds = %55
  %84 = load %struct.fpn*, %struct.fpn** %4, align 8
  %85 = call i64 @ISZERO(%struct.fpn* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load %struct.fpn*, %struct.fpn** %5, align 8
  %89 = getelementptr inbounds %struct.fpn, %struct.fpn* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.fpn*, %struct.fpn** %4, align 8
  %92 = getelementptr inbounds %struct.fpn, %struct.fpn* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @FPE_REG, align 4
  %96 = load %struct.fpn*, %struct.fpn** %4, align 8
  %97 = call i32 @DUMPFPN(i32 %95, %struct.fpn* %96)
  %98 = load %struct.fpn*, %struct.fpn** %4, align 8
  store %struct.fpn* %98, %struct.fpn** %2, align 8
  br label %454

99:                                               ; preds = %83
  %100 = load %struct.fpn*, %struct.fpn** %4, align 8
  %101 = getelementptr inbounds %struct.fpn, %struct.fpn* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 3
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %10, align 8
  %105 = load %struct.fpn*, %struct.fpn** %4, align 8
  %106 = getelementptr inbounds %struct.fpn, %struct.fpn* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %11, align 8
  %110 = load %struct.fpn*, %struct.fpn** %4, align 8
  %111 = getelementptr inbounds %struct.fpn, %struct.fpn* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %12, align 8
  %115 = load %struct.fpn*, %struct.fpn** %4, align 8
  %116 = getelementptr inbounds %struct.fpn, %struct.fpn* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %13, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %16, align 4
  %120 = load %struct.fpn*, %struct.fpn** %5, align 8
  %121 = getelementptr inbounds %struct.fpn, %struct.fpn* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 3
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %15, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %99
  br label %183

127:                                              ; preds = %99
  %128 = load i32, i32* @FP_NG, align 4
  %129 = shl i32 1, %128
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %14, align 8
  br label %131

131:                                              ; preds = %179, %127
  %132 = load i64, i64* %6, align 8
  %133 = and i64 %132, 1
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = or i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %16, align 4
  %138 = load i64, i64* %6, align 8
  %139 = ashr i64 %138, 1
  %140 = load i64, i64* %7, align 8
  %141 = shl i64 %140, 31
  %142 = or i64 %139, %141
  store i64 %142, i64* %6, align 8
  %143 = load i64, i64* %7, align 8
  %144 = ashr i64 %143, 1
  %145 = load i64, i64* %8, align 8
  %146 = shl i64 %145, 31
  %147 = or i64 %144, %146
  store i64 %147, i64* %7, align 8
  %148 = load i64, i64* %8, align 8
  %149 = ashr i64 %148, 1
  %150 = load i64, i64* %9, align 8
  %151 = shl i64 %150, 31
  %152 = or i64 %149, %151
  store i64 %152, i64* %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = ashr i64 %153, 1
  store i64 %154, i64* %9, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %15, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %131
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* %10, align 8
  %163 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDS to i32 (i64, i64, i64, ...)*)(i64 %160, i64 %161, i64 %162)
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* %11, align 8
  %167 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDCS to i32 (i64, i64, i64, ...)*)(i64 %164, i64 %165, i64 %166)
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDCS to i32 (i64, i64, i64, ...)*)(i64 %168, i64 %169, i64 %170)
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* %13, align 8
  %175 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDC to i32 (i64, i64, i64, ...)*)(i64 %172, i64 %173, i64 %174)
  br label %176

176:                                              ; preds = %159, %131
  %177 = load i64, i64* %14, align 8
  %178 = shl i64 %177, 1
  store i64 %178, i64* %14, align 8
  br label %179

179:                                              ; preds = %176
  %180 = load i64, i64* %14, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %131, label %182

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %182, %126
  %184 = load %struct.fpn*, %struct.fpn** %5, align 8
  %185 = getelementptr inbounds %struct.fpn, %struct.fpn* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 2
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %15, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %183
  %191 = load i64, i64* %6, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = or i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %16, align 4
  %196 = load i64, i64* %7, align 8
  store i64 %196, i64* %6, align 8
  %197 = load i64, i64* %8, align 8
  store i64 %197, i64* %7, align 8
  %198 = load i64, i64* %9, align 8
  store i64 %198, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %252

199:                                              ; preds = %183
  store i64 1, i64* %14, align 8
  br label %200

200:                                              ; preds = %248, %199
  %201 = load i64, i64* %6, align 8
  %202 = and i64 %201, 1
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = or i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %16, align 4
  %207 = load i64, i64* %6, align 8
  %208 = ashr i64 %207, 1
  %209 = load i64, i64* %7, align 8
  %210 = shl i64 %209, 31
  %211 = or i64 %208, %210
  store i64 %211, i64* %6, align 8
  %212 = load i64, i64* %7, align 8
  %213 = ashr i64 %212, 1
  %214 = load i64, i64* %8, align 8
  %215 = shl i64 %214, 31
  %216 = or i64 %213, %215
  store i64 %216, i64* %7, align 8
  %217 = load i64, i64* %8, align 8
  %218 = ashr i64 %217, 1
  %219 = load i64, i64* %9, align 8
  %220 = shl i64 %219, 31
  %221 = or i64 %218, %220
  store i64 %221, i64* %8, align 8
  %222 = load i64, i64* %9, align 8
  %223 = ashr i64 %222, 1
  store i64 %223, i64* %9, align 8
  %224 = load i64, i64* %14, align 8
  %225 = load i64, i64* %15, align 8
  %226 = and i64 %224, %225
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %200
  %229 = load i64, i64* %6, align 8
  %230 = load i64, i64* %6, align 8
  %231 = load i64, i64* %10, align 8
  %232 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDS to i32 (i64, i64, i64, ...)*)(i64 %229, i64 %230, i64 %231)
  %233 = load i64, i64* %7, align 8
  %234 = load i64, i64* %7, align 8
  %235 = load i64, i64* %11, align 8
  %236 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDCS to i32 (i64, i64, i64, ...)*)(i64 %233, i64 %234, i64 %235)
  %237 = load i64, i64* %8, align 8
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* %12, align 8
  %240 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDCS to i32 (i64, i64, i64, ...)*)(i64 %237, i64 %238, i64 %239)
  %241 = load i64, i64* %9, align 8
  %242 = load i64, i64* %9, align 8
  %243 = load i64, i64* %13, align 8
  %244 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDC to i32 (i64, i64, i64, ...)*)(i64 %241, i64 %242, i64 %243)
  br label %245

245:                                              ; preds = %228, %200
  %246 = load i64, i64* %14, align 8
  %247 = shl i64 %246, 1
  store i64 %247, i64* %14, align 8
  br label %248

248:                                              ; preds = %245
  %249 = load i64, i64* %14, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %200, label %251

251:                                              ; preds = %248
  br label %252

252:                                              ; preds = %251, %190
  %253 = load %struct.fpn*, %struct.fpn** %5, align 8
  %254 = getelementptr inbounds %struct.fpn, %struct.fpn* %253, i32 0, i32 0
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 1
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %15, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %252
  %260 = load i64, i64* %6, align 8
  %261 = load i32, i32* %16, align 4
  %262 = sext i32 %261 to i64
  %263 = or i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %16, align 4
  %265 = load i64, i64* %7, align 8
  store i64 %265, i64* %6, align 8
  %266 = load i64, i64* %8, align 8
  store i64 %266, i64* %7, align 8
  %267 = load i64, i64* %9, align 8
  store i64 %267, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %321

268:                                              ; preds = %252
  store i64 1, i64* %14, align 8
  br label %269

269:                                              ; preds = %317, %268
  %270 = load i64, i64* %6, align 8
  %271 = and i64 %270, 1
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = or i64 %273, %271
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %16, align 4
  %276 = load i64, i64* %6, align 8
  %277 = ashr i64 %276, 1
  %278 = load i64, i64* %7, align 8
  %279 = shl i64 %278, 31
  %280 = or i64 %277, %279
  store i64 %280, i64* %6, align 8
  %281 = load i64, i64* %7, align 8
  %282 = ashr i64 %281, 1
  %283 = load i64, i64* %8, align 8
  %284 = shl i64 %283, 31
  %285 = or i64 %282, %284
  store i64 %285, i64* %7, align 8
  %286 = load i64, i64* %8, align 8
  %287 = ashr i64 %286, 1
  %288 = load i64, i64* %9, align 8
  %289 = shl i64 %288, 31
  %290 = or i64 %287, %289
  store i64 %290, i64* %8, align 8
  %291 = load i64, i64* %9, align 8
  %292 = ashr i64 %291, 1
  store i64 %292, i64* %9, align 8
  %293 = load i64, i64* %14, align 8
  %294 = load i64, i64* %15, align 8
  %295 = and i64 %293, %294
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %314

297:                                              ; preds = %269
  %298 = load i64, i64* %6, align 8
  %299 = load i64, i64* %6, align 8
  %300 = load i64, i64* %10, align 8
  %301 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDS to i32 (i64, i64, i64, ...)*)(i64 %298, i64 %299, i64 %300)
  %302 = load i64, i64* %7, align 8
  %303 = load i64, i64* %7, align 8
  %304 = load i64, i64* %11, align 8
  %305 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDCS to i32 (i64, i64, i64, ...)*)(i64 %302, i64 %303, i64 %304)
  %306 = load i64, i64* %8, align 8
  %307 = load i64, i64* %8, align 8
  %308 = load i64, i64* %12, align 8
  %309 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDCS to i32 (i64, i64, i64, ...)*)(i64 %306, i64 %307, i64 %308)
  %310 = load i64, i64* %9, align 8
  %311 = load i64, i64* %9, align 8
  %312 = load i64, i64* %13, align 8
  %313 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDC to i32 (i64, i64, i64, ...)*)(i64 %310, i64 %311, i64 %312)
  br label %314

314:                                              ; preds = %297, %269
  %315 = load i64, i64* %14, align 8
  %316 = shl i64 %315, 1
  store i64 %316, i64* %14, align 8
  br label %317

317:                                              ; preds = %314
  %318 = load i64, i64* %14, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %269, label %320

320:                                              ; preds = %317
  br label %321

321:                                              ; preds = %320, %259
  %322 = load %struct.fpn*, %struct.fpn** %5, align 8
  %323 = getelementptr inbounds %struct.fpn, %struct.fpn* %322, i32 0, i32 0
  %324 = load i64*, i64** %323, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 0
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %327

327:                                              ; preds = %375, %321
  %328 = load i64, i64* %6, align 8
  %329 = and i64 %328, 1
  %330 = load i32, i32* %16, align 4
  %331 = sext i32 %330 to i64
  %332 = or i64 %331, %329
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %16, align 4
  %334 = load i64, i64* %6, align 8
  %335 = ashr i64 %334, 1
  %336 = load i64, i64* %7, align 8
  %337 = shl i64 %336, 31
  %338 = or i64 %335, %337
  store i64 %338, i64* %6, align 8
  %339 = load i64, i64* %7, align 8
  %340 = ashr i64 %339, 1
  %341 = load i64, i64* %8, align 8
  %342 = shl i64 %341, 31
  %343 = or i64 %340, %342
  store i64 %343, i64* %7, align 8
  %344 = load i64, i64* %8, align 8
  %345 = ashr i64 %344, 1
  %346 = load i64, i64* %9, align 8
  %347 = shl i64 %346, 31
  %348 = or i64 %345, %347
  store i64 %348, i64* %8, align 8
  %349 = load i64, i64* %9, align 8
  %350 = ashr i64 %349, 1
  store i64 %350, i64* %9, align 8
  %351 = load i64, i64* %14, align 8
  %352 = load i64, i64* %15, align 8
  %353 = and i64 %351, %352
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %372

355:                                              ; preds = %327
  %356 = load i64, i64* %6, align 8
  %357 = load i64, i64* %6, align 8
  %358 = load i64, i64* %10, align 8
  %359 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDS to i32 (i64, i64, i64, ...)*)(i64 %356, i64 %357, i64 %358)
  %360 = load i64, i64* %7, align 8
  %361 = load i64, i64* %7, align 8
  %362 = load i64, i64* %11, align 8
  %363 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDCS to i32 (i64, i64, i64, ...)*)(i64 %360, i64 %361, i64 %362)
  %364 = load i64, i64* %8, align 8
  %365 = load i64, i64* %8, align 8
  %366 = load i64, i64* %12, align 8
  %367 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDCS to i32 (i64, i64, i64, ...)*)(i64 %364, i64 %365, i64 %366)
  %368 = load i64, i64* %9, align 8
  %369 = load i64, i64* %9, align 8
  %370 = load i64, i64* %13, align 8
  %371 = call i32 (i64, i64, i64, ...) bitcast (i32 (...)* @FPU_ADDC to i32 (i64, i64, i64, ...)*)(i64 %368, i64 %369, i64 %370)
  br label %372

372:                                              ; preds = %355, %327
  %373 = load i64, i64* %14, align 8
  %374 = shl i64 %373, 1
  store i64 %374, i64* %14, align 8
  br label %375

375:                                              ; preds = %372
  %376 = load i64, i64* %14, align 8
  %377 = load i64, i64* %15, align 8
  %378 = icmp sle i64 %376, %377
  br i1 %378, label %327, label %379

379:                                              ; preds = %375
  %380 = load %struct.fpn*, %struct.fpn** %4, align 8
  %381 = getelementptr inbounds %struct.fpn, %struct.fpn* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.fpn*, %struct.fpn** %5, align 8
  %384 = getelementptr inbounds %struct.fpn, %struct.fpn* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = add nsw i64 %382, %385
  store i64 %386, i64* %15, align 8
  %387 = load i64, i64* %9, align 8
  %388 = load i64, i64* @FP_2, align 8
  %389 = icmp sge i64 %387, %388
  br i1 %389, label %390, label %416

390:                                              ; preds = %379
  %391 = load i64, i64* %6, align 8
  %392 = and i64 %391, 1
  %393 = load i32, i32* %16, align 4
  %394 = sext i32 %393 to i64
  %395 = or i64 %394, %392
  %396 = trunc i64 %395 to i32
  store i32 %396, i32* %16, align 4
  %397 = load i64, i64* %6, align 8
  %398 = ashr i64 %397, 1
  %399 = load i64, i64* %7, align 8
  %400 = shl i64 %399, 31
  %401 = or i64 %398, %400
  store i64 %401, i64* %6, align 8
  %402 = load i64, i64* %7, align 8
  %403 = ashr i64 %402, 1
  %404 = load i64, i64* %8, align 8
  %405 = shl i64 %404, 31
  %406 = or i64 %403, %405
  store i64 %406, i64* %7, align 8
  %407 = load i64, i64* %8, align 8
  %408 = ashr i64 %407, 1
  %409 = load i64, i64* %9, align 8
  %410 = shl i64 %409, 31
  %411 = or i64 %408, %410
  store i64 %411, i64* %8, align 8
  %412 = load i64, i64* %9, align 8
  %413 = ashr i64 %412, 1
  store i64 %413, i64* %9, align 8
  %414 = load i64, i64* %15, align 8
  %415 = add nsw i64 %414, 1
  store i64 %415, i64* %15, align 8
  br label %416

416:                                              ; preds = %390, %379
  %417 = load %struct.fpn*, %struct.fpn** %5, align 8
  %418 = getelementptr inbounds %struct.fpn, %struct.fpn* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.fpn*, %struct.fpn** %4, align 8
  %421 = getelementptr inbounds %struct.fpn, %struct.fpn* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = xor i32 %422, %419
  store i32 %423, i32* %421, align 4
  %424 = load i64, i64* %15, align 8
  %425 = load %struct.fpn*, %struct.fpn** %4, align 8
  %426 = getelementptr inbounds %struct.fpn, %struct.fpn* %425, i32 0, i32 1
  store i64 %424, i64* %426, align 8
  %427 = load i32, i32* %16, align 4
  %428 = load %struct.fpn*, %struct.fpn** %4, align 8
  %429 = getelementptr inbounds %struct.fpn, %struct.fpn* %428, i32 0, i32 2
  store i32 %427, i32* %429, align 8
  %430 = load i64, i64* %6, align 8
  %431 = load %struct.fpn*, %struct.fpn** %4, align 8
  %432 = getelementptr inbounds %struct.fpn, %struct.fpn* %431, i32 0, i32 0
  %433 = load i64*, i64** %432, align 8
  %434 = getelementptr inbounds i64, i64* %433, i64 3
  store i64 %430, i64* %434, align 8
  %435 = load i64, i64* %7, align 8
  %436 = load %struct.fpn*, %struct.fpn** %4, align 8
  %437 = getelementptr inbounds %struct.fpn, %struct.fpn* %436, i32 0, i32 0
  %438 = load i64*, i64** %437, align 8
  %439 = getelementptr inbounds i64, i64* %438, i64 2
  store i64 %435, i64* %439, align 8
  %440 = load i64, i64* %8, align 8
  %441 = load %struct.fpn*, %struct.fpn** %4, align 8
  %442 = getelementptr inbounds %struct.fpn, %struct.fpn* %441, i32 0, i32 0
  %443 = load i64*, i64** %442, align 8
  %444 = getelementptr inbounds i64, i64* %443, i64 1
  store i64 %440, i64* %444, align 8
  %445 = load i64, i64* %9, align 8
  %446 = load %struct.fpn*, %struct.fpn** %4, align 8
  %447 = getelementptr inbounds %struct.fpn, %struct.fpn* %446, i32 0, i32 0
  %448 = load i64*, i64** %447, align 8
  %449 = getelementptr inbounds i64, i64* %448, i64 0
  store i64 %445, i64* %449, align 8
  %450 = load i32, i32* @FPE_REG, align 4
  %451 = load %struct.fpn*, %struct.fpn** %4, align 8
  %452 = call i32 @DUMPFPN(i32 %450, %struct.fpn* %451)
  %453 = load %struct.fpn*, %struct.fpn** %4, align 8
  store %struct.fpn* %453, %struct.fpn** %2, align 8
  br label %454

454:                                              ; preds = %416, %87, %71, %63, %38
  %455 = load %struct.fpn*, %struct.fpn** %2, align 8
  ret %struct.fpn* %455
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @DUMPFPN(i32, %struct.fpn*) #1

declare dso_local i32 @ORDER(%struct.fpn*, %struct.fpn*) #1

declare dso_local i64 @ISNAN(%struct.fpn*) #1

declare dso_local i64 @ISINF(%struct.fpn*) #1

declare dso_local i64 @ISZERO(%struct.fpn*) #1

declare dso_local %struct.fpn* @fpu_newnan(%struct.fpemu*) #1

declare dso_local i32 @FPU_ADDS(...) #1

declare dso_local i32 @FPU_ADDCS(...) #1

declare dso_local i32 @FPU_ADDC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
