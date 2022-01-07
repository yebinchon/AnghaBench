; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_validate_mem_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_validate_mem_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.t4_range = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@A_MA_TARGET_MEM_ENABLE = common dso_local global i32 0, align 4
@F_EDRAM0_ENABLE = common dso_local global i32 0, align 4
@A_MA_EDRAM0_BAR = common dso_local global i32 0, align 4
@F_EDRAM1_ENABLE = common dso_local global i32 0, align 4
@A_MA_EDRAM1_BAR = common dso_local global i32 0, align 4
@F_EXT_MEM_ENABLE = common dso_local global i32 0, align 4
@A_MA_EXT_MEMORY_BAR = common dso_local global i32 0, align 4
@F_EXT_MEM1_ENABLE = common dso_local global i32 0, align 4
@A_MA_EXT_MEMORY1_BAR = common dso_local global i32 0, align 4
@t4_range_cmp = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @validate_mem_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_mem_range(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x %struct.t4_range], align 16
  %9 = alloca %struct.t4_range*, align 8
  %10 = alloca %struct.t4_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %19, %3
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %377

28:                                               ; preds = %23
  %29 = load %struct.adapter*, %struct.adapter** %5, align 8
  %30 = load i32, i32* @A_MA_TARGET_MEM_ENABLE, align 4
  %31 = call i32 @t4_read_reg(%struct.adapter* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = getelementptr inbounds [4 x %struct.t4_range], [4 x %struct.t4_range]* %8, i64 0, i64 0
  store %struct.t4_range* %32, %struct.t4_range** %9, align 8
  store i32 0, i32* %14, align 4
  %33 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %34 = call i32 @bzero(%struct.t4_range* %33, i32 32)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @F_EDRAM0_ENABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %28
  %40 = load %struct.adapter*, %struct.adapter** %5, align 8
  %41 = load i32, i32* @A_MA_EDRAM0_BAR, align 4
  %42 = call i32 @t4_read_reg(%struct.adapter* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @G_EDRAM0_SIZE(i32 %43)
  %45 = shl i32 %44, 20
  %46 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %47 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %49 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %39
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @G_EDRAM0_BASE(i32 %53)
  %55 = shl i32 %54, 20
  %56 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %57 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %60 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %52
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %68 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %71 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = icmp sle i32 %66, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %377

76:                                               ; preds = %63, %52
  %77 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %78 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %77, i32 1
  store %struct.t4_range* %78, %struct.t4_range** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %76, %39
  br label %82

82:                                               ; preds = %81, %28
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @F_EDRAM1_ENABLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %130

87:                                               ; preds = %82
  %88 = load %struct.adapter*, %struct.adapter** %5, align 8
  %89 = load i32, i32* @A_MA_EDRAM1_BAR, align 4
  %90 = call i32 @t4_read_reg(%struct.adapter* %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @G_EDRAM1_SIZE(i32 %91)
  %93 = shl i32 %92, 20
  %94 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %95 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %97 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %87
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @G_EDRAM1_BASE(i32 %101)
  %103 = shl i32 %102, 20
  %104 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %105 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %108 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %106, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %100
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %112, %113
  %115 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %116 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %119 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = icmp sle i32 %114, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %377

124:                                              ; preds = %111, %100
  %125 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %126 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %125, i32 1
  store %struct.t4_range* %126, %struct.t4_range** %9, align 8
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %124, %87
  br label %130

130:                                              ; preds = %129, %82
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @F_EXT_MEM_ENABLE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %178

135:                                              ; preds = %130
  %136 = load %struct.adapter*, %struct.adapter** %5, align 8
  %137 = load i32, i32* @A_MA_EXT_MEMORY_BAR, align 4
  %138 = call i32 @t4_read_reg(%struct.adapter* %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @G_EXT_MEM_SIZE(i32 %139)
  %141 = shl i32 %140, 20
  %142 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %143 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %145 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %177

148:                                              ; preds = %135
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @G_EXT_MEM_BASE(i32 %149)
  %151 = shl i32 %150, 20
  %152 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %153 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %156 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp sge i32 %154, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %148
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %160, %161
  %163 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %164 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %167 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %165, %168
  %170 = icmp sle i32 %162, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %377

172:                                              ; preds = %159, %148
  %173 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %174 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %173, i32 1
  store %struct.t4_range* %174, %struct.t4_range** %9, align 8
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %172, %135
  br label %178

178:                                              ; preds = %177, %130
  %179 = load %struct.adapter*, %struct.adapter** %5, align 8
  %180 = call i64 @is_t5(%struct.adapter* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %230

182:                                              ; preds = %178
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @F_EXT_MEM1_ENABLE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %230

187:                                              ; preds = %182
  %188 = load %struct.adapter*, %struct.adapter** %5, align 8
  %189 = load i32, i32* @A_MA_EXT_MEMORY1_BAR, align 4
  %190 = call i32 @t4_read_reg(%struct.adapter* %188, i32 %189)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @G_EXT_MEM1_SIZE(i32 %191)
  %193 = shl i32 %192, 20
  %194 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %195 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %197 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %229

200:                                              ; preds = %187
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @G_EXT_MEM1_BASE(i32 %201)
  %203 = shl i32 %202, 20
  %204 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %205 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %6, align 4
  %207 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %208 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp sge i32 %206, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %200
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %212, %213
  %215 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %216 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %219 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %217, %220
  %222 = icmp sle i32 %214, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %211
  store i32 0, i32* %4, align 4
  br label %377

224:                                              ; preds = %211, %200
  %225 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %226 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %225, i32 1
  store %struct.t4_range* %226, %struct.t4_range** %9, align 8
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %224, %187
  br label %230

230:                                              ; preds = %229, %182, %178
  %231 = load i32, i32* %14, align 4
  %232 = getelementptr inbounds [4 x %struct.t4_range], [4 x %struct.t4_range]* %8, i64 0, i64 0
  %233 = call i32 @nitems(%struct.t4_range* %232)
  %234 = icmp sle i32 %231, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @MPASS(i32 %235)
  %237 = load i32, i32* %14, align 4
  %238 = icmp sgt i32 %237, 1
  br i1 %238, label %239, label %375

239:                                              ; preds = %230
  %240 = getelementptr inbounds [4 x %struct.t4_range], [4 x %struct.t4_range]* %8, i64 0, i64 0
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* @t4_range_cmp, align 4
  %243 = call i32 @qsort(%struct.t4_range* %240, i32 %241, i32 8, i32 %242)
  %244 = getelementptr inbounds [4 x %struct.t4_range], [4 x %struct.t4_range]* %8, i64 0, i64 0
  store %struct.t4_range* %244, %struct.t4_range** %9, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sub nsw i32 %245, 1
  store i32 %246, i32* %15, align 4
  br label %247

247:                                              ; preds = %333, %239
  %248 = load i32, i32* %15, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %338

250:                                              ; preds = %247
  %251 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %252 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp sgt i32 %253, 0
  %255 = zext i1 %254 to i32
  %256 = call i32 @MPASS(i32 %255)
  %257 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %258 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %257, i64 1
  store %struct.t4_range* %258, %struct.t4_range** %10, align 8
  %259 = load %struct.t4_range*, %struct.t4_range** %10, align 8
  %260 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp sgt i32 %261, 0
  %263 = zext i1 %262 to i32
  %264 = call i32 @MPASS(i32 %263)
  br label %265

265:                                              ; preds = %309, %250
  %266 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %267 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %270 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %268, %271
  %273 = load %struct.t4_range*, %struct.t4_range** %10, align 8
  %274 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp sge i32 %272, %275
  br i1 %276, label %277, label %312

277:                                              ; preds = %265
  %278 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %279 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %282 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %280, %283
  %285 = sext i32 %284 to i64
  %286 = load %struct.t4_range*, %struct.t4_range** %10, align 8
  %287 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.t4_range*, %struct.t4_range** %10, align 8
  %290 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %288, %291
  %293 = sext i32 %292 to i64
  %294 = call i64 @max(i64 %285, i64 %293)
  %295 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %296 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = sub nsw i64 %294, %298
  %300 = trunc i64 %299 to i32
  %301 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %302 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* %14, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %14, align 4
  %305 = load i32, i32* %15, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %15, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %277
  br label %339

309:                                              ; preds = %277
  %310 = load %struct.t4_range*, %struct.t4_range** %10, align 8
  %311 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %310, i32 1
  store %struct.t4_range* %311, %struct.t4_range** %10, align 8
  br label %265

312:                                              ; preds = %265
  %313 = load %struct.t4_range*, %struct.t4_range** %10, align 8
  %314 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %315 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %314, i64 1
  %316 = icmp ne %struct.t4_range* %313, %315
  br i1 %316, label %317, label %332

317:                                              ; preds = %312
  %318 = load %struct.t4_range*, %struct.t4_range** %10, align 8
  %319 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = icmp sgt i32 %320, 0
  %322 = zext i1 %321 to i32
  %323 = call i32 @MPASS(i32 %322)
  %324 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %325 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %324, i64 1
  %326 = load %struct.t4_range*, %struct.t4_range** %10, align 8
  %327 = load i32, i32* %15, align 4
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 8
  %330 = trunc i64 %329 to i32
  %331 = call i32 @memcpy(%struct.t4_range* %325, %struct.t4_range* %326, i32 %330)
  br label %332

332:                                              ; preds = %317, %312
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %15, align 4
  %335 = add nsw i32 %334, -1
  store i32 %335, i32* %15, align 4
  %336 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %337 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %336, i32 1
  store %struct.t4_range* %337, %struct.t4_range** %9, align 8
  br label %247

338:                                              ; preds = %247
  br label %339

339:                                              ; preds = %338, %308
  %340 = load i32, i32* %14, align 4
  %341 = icmp sgt i32 %340, 0
  %342 = zext i1 %341 to i32
  %343 = call i32 @MPASS(i32 %342)
  %344 = getelementptr inbounds [4 x %struct.t4_range], [4 x %struct.t4_range]* %8, i64 0, i64 0
  store %struct.t4_range* %344, %struct.t4_range** %9, align 8
  store i32 0, i32* %13, align 4
  br label %345

345:                                              ; preds = %369, %339
  %346 = load i32, i32* %13, align 4
  %347 = load i32, i32* %14, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %374

349:                                              ; preds = %345
  %350 = load i32, i32* %6, align 4
  %351 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %352 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp sge i32 %350, %353
  br i1 %354, label %355, label %368

355:                                              ; preds = %349
  %356 = load i32, i32* %6, align 4
  %357 = load i32, i32* %7, align 4
  %358 = add nsw i32 %356, %357
  %359 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %360 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %363 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = add nsw i32 %361, %364
  %366 = icmp sle i32 %358, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %355
  store i32 0, i32* %4, align 4
  br label %377

368:                                              ; preds = %355, %349
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %13, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %13, align 4
  %372 = load %struct.t4_range*, %struct.t4_range** %9, align 8
  %373 = getelementptr inbounds %struct.t4_range, %struct.t4_range* %372, i32 1
  store %struct.t4_range* %373, %struct.t4_range** %9, align 8
  br label %345

374:                                              ; preds = %345
  br label %375

375:                                              ; preds = %374, %230
  %376 = load i32, i32* @EFAULT, align 4
  store i32 %376, i32* %4, align 4
  br label %377

377:                                              ; preds = %375, %367, %223, %171, %123, %75, %26
  %378 = load i32, i32* %4, align 4
  ret i32 %378
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @bzero(%struct.t4_range*, i32) #1

declare dso_local i32 @G_EDRAM0_SIZE(i32) #1

declare dso_local i32 @G_EDRAM0_BASE(i32) #1

declare dso_local i32 @G_EDRAM1_SIZE(i32) #1

declare dso_local i32 @G_EDRAM1_BASE(i32) #1

declare dso_local i32 @G_EXT_MEM_SIZE(i32) #1

declare dso_local i32 @G_EXT_MEM_BASE(i32) #1

declare dso_local i64 @is_t5(%struct.adapter*) #1

declare dso_local i32 @G_EXT_MEM1_SIZE(i32) #1

declare dso_local i32 @G_EXT_MEM1_BASE(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @nitems(%struct.t4_range*) #1

declare dso_local i32 @qsort(%struct.t4_range*, i32, i32, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @memcpy(%struct.t4_range*, %struct.t4_range*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
