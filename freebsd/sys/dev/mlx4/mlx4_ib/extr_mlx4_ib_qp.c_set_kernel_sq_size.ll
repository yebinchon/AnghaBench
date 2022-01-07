; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_set_kernel_sq_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_set_kernel_sq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }
%struct.ib_qp_cap = type { i32, i32, i32 }
%struct.mlx4_ib_qp = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MLX4_IB_SQ_MAX_SPARE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_IB_QPT_SMI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_GSI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_SMI_OWNER = common dso_local global i32 0, align 4
@MLX4_IB_QPT_TUN_SMI_OWNER = common dso_local global i32 0, align 4
@MLX4_FW_VER_WQE_CTRL_NEC = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_SMI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_GSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.ib_qp_cap*, i32, %struct.mlx4_ib_qp*, i32)* @set_kernel_sq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_kernel_sq_size(%struct.mlx4_ib_dev* %0, %struct.ib_qp_cap* %1, i32 %2, %struct.mlx4_ib_qp* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.ib_qp_cap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_ib_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %7, align 8
  store %struct.ib_qp_cap* %1, %struct.ib_qp_cap** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.mlx4_ib_qp* %3, %struct.mlx4_ib_qp** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %14 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MLX4_IB_SQ_MAX_SPARE, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp sgt i32 %15, %23
  br i1 %24, label %63, label %25

25:                                               ; preds = %5
  %26 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %27 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @min(i32 %34, i32 %40)
  %42 = icmp sgt i32 %28, %41
  br i1 %42, label %63, label %43

43:                                               ; preds = %25
  %44 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %45 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @send_wqe_overhead(i32 %47, i32 %50)
  %52 = add nsw i32 %46, %51
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 4
  %55 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ugt i64 %54, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %43, %25, %5
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %373

66:                                               ; preds = %43
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @MLX4_IB_QPT_SMI, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %81, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @MLX4_IB_QPT_GSI, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI_OWNER, align 4
  %77 = load i32, i32* @MLX4_IB_QPT_TUN_SMI_OWNER, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %74, %70, %66
  %82 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %83 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 2
  %86 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %85, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %373

96:                                               ; preds = %81, %74
  %97 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %98 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %104 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i32 @max(i32 %102, i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %112 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @send_wqe_overhead(i32 %110, i32 %113)
  %115 = add nsw i32 %109, %114
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %118 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %116, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %96
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %373

127:                                              ; preds = %96
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %172

130:                                              ; preds = %127
  %131 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %132 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MLX4_FW_VER_WQE_CTRL_NEC, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %172

139:                                              ; preds = %130
  %140 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %141 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %139
  %145 = load i32, i32* @BITS_PER_LONG, align 4
  %146 = icmp eq i32 %145, 64
  br i1 %146, label %147, label %172

147:                                              ; preds = %144
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @MLX4_IB_QPT_SMI, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %147
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @MLX4_IB_QPT_GSI, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI_OWNER, align 4
  %158 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @MLX4_IB_QPT_PROXY_GSI, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @MLX4_IB_QPT_TUN_SMI_OWNER, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %156, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %155
  %167 = call i8* @ilog2(i32 64)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %170 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 4
  br label %180

172:                                              ; preds = %155, %151, %147, %144, %139, %130, %127
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @roundup_pow_of_two(i32 %173)
  %175 = call i8* @ilog2(i32 %174)
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %178 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 4
  br label %180

180:                                              ; preds = %172, %166
  br label %181

181:                                              ; preds = %237, %180
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %184 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 1, %186
  %188 = call i32 @DIV_ROUND_UP(i32 %182, i32 %187)
  %189 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %190 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %192 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 2048, %194
  %196 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %197 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %195, %198
  %200 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %201 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %203 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %206 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = mul nsw i32 %204, %207
  %209 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %210 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %208, %211
  %213 = call i32 @roundup_pow_of_two(i32 %212)
  %214 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %215 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 4
  %217 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %218 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %222 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %221, i32 0, i32 0
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp sle i32 %220, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %181
  br label %243

229:                                              ; preds = %181
  %230 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %231 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp sle i32 %232, 1
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %6, align 4
  br label %373

237:                                              ; preds = %229
  %238 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %239 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %240, align 4
  br label %181

243:                                              ; preds = %228
  %244 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %245 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %244, i32 0, i32 0
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %251 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %254 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = shl i32 %252, %256
  %258 = call i32 @min(i32 %249, i32 %257)
  %259 = load i32, i32* %9, align 4
  %260 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %261 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @send_wqe_overhead(i32 %259, i32 %262)
  %264 = sub nsw i32 %258, %263
  %265 = sext i32 %264 to i64
  %266 = udiv i64 %265, 4
  %267 = trunc i64 %266 to i32
  %268 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %269 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 2
  store i32 %267, i32* %270, align 4
  %271 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %272 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %276 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = shl i32 %274, %278
  %280 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %281 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %285 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 %283, %287
  %289 = add nsw i32 %279, %288
  %290 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %291 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 8
  %292 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %293 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %292, i32 0, i32 4
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %297 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp ugt i32 %295, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %243
  %302 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %303 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 2
  store i32 0, i32* %304, align 8
  %305 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %306 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %310 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = shl i32 %308, %312
  %314 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %315 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 3
  store i32 %313, i32* %316, align 4
  br label %333

317:                                              ; preds = %243
  %318 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %319 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %323 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = shl i32 %321, %325
  %327 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %328 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %327, i32 0, i32 4
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 2
  store i32 %326, i32* %329, align 8
  %330 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %331 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 3
  store i32 0, i32* %332, align 4
  br label %333

333:                                              ; preds = %317, %301
  %334 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %335 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %334, i32 0, i32 3
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %339 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %337, %340
  %342 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %343 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = sdiv i32 %341, %344
  %346 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %347 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 4
  store i32 %345, i32* %348, align 4
  %349 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %350 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %349, i32 0, i32 0
  store i32 %345, i32* %350, align 4
  %351 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %352 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %356 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %355, i32 0, i32 0
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %362 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %361, i32 0, i32 0
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @min(i32 %360, i32 %366)
  %368 = call i32 @min(i32 %354, i32 %367)
  %369 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %370 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  %371 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %8, align 8
  %372 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %371, i32 0, i32 2
  store i32 0, i32* %372, align 4
  store i32 0, i32* %6, align 4
  br label %373

373:                                              ; preds = %333, %234, %124, %93, %63
  %374 = load i32, i32* %6, align 4
  ret i32 %374
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @send_wqe_overhead(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @ilog2(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
