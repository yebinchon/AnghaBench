; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_create_zones.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_create_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.mlx4_qp_table = type { i32, i32*, %struct.mlx4_bitmap* }
%struct.mlx4_bitmap = type { i32 }
%struct.TYPE_4__ = type { %struct.mlx4_qp_table }

@MLX4_QP_TABLE_ZONE_NUM = common dso_local global i32 0, align 4
@MLX4_ZONE_ALLOC_FLAGS_NO_OVERLAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX4_QP_TABLE_ZONE_GENERAL = common dso_local global i32 0, align 4
@MLX4_ZONE_FALLBACK_TO_HIGHER_PRIO = common dso_local global i32 0, align 4
@MLX4_ZONE_USE_RR = common dso_local global i32 0, align 4
@MLX4_QP_TABLE_ZONE_RSS = common dso_local global i32 0, align 4
@MLX4_QP_REGION_FW = common dso_local global i64 0, align 8
@MLX4_ZONE_ALLOW_ALLOC_FROM_LOWER_PRIO = common dso_local global i32 0, align 4
@MLX4_ZONE_ALLOW_ALLOC_FROM_EQ_PRIO = common dso_local global i32 0, align 4
@MLX4_QP_TABLE_RSS_ETH_PRIORITY = common dso_local global i32 0, align 4
@MLX4_BF_QP_SKIP_MASK = common dso_local global i32 0, align 4
@MLX4_QP_TABLE_RAW_ETH_SIZE = common dso_local global i32 0, align 4
@MLX4_QP_TABLE_RAW_ETH_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32)* @mlx4_create_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_create_zones(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_qp_table*, align 8
  %15 = alloca %struct.mlx4_bitmap*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %27 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.mlx4_qp_table* %28, %struct.mlx4_qp_table** %14, align 8
  %29 = load i32, i32* @MLX4_QP_TABLE_ZONE_NUM, align 4
  %30 = zext i32 %29 to i64
  store %struct.mlx4_bitmap* null, %struct.mlx4_bitmap** %15, align 8
  store i32 0, i32* %16, align 4
  %31 = load i32, i32* @MLX4_ZONE_ALLOC_FLAGS_NO_OVERLAP, align 4
  %32 = call i32* @mlx4_zone_allocator_create(i32 %31)
  %33 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %34 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %36 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* null, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %6
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %359

42:                                               ; preds = %6
  %43 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %44 = mul nuw i64 4, %30
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.mlx4_bitmap** @kmalloc(i32 %45, i32 %46)
  %48 = bitcast %struct.mlx4_bitmap** %47 to %struct.mlx4_bitmap*
  store %struct.mlx4_bitmap* %48, %struct.mlx4_bitmap** %15, align 8
  %49 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %50 = icmp eq %struct.mlx4_bitmap* null, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %19, align 4
  br label %353

54:                                               ; preds = %42
  %55 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %56 = load i32, i32* @MLX4_QP_TABLE_ZONE_GENERAL, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %55, i64 %57
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @mlx4_bitmap_init(%struct.mlx4_bitmap* %58, i32 %62, i32 8388607, i32 %63, i32 %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %335

69:                                               ; preds = %54
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %16, align 4
  %72 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %73 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %76 = load i32, i32* @MLX4_QP_TABLE_ZONE_GENERAL, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %75, i64 %77
  %79 = load i32, i32* @MLX4_ZONE_FALLBACK_TO_HIGHER_PRIO, align 4
  %80 = load i32, i32* @MLX4_ZONE_USE_RR, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %83 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MLX4_QP_TABLE_ZONE_GENERAL, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @mlx4_zone_add_one(i32* %74, %struct.mlx4_bitmap* %78, i32 %81, i32 0, i32 0, i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %69
  br label %335

91:                                               ; preds = %69
  %92 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %93 = load i32, i32* @MLX4_QP_TABLE_ZONE_RSS, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %92, i64 %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %100 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 @mlx4_bitmap_init(%struct.mlx4_bitmap* %95, i32 %96, i32 %98, i32 %105, i32 %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %91
  br label %335

113:                                              ; preds = %91
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  %116 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %117 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %120 = load i32, i32* @MLX4_QP_TABLE_ZONE_RSS, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %119, i64 %121
  %123 = load i32, i32* @MLX4_ZONE_ALLOW_ALLOC_FROM_LOWER_PRIO, align 4
  %124 = load i32, i32* @MLX4_ZONE_ALLOW_ALLOC_FROM_EQ_PRIO, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @MLX4_ZONE_USE_RR, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @MLX4_QP_TABLE_RSS_ETH_PRIORITY, align 4
  %129 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %130 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MLX4_QP_TABLE_ZONE_RSS, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @mlx4_zone_add_one(i32* %118, %struct.mlx4_bitmap* %122, i32 %127, i32 %128, i32 0, i32 %133)
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %113
  br label %335

138:                                              ; preds = %113
  %139 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %140 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* @MLX4_QP_TABLE_ZONE_RSS, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %323, %138
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %152 = mul nuw i64 4, %30
  %153 = udiv i64 %152, 4
  %154 = icmp ult i64 %150, %153
  br i1 %154, label %155, label %326

155:                                              ; preds = %148
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  %158 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  %159 = sub nsw i32 %158, 1
  %160 = xor i32 %159, -1
  %161 = and i32 %157, %160
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %22, align 4
  %163 = load i32, i32* @MLX4_QP_TABLE_RAW_ETH_SIZE, align 4
  %164 = load i32, i32* %22, align 4
  %165 = add nsw i32 %164, 1
  %166 = call i32 @min(i32 %163, i32 %165)
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %155
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %17, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  %176 = call i32 @roundup_pow_of_two(i32 %175)
  %177 = icmp sge i32 %174, %176
  br i1 %177, label %191, label %178

178:                                              ; preds = %171, %155
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %23, align 4
  %186 = add nsw i32 %184, %185
  %187 = sub nsw i32 %186, 1
  %188 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %183, %171
  %192 = load i32, i32* %23, align 4
  store i32 %192, i32* %20, align 4
  br label %245

193:                                              ; preds = %183, %178
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* %22, align 4
  %198 = or i32 %196, %197
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %24, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %193
  %205 = load i32, i32* %24, align 4
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %204, %193
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  store i32 -1, i32* %20, align 4
  br label %244

211:                                              ; preds = %206
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %17, align 4
  %214 = sub nsw i32 %212, %213
  %215 = load i32, i32* %22, align 4
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %22, align 4
  %218 = and i32 %216, %217
  %219 = sub nsw i32 %215, %218
  %220 = load i32, i32* %23, align 4
  %221 = call i32 @min3(i32 %214, i32 %219, i32 %220)
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* %23, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %243

225:                                              ; preds = %211
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %24, align 4
  %228 = sub nsw i32 %226, %227
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* %22, align 4
  %232 = and i32 %230, %231
  %233 = sub nsw i32 %229, %232
  %234 = load i32, i32* %23, align 4
  %235 = call i32 @min3(i32 %228, i32 %233, i32 %234)
  store i32 %235, i32* %25, align 4
  %236 = load i32, i32* %25, align 4
  %237 = load i32, i32* %20, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %225
  %240 = load i32, i32* %24, align 4
  store i32 %240, i32* %17, align 4
  %241 = load i32, i32* %25, align 4
  store i32 %241, i32* %20, align 4
  br label %242

242:                                              ; preds = %239, %225
  br label %243

243:                                              ; preds = %242, %211
  br label %244

244:                                              ; preds = %243, %210
  br label %245

245:                                              ; preds = %244, %191
  %246 = load i32, i32* %20, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %279

248:                                              ; preds = %245
  %249 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %250 = load i32, i32* @MLX4_QP_TABLE_ZONE_RSS, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %249, i64 %251
  %253 = load i32, i32* %20, align 4
  %254 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  %255 = call i32 @mlx4_bitmap_alloc_range(%struct.mlx4_bitmap* %252, i32 %253, i32 1, i32 %254)
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* %21, align 4
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %258, label %261

258:                                              ; preds = %248
  %259 = load i32, i32* @ENOMEM, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %19, align 4
  br label %326

261:                                              ; preds = %248
  %262 = load i32, i32* %21, align 4
  %263 = load i32, i32* %20, align 4
  %264 = add nsw i32 %262, %263
  store i32 %264, i32* %17, align 4
  %265 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %266 = load i32, i32* %18, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %265, i64 %267
  %269 = load i32, i32* %20, align 4
  %270 = call i32 @roundup_pow_of_two(i32 %269)
  %271 = load i32, i32* %20, align 4
  %272 = call i32 @roundup_pow_of_two(i32 %271)
  %273 = sub nsw i32 %272, 1
  %274 = load i32, i32* %20, align 4
  %275 = call i32 @roundup_pow_of_two(i32 %274)
  %276 = load i32, i32* %20, align 4
  %277 = sub nsw i32 %275, %276
  %278 = call i32 @mlx4_bitmap_init(%struct.mlx4_bitmap* %268, i32 %270, i32 %273, i32 0, i32 %277)
  store i32 %278, i32* %19, align 4
  br label %292

279:                                              ; preds = %245
  %280 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %281 = load i32, i32* %18, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %280, i64 %282
  %284 = load i32, i32* @MLX4_QP_TABLE_RAW_ETH_SIZE, align 4
  %285 = sub nsw i32 %284, 1
  %286 = call i32 @mlx4_bitmap_init(%struct.mlx4_bitmap* %283, i32 1, i32 %285, i32 0, i32 0)
  store i32 %286, i32* %19, align 4
  %287 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %288 = load i32, i32* %18, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %287, i64 %289
  %291 = call i32 @mlx4_bitmap_alloc_range(%struct.mlx4_bitmap* %290, i32 1, i32 1, i32 0)
  br label %292

292:                                              ; preds = %279, %261
  %293 = load i32, i32* %19, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  br label %326

296:                                              ; preds = %292
  %297 = load i32, i32* %16, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %16, align 4
  %299 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %300 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %303 = load i32, i32* %18, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %302, i64 %304
  %306 = load i32, i32* @MLX4_ZONE_ALLOW_ALLOC_FROM_LOWER_PRIO, align 4
  %307 = load i32, i32* @MLX4_ZONE_ALLOW_ALLOC_FROM_EQ_PRIO, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @MLX4_ZONE_USE_RR, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @MLX4_QP_TABLE_RAW_ETH_PRIORITY, align 4
  %312 = load i32, i32* %21, align 4
  %313 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %314 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* %18, align 4
  %317 = add nsw i32 %315, %316
  %318 = call i32 @mlx4_zone_add_one(i32* %301, %struct.mlx4_bitmap* %305, i32 %310, i32 %311, i32 %312, i32 %317)
  store i32 %318, i32* %19, align 4
  %319 = load i32, i32* %19, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %296
  br label %326

322:                                              ; preds = %296
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %18, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %18, align 4
  br label %148

326:                                              ; preds = %321, %295, %258, %148
  %327 = load i32, i32* %19, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  br label %335

330:                                              ; preds = %326
  %331 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %332 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %333 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %332, i32 0, i32 2
  store %struct.mlx4_bitmap* %331, %struct.mlx4_bitmap** %333, align 8
  %334 = load i32, i32* %19, align 4
  store i32 %334, i32* %7, align 4
  br label %359

335:                                              ; preds = %329, %137, %112, %90, %68
  store i32 0, i32* %18, align 4
  br label %336

336:                                              ; preds = %346, %335
  %337 = load i32, i32* %18, align 4
  %338 = load i32, i32* %16, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %349

340:                                              ; preds = %336
  %341 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %342 = load i32, i32* %18, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %341, i64 %343
  %345 = call i32 @mlx4_bitmap_cleanup(%struct.mlx4_bitmap* %344)
  br label %346

346:                                              ; preds = %340
  %347 = load i32, i32* %18, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %18, align 4
  br label %336

349:                                              ; preds = %336
  %350 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %15, align 8
  %351 = bitcast %struct.mlx4_bitmap* %350 to %struct.mlx4_bitmap**
  %352 = call i32 @kfree(%struct.mlx4_bitmap** %351)
  br label %353

353:                                              ; preds = %349, %51
  %354 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %14, align 8
  %355 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %354, i32 0, i32 1
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @mlx4_zone_allocator_destroy(i32* %356)
  %358 = load i32, i32* %19, align 4
  store i32 %358, i32* %7, align 4
  br label %359

359:                                              ; preds = %353, %330, %39
  %360 = load i32, i32* %7, align 4
  ret i32 %360
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32* @mlx4_zone_allocator_create(i32) #1

declare dso_local %struct.mlx4_bitmap** @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_bitmap_init(%struct.mlx4_bitmap*, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_zone_add_one(i32*, %struct.mlx4_bitmap*, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @min3(i32, i32, i32) #1

declare dso_local i32 @mlx4_bitmap_alloc_range(%struct.mlx4_bitmap*, i32, i32, i32) #1

declare dso_local i32 @mlx4_bitmap_cleanup(%struct.mlx4_bitmap*) #1

declare dso_local i32 @kfree(%struct.mlx4_bitmap**) #1

declare dso_local i32 @mlx4_zone_allocator_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
