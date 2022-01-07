; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_init_qp_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_init_qp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i64*, i32, i32*, i32, i64*, i64*, i64*, i64* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.mlx4_qp_table = type { i32 }
%struct.TYPE_6__ = type { %struct.mlx4_qp_table }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MLX4_QP_REGION_BOTTOM = common dso_local global i32 0, align 4
@MLX4_NUM_QP_REGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Number of reserved QPs is higher than number of QPs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX4_MFUNC_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_qp_table(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_qp_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %18 = call %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.mlx4_qp_table* %19, %struct.mlx4_qp_table** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 2
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call i32 @INIT_RADIX_TREE(i32* %33, i32 %34)
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %37 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %464

40:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MLX4_QP_REGION_BOTTOM, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %41

61:                                               ; preds = %41
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @roundup_pow_of_two(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @ALIGN(i32 %71, i32 8)
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  %77 = zext i32 %76 to i64
  %78 = call i8* @llvm.stacksave()
  store i8* %78, i8** %12, align 8
  %79 = alloca i32, i64 %77, align 16
  store i64 %77, i64* %13, align 8
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %84

84:                                               ; preds = %93, %67
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %79, i64 %91
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %84

96:                                               ; preds = %84
  %97 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %150, %96
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @MLX4_QP_REGION_BOTTOM, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %153

102:                                              ; preds = %98
  %103 = load i32, i32* @MLX4_QP_REGION_BOTTOM, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %146, %102
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %149

109:                                              ; preds = %105
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %111 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %79, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %113, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %79, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %124, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %120, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %109
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %79, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %79, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @swap(i32 %138, i32 %143)
  br label %145

145:                                              ; preds = %134, %109
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %105

149:                                              ; preds = %105
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %14, align 4
  br label %98

153:                                              ; preds = %98
  %154 = load i32, i32* @MLX4_QP_REGION_BOTTOM, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %156

156:                                              ; preds = %202, %153
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %205

160:                                              ; preds = %156
  %161 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %79, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %164, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %178 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %79, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %180, i64 %185
  store i32 %176, i32* %186, align 4
  %187 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %188 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %79, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %190, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %160
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %156

205:                                              ; preds = %156
  %206 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %208 = call i32 @mlx4_num_reserved_sqps(%struct.mlx4_dev* %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %209, %210
  %212 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %213 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = icmp sgt i32 %211, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %205
  %218 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %219 = call i32 @mlx4_err(%struct.mlx4_dev* %218, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %2, align 4
  br label %464

222:                                              ; preds = %205
  %223 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @mlx4_create_zones(%struct.mlx4_dev* %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %222
  %233 = load i32, i32* %5, align 4
  store i32 %233, i32* %2, align 4
  br label %464

234:                                              ; preds = %222
  %235 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %236 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %416

238:                                              ; preds = %234
  %239 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %240 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %242, 8
  %244 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %245 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  store i64 %243, i64* %246, align 8
  %247 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %248 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 8
  %252 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %253 = mul nsw i32 8, %252
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %251, %254
  %256 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %257 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  store i64 %255, i64* %258, align 8
  %259 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %260 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @GFP_KERNEL, align 4
  %264 = call i8* @kcalloc(i32 %262, i32 4, i32 %263)
  %265 = bitcast i8* %264 to i64*
  %266 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %267 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 9
  store i64* %265, i64** %268, align 8
  %269 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %270 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @GFP_KERNEL, align 4
  %274 = call i8* @kcalloc(i32 %272, i32 4, i32 %273)
  %275 = bitcast i8* %274 to i64*
  %276 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %277 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 8
  store i64* %275, i64** %278, align 8
  %279 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %280 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @GFP_KERNEL, align 4
  %284 = call i8* @kcalloc(i32 %282, i32 4, i32 %283)
  %285 = bitcast i8* %284 to i64*
  %286 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %287 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 7
  store i64* %285, i64** %288, align 8
  %289 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %290 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @GFP_KERNEL, align 4
  %294 = call i8* @kcalloc(i32 %292, i32 4, i32 %293)
  %295 = bitcast i8* %294 to i64*
  %296 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %297 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 6
  store i64* %295, i64** %298, align 8
  %299 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %300 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 9
  %302 = load i64*, i64** %301, align 8
  %303 = icmp ne i64* %302, null
  br i1 %303, label %304, label %322

304:                                              ; preds = %238
  %305 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %306 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 8
  %308 = load i64*, i64** %307, align 8
  %309 = icmp ne i64* %308, null
  br i1 %309, label %310, label %322

310:                                              ; preds = %304
  %311 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %312 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 7
  %314 = load i64*, i64** %313, align 8
  %315 = icmp ne i64* %314, null
  br i1 %315, label %316, label %322

316:                                              ; preds = %310
  %317 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %318 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 6
  %320 = load i64*, i64** %319, align 8
  %321 = icmp ne i64* %320, null
  br i1 %321, label %325, label %322

322:                                              ; preds = %316, %310, %304, %238
  %323 = load i32, i32* @ENOMEM, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %5, align 4
  br label %428

325:                                              ; preds = %316
  store i32 0, i32* %8, align 4
  br label %326

326:                                              ; preds = %412, %325
  %327 = load i32, i32* %8, align 4
  %328 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %329 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %327, %331
  br i1 %332, label %333, label %415

333:                                              ; preds = %326
  %334 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %335 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %339 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %338)
  %340 = mul nsw i32 8, %339
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %337, %341
  %343 = load i32, i32* %8, align 4
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %342, %344
  %346 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %347 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 8
  %349 = load i64*, i64** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64, i64* %349, i64 %351
  store i64 %345, i64* %352, align 8
  %353 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %354 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 8
  %356 = load i64*, i64** %355, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %356, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %362 = mul nsw i32 8, %361
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %360, %363
  %365 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %366 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 9
  %368 = load i64*, i64** %367, align 8
  %369 = load i32, i32* %8, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i64, i64* %368, i64 %370
  store i64 %364, i64* %371, align 8
  %372 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %373 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %377 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %376)
  %378 = mul nsw i32 8, %377
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %375, %379
  %381 = load i64, i64* @MLX4_MAX_PORTS, align 8
  %382 = add nsw i64 %380, %381
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %382, %384
  %386 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %387 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 6
  %389 = load i64*, i64** %388, align 8
  %390 = load i32, i32* %8, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i64, i64* %389, i64 %391
  store i64 %385, i64* %392, align 8
  %393 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %394 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 6
  %396 = load i64*, i64** %395, align 8
  %397 = load i32, i32* %8, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i64, i64* %396, i64 %398
  %400 = load i64, i64* %399, align 8
  %401 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %402 = mul nsw i32 8, %401
  %403 = sext i32 %402 to i64
  %404 = add nsw i64 %400, %403
  %405 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %406 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 7
  %408 = load i64*, i64** %407, align 8
  %409 = load i32, i32* %8, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %408, i64 %410
  store i64 %404, i64* %411, align 8
  br label %412

412:                                              ; preds = %333
  %413 = load i32, i32* %8, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %8, align 4
  br label %326

415:                                              ; preds = %326
  br label %416

416:                                              ; preds = %415, %234
  %417 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %418 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %419 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = call i32 @mlx4_CONF_SPECIAL_QP(%struct.mlx4_dev* %417, i64 %421)
  store i32 %422, i32* %5, align 4
  %423 = load i32, i32* %5, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %416
  br label %428

426:                                              ; preds = %416
  %427 = load i32, i32* %5, align 4
  store i32 %427, i32* %2, align 4
  br label %464

428:                                              ; preds = %425, %322
  %429 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %430 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %430, i32 0, i32 9
  %432 = load i64*, i64** %431, align 8
  %433 = call i32 @kfree(i64* %432)
  %434 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %435 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 8
  %437 = load i64*, i64** %436, align 8
  %438 = call i32 @kfree(i64* %437)
  %439 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %440 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 7
  %442 = load i64*, i64** %441, align 8
  %443 = call i32 @kfree(i64* %442)
  %444 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %445 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 6
  %447 = load i64*, i64** %446, align 8
  %448 = call i32 @kfree(i64* %447)
  %449 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %450 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 6
  store i64* null, i64** %451, align 8
  %452 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %453 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 7
  store i64* null, i64** %454, align 8
  %455 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %456 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 8
  store i64* null, i64** %457, align 8
  %458 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %459 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 9
  store i64* null, i64** %460, align 8
  %461 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %462 = call i32 @mlx4_cleanup_qp_zones(%struct.mlx4_dev* %461)
  %463 = load i32, i32* %5, align 4
  store i32 %463, i32* %2, align 4
  br label %464

464:                                              ; preds = %428, %426, %232, %217, %39
  %465 = load i32, i32* %2, align 4
  ret i32 %465
}

declare dso_local %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @swap(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mlx4_num_reserved_sqps(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_create_zones(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_CONF_SPECIAL_QP(%struct.mlx4_dev*, i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @mlx4_cleanup_qp_zones(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
