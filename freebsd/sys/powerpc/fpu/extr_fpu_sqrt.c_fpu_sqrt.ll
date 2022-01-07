; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_sqrt.c_fpu_sqrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_sqrt.c_fpu_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpn = type { i32*, i32, i32, i64, i32 }
%struct.fpemu = type { i32, %struct.fpn }

@FPU_DECL_CARRY = common dso_local global i32 0, align 4
@FPE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fpu_sqer:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"=>\0A\00", align 1
@FPSCR_VXSNAN = common dso_local global i32 0, align 4
@FPSCR_ZX = common dso_local global i32 0, align 4
@FPC_INF = common dso_local global i32 0, align 4
@FPSCR_VXSQRT = common dso_local global i32 0, align 4
@FP_1 = common dso_local global i32 0, align 4
@DOUBLE_X = common dso_local global i32 0, align 4
@EVEN_DOUBLE = common dso_local global i32 0, align 4
@ODD_DOUBLE = common dso_local global i32 0, align 4
@t0 = common dso_local global i32 0, align 4
@t1 = common dso_local global i32 0, align 4
@t2 = common dso_local global i32 0, align 4
@t3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpn* @fpu_sqrt(%struct.fpemu* %0) #0 {
  %2 = alloca %struct.fpn*, align 8
  %3 = alloca %struct.fpemu*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %3, align 8
  %21 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %22 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %21, i32 0, i32 1
  store %struct.fpn* %22, %struct.fpn** %4, align 8
  %23 = load i32, i32* @FPU_DECL_CARRY, align 4
  %24 = load i32, i32* @FPE_REG, align 4
  %25 = call i32 @DPRINTF(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @FPE_REG, align 4
  %27 = load %struct.fpn*, %struct.fpn** %4, align 8
  %28 = call i32 @DUMPFPN(i32 %26, %struct.fpn* %27)
  %29 = load i32, i32* @FPE_REG, align 4
  %30 = call i32 @DPRINTF(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.fpn*, %struct.fpn** %4, align 8
  %32 = call i64 @ISNAN(%struct.fpn* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %1
  %35 = load i32, i32* @FPSCR_VXSNAN, align 4
  %36 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %37 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @FPE_REG, align 4
  %41 = load %struct.fpn*, %struct.fpn** %4, align 8
  %42 = call i32 @DUMPFPN(i32 %40, %struct.fpn* %41)
  %43 = load %struct.fpn*, %struct.fpn** %4, align 8
  store %struct.fpn* %43, %struct.fpn** %2, align 8
  br label %507

44:                                               ; preds = %1
  %45 = load %struct.fpn*, %struct.fpn** %4, align 8
  %46 = call i64 @ISZERO(%struct.fpn* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* @FPSCR_ZX, align 4
  %50 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %51 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @FPC_INF, align 4
  %55 = load %struct.fpn*, %struct.fpn** %4, align 8
  %56 = getelementptr inbounds %struct.fpn, %struct.fpn* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @FPE_REG, align 4
  %58 = load %struct.fpn*, %struct.fpn** %4, align 8
  %59 = call i32 @DUMPFPN(i32 %57, %struct.fpn* %58)
  %60 = load %struct.fpn*, %struct.fpn** %4, align 8
  store %struct.fpn* %60, %struct.fpn** %2, align 8
  br label %507

61:                                               ; preds = %44
  %62 = load %struct.fpn*, %struct.fpn** %4, align 8
  %63 = getelementptr inbounds %struct.fpn, %struct.fpn* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* @FPSCR_VXSQRT, align 4
  %68 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %69 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %73 = call %struct.fpn* @fpu_newnan(%struct.fpemu* %72)
  store %struct.fpn* %73, %struct.fpn** %2, align 8
  br label %507

74:                                               ; preds = %61
  %75 = load %struct.fpn*, %struct.fpn** %4, align 8
  %76 = call i64 @ISINF(%struct.fpn* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* @FPE_REG, align 4
  %80 = load %struct.fpn*, %struct.fpn** %4, align 8
  %81 = call i32 @DUMPFPN(i32 %79, %struct.fpn* %80)
  %82 = load %struct.fpn*, %struct.fpn** %4, align 8
  store %struct.fpn* %82, %struct.fpn** %2, align 8
  br label %507

83:                                               ; preds = %74
  %84 = load %struct.fpn*, %struct.fpn** %4, align 8
  %85 = getelementptr inbounds %struct.fpn, %struct.fpn* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %8, align 4
  %89 = load %struct.fpn*, %struct.fpn** %4, align 8
  %90 = getelementptr inbounds %struct.fpn, %struct.fpn* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  %94 = load %struct.fpn*, %struct.fpn** %4, align 8
  %95 = getelementptr inbounds %struct.fpn, %struct.fpn* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load %struct.fpn*, %struct.fpn** %4, align 8
  %100 = getelementptr inbounds %struct.fpn, %struct.fpn* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  %104 = load %struct.fpn*, %struct.fpn** %4, align 8
  %105 = getelementptr inbounds %struct.fpn, %struct.fpn* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %20, align 4
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %83
  %111 = load i32, i32* %8, align 4
  %112 = shl i32 %111, 1
  %113 = load i32, i32* %9, align 4
  %114 = ashr i32 %113, 31
  %115 = or i32 %112, %114
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = shl i32 %116, 1
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %118, 31
  %120 = or i32 %117, %119
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = shl i32 %121, 1
  %123 = load i32, i32* %11, align 4
  %124 = ashr i32 %123, 31
  %125 = or i32 %122, %124
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = shl i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %110, %83
  %129 = load i32, i32* %20, align 4
  %130 = ashr i32 %129, 1
  %131 = load %struct.fpn*, %struct.fpn** %4, align 8
  %132 = getelementptr inbounds %struct.fpn, %struct.fpn* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @FP_1, align 4
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 %134, 1
  %136 = load i32, i32* %9, align 4
  %137 = ashr i32 %136, 31
  %138 = or i32 %135, %137
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = shl i32 %139, 1
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %141, 31
  %143 = or i32 %140, %142
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = shl i32 %144, 1
  %146 = load i32, i32* %11, align 4
  %147 = ashr i32 %146, 31
  %148 = or i32 %145, %147
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %11, align 4
  %150 = shl i32 %149, 1
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %8, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %5, align 4
  %156 = shl i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %196, %128
  %158 = load i32, i32* %5, align 4
  %159 = ashr i32 %158, 1
  store i32 %159, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %197

161:                                              ; preds = %157
  %162 = load i32, i32* %8, align 4
  %163 = shl i32 %162, 1
  %164 = load i32, i32* %9, align 4
  %165 = ashr i32 %164, 31
  %166 = or i32 %163, %165
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = shl i32 %167, 1
  %169 = load i32, i32* %10, align 4
  %170 = ashr i32 %169, 31
  %171 = or i32 %168, %170
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = shl i32 %172, 1
  %174 = load i32, i32* %11, align 4
  %175 = ashr i32 %174, 31
  %176 = or i32 %173, %175
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = shl i32 %177, 1
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %5, align 4
  %181 = or i32 %179, %180
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %161
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %6, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %5, align 4
  %193 = shl i32 %192, 1
  %194 = load i32, i32* %12, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %12, align 4
  br label %196

196:                                              ; preds = %185, %161
  br label %157

197:                                              ; preds = %157
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.fpn*, %struct.fpn** %4, align 8
  %200 = getelementptr inbounds %struct.fpn, %struct.fpn* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 %198, i32* %202, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %13, align 4
  store i32 -2147483648, i32* %5, align 4
  %203 = load i32, i32* %8, align 4
  %204 = shl i32 %203, 1
  %205 = load i32, i32* %9, align 4
  %206 = ashr i32 %205, 31
  %207 = or i32 %204, %206
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %9, align 4
  %209 = shl i32 %208, 1
  %210 = load i32, i32* %10, align 4
  %211 = ashr i32 %210, 31
  %212 = or i32 %209, %211
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %10, align 4
  %214 = shl i32 %213, 1
  %215 = load i32, i32* %11, align 4
  %216 = ashr i32 %215, 31
  %217 = or i32 %214, %216
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %11, align 4
  %219 = shl i32 %218, 1
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %5, align 4
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @FPU_SUBS(i32 %221, i32 %222, i32 %223)
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @FPU_SUBC(i32 %225, i32 %226, i32 %227)
  %229 = load i32, i32* %16, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %197
  %232 = load i32, i32* %16, align 4
  store i32 %232, i32* %8, align 4
  %233 = load i32, i32* %17, align 4
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %5, align 4
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %12, align 4
  %236 = or i32 %235, 1
  store i32 %236, i32* %12, align 4
  br label %237

237:                                              ; preds = %231, %197
  br label %238

238:                                              ; preds = %283, %237
  %239 = load i32, i32* %5, align 4
  %240 = ashr i32 %239, 1
  store i32 %240, i32* %5, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %284

242:                                              ; preds = %238
  %243 = load i32, i32* %8, align 4
  %244 = shl i32 %243, 1
  %245 = load i32, i32* %9, align 4
  %246 = ashr i32 %245, 31
  %247 = or i32 %244, %246
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %9, align 4
  %249 = shl i32 %248, 1
  %250 = load i32, i32* %10, align 4
  %251 = ashr i32 %250, 31
  %252 = or i32 %249, %251
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %10, align 4
  %254 = shl i32 %253, 1
  %255 = load i32, i32* %11, align 4
  %256 = ashr i32 %255, 31
  %257 = or i32 %254, %256
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %11, align 4
  %259 = shl i32 %258, 1
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* %5, align 4
  %262 = or i32 %260, %261
  store i32 %262, i32* %7, align 4
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @FPU_SUBS(i32 %263, i32 %264, i32 %265)
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %12, align 4
  %270 = call i32 @FPU_SUBC(i32 %267, i32 %268, i32 %269)
  %271 = load i32, i32* %16, align 4
  %272 = icmp sge i32 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %242
  %274 = load i32, i32* %16, align 4
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %17, align 4
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %5, align 4
  %277 = load i32, i32* %6, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %5, align 4
  %280 = shl i32 %279, 1
  %281 = load i32, i32* %13, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %13, align 4
  br label %283

283:                                              ; preds = %273, %242
  br label %238

284:                                              ; preds = %238
  %285 = load i32, i32* %6, align 4
  %286 = load %struct.fpn*, %struct.fpn** %4, align 8
  %287 = getelementptr inbounds %struct.fpn, %struct.fpn* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  store i32 %285, i32* %289, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %14, align 4
  store i32 -2147483648, i32* %5, align 4
  %290 = load i32, i32* %8, align 4
  %291 = shl i32 %290, 1
  %292 = load i32, i32* %9, align 4
  %293 = ashr i32 %292, 31
  %294 = or i32 %291, %293
  store i32 %294, i32* %8, align 4
  %295 = load i32, i32* %9, align 4
  %296 = shl i32 %295, 1
  %297 = load i32, i32* %10, align 4
  %298 = ashr i32 %297, 31
  %299 = or i32 %296, %298
  store i32 %299, i32* %9, align 4
  %300 = load i32, i32* %10, align 4
  %301 = shl i32 %300, 1
  %302 = load i32, i32* %11, align 4
  %303 = ashr i32 %302, 31
  %304 = or i32 %301, %303
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %11, align 4
  %306 = shl i32 %305, 1
  store i32 %306, i32* %11, align 4
  %307 = load i32, i32* %5, align 4
  store i32 %307, i32* %7, align 4
  %308 = load i32, i32* %18, align 4
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* %7, align 4
  %311 = call i32 @FPU_SUBS(i32 %308, i32 %309, i32 %310)
  %312 = load i32, i32* %17, align 4
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %13, align 4
  %315 = call i32 @FPU_SUBCS(i32 %312, i32 %313, i32 %314)
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* %12, align 4
  %319 = call i32 @FPU_SUBC(i32 %316, i32 %317, i32 %318)
  %320 = load i32, i32* %16, align 4
  %321 = icmp sge i32 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %284
  %323 = load i32, i32* %16, align 4
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* %17, align 4
  store i32 %324, i32* %9, align 4
  %325 = load i32, i32* %18, align 4
  store i32 %325, i32* %10, align 4
  %326 = load i32, i32* %5, align 4
  store i32 %326, i32* %6, align 4
  %327 = load i32, i32* %13, align 4
  %328 = or i32 %327, 1
  store i32 %328, i32* %13, align 4
  br label %329

329:                                              ; preds = %322, %284
  br label %330

330:                                              ; preds = %380, %329
  %331 = load i32, i32* %5, align 4
  %332 = ashr i32 %331, 1
  store i32 %332, i32* %5, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %381

334:                                              ; preds = %330
  %335 = load i32, i32* %8, align 4
  %336 = shl i32 %335, 1
  %337 = load i32, i32* %9, align 4
  %338 = ashr i32 %337, 31
  %339 = or i32 %336, %338
  store i32 %339, i32* %8, align 4
  %340 = load i32, i32* %9, align 4
  %341 = shl i32 %340, 1
  %342 = load i32, i32* %10, align 4
  %343 = ashr i32 %342, 31
  %344 = or i32 %341, %343
  store i32 %344, i32* %9, align 4
  %345 = load i32, i32* %10, align 4
  %346 = shl i32 %345, 1
  %347 = load i32, i32* %11, align 4
  %348 = ashr i32 %347, 31
  %349 = or i32 %346, %348
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %11, align 4
  %351 = shl i32 %350, 1
  store i32 %351, i32* %11, align 4
  %352 = load i32, i32* %14, align 4
  %353 = load i32, i32* %5, align 4
  %354 = or i32 %352, %353
  store i32 %354, i32* %7, align 4
  %355 = load i32, i32* %18, align 4
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* %7, align 4
  %358 = call i32 @FPU_SUBS(i32 %355, i32 %356, i32 %357)
  %359 = load i32, i32* %17, align 4
  %360 = load i32, i32* %9, align 4
  %361 = load i32, i32* %13, align 4
  %362 = call i32 @FPU_SUBCS(i32 %359, i32 %360, i32 %361)
  %363 = load i32, i32* %16, align 4
  %364 = load i32, i32* %8, align 4
  %365 = load i32, i32* %12, align 4
  %366 = call i32 @FPU_SUBC(i32 %363, i32 %364, i32 %365)
  %367 = load i32, i32* %16, align 4
  %368 = icmp sge i32 %367, 0
  br i1 %368, label %369, label %380

369:                                              ; preds = %334
  %370 = load i32, i32* %16, align 4
  store i32 %370, i32* %8, align 4
  %371 = load i32, i32* %17, align 4
  store i32 %371, i32* %9, align 4
  %372 = load i32, i32* %18, align 4
  store i32 %372, i32* %10, align 4
  %373 = load i32, i32* %5, align 4
  %374 = load i32, i32* %6, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %6, align 4
  %376 = load i32, i32* %5, align 4
  %377 = shl i32 %376, 1
  %378 = load i32, i32* %14, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %14, align 4
  br label %380

380:                                              ; preds = %369, %334
  br label %330

381:                                              ; preds = %330
  %382 = load i32, i32* %6, align 4
  %383 = load %struct.fpn*, %struct.fpn** %4, align 8
  %384 = getelementptr inbounds %struct.fpn, %struct.fpn* %383, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 2
  store i32 %382, i32* %386, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %15, align 4
  store i32 -2147483648, i32* %5, align 4
  %387 = load i32, i32* %8, align 4
  %388 = shl i32 %387, 1
  %389 = load i32, i32* %9, align 4
  %390 = ashr i32 %389, 31
  %391 = or i32 %388, %390
  store i32 %391, i32* %8, align 4
  %392 = load i32, i32* %9, align 4
  %393 = shl i32 %392, 1
  %394 = load i32, i32* %10, align 4
  %395 = ashr i32 %394, 31
  %396 = or i32 %393, %395
  store i32 %396, i32* %9, align 4
  %397 = load i32, i32* %10, align 4
  %398 = shl i32 %397, 1
  %399 = load i32, i32* %11, align 4
  %400 = ashr i32 %399, 31
  %401 = or i32 %398, %400
  store i32 %401, i32* %10, align 4
  %402 = load i32, i32* %11, align 4
  %403 = shl i32 %402, 1
  store i32 %403, i32* %11, align 4
  %404 = load i32, i32* %5, align 4
  store i32 %404, i32* %7, align 4
  %405 = load i32, i32* %19, align 4
  %406 = load i32, i32* %11, align 4
  %407 = load i32, i32* %7, align 4
  %408 = call i32 @FPU_SUBS(i32 %405, i32 %406, i32 %407)
  %409 = load i32, i32* %18, align 4
  %410 = load i32, i32* %10, align 4
  %411 = load i32, i32* %14, align 4
  %412 = call i32 @FPU_SUBCS(i32 %409, i32 %410, i32 %411)
  %413 = load i32, i32* %17, align 4
  %414 = load i32, i32* %9, align 4
  %415 = load i32, i32* %13, align 4
  %416 = call i32 @FPU_SUBCS(i32 %413, i32 %414, i32 %415)
  %417 = load i32, i32* %16, align 4
  %418 = load i32, i32* %8, align 4
  %419 = load i32, i32* %12, align 4
  %420 = call i32 @FPU_SUBC(i32 %417, i32 %418, i32 %419)
  %421 = load i32, i32* %16, align 4
  %422 = icmp sge i32 %421, 0
  br i1 %422, label %423, label %431

423:                                              ; preds = %381
  %424 = load i32, i32* %16, align 4
  store i32 %424, i32* %8, align 4
  %425 = load i32, i32* %17, align 4
  store i32 %425, i32* %9, align 4
  %426 = load i32, i32* %18, align 4
  store i32 %426, i32* %10, align 4
  %427 = load i32, i32* %19, align 4
  store i32 %427, i32* %11, align 4
  %428 = load i32, i32* %5, align 4
  store i32 %428, i32* %6, align 4
  %429 = load i32, i32* %14, align 4
  %430 = or i32 %429, 1
  store i32 %430, i32* %14, align 4
  br label %431

431:                                              ; preds = %423, %381
  br label %432

432:                                              ; preds = %487, %431
  %433 = load i32, i32* %5, align 4
  %434 = ashr i32 %433, 1
  store i32 %434, i32* %5, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %488

436:                                              ; preds = %432
  %437 = load i32, i32* %8, align 4
  %438 = shl i32 %437, 1
  %439 = load i32, i32* %9, align 4
  %440 = ashr i32 %439, 31
  %441 = or i32 %438, %440
  store i32 %441, i32* %8, align 4
  %442 = load i32, i32* %9, align 4
  %443 = shl i32 %442, 1
  %444 = load i32, i32* %10, align 4
  %445 = ashr i32 %444, 31
  %446 = or i32 %443, %445
  store i32 %446, i32* %9, align 4
  %447 = load i32, i32* %10, align 4
  %448 = shl i32 %447, 1
  %449 = load i32, i32* %11, align 4
  %450 = ashr i32 %449, 31
  %451 = or i32 %448, %450
  store i32 %451, i32* %10, align 4
  %452 = load i32, i32* %11, align 4
  %453 = shl i32 %452, 1
  store i32 %453, i32* %11, align 4
  %454 = load i32, i32* %15, align 4
  %455 = load i32, i32* %5, align 4
  %456 = or i32 %454, %455
  store i32 %456, i32* %7, align 4
  %457 = load i32, i32* %19, align 4
  %458 = load i32, i32* %11, align 4
  %459 = load i32, i32* %7, align 4
  %460 = call i32 @FPU_SUBS(i32 %457, i32 %458, i32 %459)
  %461 = load i32, i32* %18, align 4
  %462 = load i32, i32* %10, align 4
  %463 = load i32, i32* %14, align 4
  %464 = call i32 @FPU_SUBCS(i32 %461, i32 %462, i32 %463)
  %465 = load i32, i32* %17, align 4
  %466 = load i32, i32* %9, align 4
  %467 = load i32, i32* %13, align 4
  %468 = call i32 @FPU_SUBCS(i32 %465, i32 %466, i32 %467)
  %469 = load i32, i32* %16, align 4
  %470 = load i32, i32* %8, align 4
  %471 = load i32, i32* %12, align 4
  %472 = call i32 @FPU_SUBC(i32 %469, i32 %470, i32 %471)
  %473 = load i32, i32* %16, align 4
  %474 = icmp sge i32 %473, 0
  br i1 %474, label %475, label %487

475:                                              ; preds = %436
  %476 = load i32, i32* %16, align 4
  store i32 %476, i32* %8, align 4
  %477 = load i32, i32* %17, align 4
  store i32 %477, i32* %9, align 4
  %478 = load i32, i32* %18, align 4
  store i32 %478, i32* %10, align 4
  %479 = load i32, i32* %19, align 4
  store i32 %479, i32* %11, align 4
  %480 = load i32, i32* %5, align 4
  %481 = load i32, i32* %6, align 4
  %482 = or i32 %481, %480
  store i32 %482, i32* %6, align 4
  %483 = load i32, i32* %5, align 4
  %484 = shl i32 %483, 1
  %485 = load i32, i32* %15, align 4
  %486 = or i32 %485, %484
  store i32 %486, i32* %15, align 4
  br label %487

487:                                              ; preds = %475, %436
  br label %432

488:                                              ; preds = %432
  %489 = load i32, i32* %6, align 4
  %490 = load %struct.fpn*, %struct.fpn** %4, align 8
  %491 = getelementptr inbounds %struct.fpn, %struct.fpn* %490, i32 0, i32 0
  %492 = load i32*, i32** %491, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 3
  store i32 %489, i32* %493, align 4
  %494 = load i32, i32* %8, align 4
  %495 = load i32, i32* %9, align 4
  %496 = or i32 %494, %495
  %497 = load i32, i32* %10, align 4
  %498 = or i32 %496, %497
  %499 = load i32, i32* %11, align 4
  %500 = or i32 %498, %499
  %501 = load %struct.fpn*, %struct.fpn** %4, align 8
  %502 = getelementptr inbounds %struct.fpn, %struct.fpn* %501, i32 0, i32 2
  store i32 %500, i32* %502, align 4
  %503 = load i32, i32* @FPE_REG, align 4
  %504 = load %struct.fpn*, %struct.fpn** %4, align 8
  %505 = call i32 @DUMPFPN(i32 %503, %struct.fpn* %504)
  %506 = load %struct.fpn*, %struct.fpn** %4, align 8
  store %struct.fpn* %506, %struct.fpn** %2, align 8
  br label %507

507:                                              ; preds = %488, %78, %66, %48, %34
  %508 = load %struct.fpn*, %struct.fpn** %2, align 8
  ret %struct.fpn* %508
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @DUMPFPN(i32, %struct.fpn*) #1

declare dso_local i64 @ISNAN(%struct.fpn*) #1

declare dso_local i64 @ISZERO(%struct.fpn*) #1

declare dso_local %struct.fpn* @fpu_newnan(%struct.fpemu*) #1

declare dso_local i64 @ISINF(%struct.fpn*) #1

declare dso_local i32 @FPU_SUBS(i32, i32, i32) #1

declare dso_local i32 @FPU_SUBC(i32, i32, i32) #1

declare dso_local i32 @FPU_SUBCS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
