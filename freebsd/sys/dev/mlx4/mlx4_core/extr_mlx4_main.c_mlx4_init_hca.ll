; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_init_hca.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_init_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_profile = type { i32 }
%struct.mlx4_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_adapter = type { i32, i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32, i32 }
%struct.mlx4_init_hca_param = type { i32, i32, i64, i8* }
%struct.mlx4_config_dev_params = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"QUERY_DEV_CAP command failed, aborting\0A\00", align 1
@MLX4_STEERING_DMFS_A0_STATIC = common dso_local global i64 0, align 8
@MLX4_FUNC_CAP_DMFS_A0_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Fail to get physical port id\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Running from within kdump kernel. Using low memory profile\0A\00", align 1
@low_mem_profile = common dso_local global %struct.mlx4_profile zeroinitializer, align 4
@default_profile = common dso_local global %struct.mlx4_profile zeroinitializer, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@MLX4_FS_NUM_MCG = common dso_local global i32 0, align 4
@enable_4k_uar = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i8* null, align 8
@DEFAULT_UAR_PAGE_SHIFT = common dso_local global i8* null, align 8
@MLX4_DEV_CAP_FLAG_MEM_WINDOW = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_TYPE_2_WIN = common dso_local global i32 0, align 4
@INIT_HCA_TPT_MW_ENABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"INIT_HCA command failed, aborting\0A\00", align 1
@MLX4_DEV_CAP_FLAG2_SYS_EQS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"QUERY_FUNC command failed, aborting.\0A\00", align 1
@MLX4_QUERY_FUNC_NUM_SYS_EQS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"QUERY_HCA command failed, disable timestamp\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"HCA frequency is 0 - timestamping is not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Failed to map internal clock. Timestamping is not supported\0A\00", align 1
@MLX4_STEERING_DMFS_A0_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"Optimized steering validation failed\0A\00", align 1
@MLX4_STEERING_DMFS_A0_DISABLE = common dso_local global i64 0, align 8
@MLX4_QP_REGION_FW = common dso_local global i64 0, align 8
@MLX4_A0_STEERING_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"DMFS high rate steer mode is: %s\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"Failed to initialize slave\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to obtain slave caps\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to map blue flame area\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"QUERY_ADAPTER command failed, aborting\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"Failed to query CONFIG_DEV parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_init_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_hca(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca %struct.mlx4_adapter, align 4
  %6 = alloca %struct.mlx4_dev_cap, align 4
  %7 = alloca %struct.mlx4_profile, align 4
  %8 = alloca %struct.mlx4_init_hca_param, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_config_dev_params, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %12)
  store %struct.mlx4_priv* %13, %struct.mlx4_priv** %4, align 8
  %14 = bitcast %struct.mlx4_dev_cap* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %16 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %314, label %18

18:                                               ; preds = %1
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %20 = call i32 @mlx4_dev_cap(%struct.mlx4_dev* %19, %struct.mlx4_dev_cap* %6)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %25 = call i32 @mlx4_err(%struct.mlx4_dev* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %2, align 4
  br label %459

27:                                               ; preds = %18
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %29 = call i32 @choose_steering_mode(%struct.mlx4_dev* %28, %struct.mlx4_dev_cap* %6)
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %31 = call i32 @choose_tunnel_offload_mode(%struct.mlx4_dev* %30, %struct.mlx4_dev_cap* %6)
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLX4_STEERING_DMFS_A0_STATIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %27
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %40 = call i64 @mlx4_is_master(%struct.mlx4_dev* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @MLX4_FUNC_CAP_DMFS_A0_STATIC, align 4
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 21
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %38, %27
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %51 = call i32 @mlx4_get_phys_port_id(%struct.mlx4_dev* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %56 = call i32 @mlx4_err(%struct.mlx4_dev* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %59 = call i64 @mlx4_is_master(%struct.mlx4_dev* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %63 = call i32 @mlx4_parav_master_pf_caps(%struct.mlx4_dev* %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = call i64 (...) @mlx4_low_memory_profile()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %69 = call i32 @mlx4_info(%struct.mlx4_dev* %68, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %70 = bitcast %struct.mlx4_profile* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 bitcast (%struct.mlx4_profile* @low_mem_profile to i8*), i64 4, i1 false)
  br label %73

71:                                               ; preds = %64
  %72 = bitcast %struct.mlx4_profile* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 bitcast (%struct.mlx4_profile* @default_profile to i8*), i64 4, i1 false)
  br label %73

73:                                               ; preds = %71, %67
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %75 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @MLX4_FS_NUM_MCG, align 4
  %82 = getelementptr inbounds %struct.mlx4_profile, %struct.mlx4_profile* %7, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %85 = call i32 @mlx4_make_profile(%struct.mlx4_dev* %84, %struct.mlx4_profile* %7, %struct.mlx4_dev_cap* %6, %struct.mlx4_init_hca_param* %8)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %2, align 4
  br label %459

92:                                               ; preds = %83
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 20
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ilog2(i32 %96)
  %98 = sub nsw i32 32, %97
  %99 = shl i32 1, %98
  %100 = sub nsw i32 %99, 1
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %102 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load i64, i64* @enable_4k_uar, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %92
  %107 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %108 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 19
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ilog2(i32 %110)
  %112 = load i8*, i8** @PAGE_SHIFT, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr i8, i8* %112, i64 %113
  %115 = load i8*, i8** @DEFAULT_UAR_PAGE_SHIFT, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 0
  store i32 %119, i32* %120, align 8
  %121 = load i8*, i8** @DEFAULT_UAR_PAGE_SHIFT, align 8
  %122 = getelementptr i8, i8* %121, i64 -12
  %123 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 3
  store i8* %122, i8** %123, align 8
  br label %134

124:                                              ; preds = %92
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %126 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 19
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ilog2(i32 %128)
  %130 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 0
  store i32 %129, i32* %130, align 8
  %131 = load i8*, i8** @PAGE_SHIFT, align 8
  %132 = getelementptr i8, i8* %131, i64 -12
  %133 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 3
  store i8* %132, i8** %133, align 8
  br label %134

134:                                              ; preds = %124, %106
  %135 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 2
  store i64 0, i64* %135, align 8
  %136 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %137 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MLX4_DEV_CAP_FLAG_MEM_WINDOW, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %134
  %144 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %145 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @MLX4_BMME_FLAG_TYPE_2_WIN, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %143, %134
  %152 = load i64, i64* @INIT_HCA_TPT_MW_ENABLE, align 8
  %153 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 2
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %143
  %155 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @mlx4_init_icm(%struct.mlx4_dev* %155, %struct.mlx4_dev_cap* %6, %struct.mlx4_init_hca_param* %8, i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %2, align 4
  br label %459

162:                                              ; preds = %154
  %163 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %164 = call i32 @mlx4_INIT_HCA(%struct.mlx4_dev* %163, %struct.mlx4_init_hca_param* %8)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %169 = call i32 @mlx4_err(%struct.mlx4_dev* %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %450

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %6, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SYS_EQS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %207

176:                                              ; preds = %170
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %178 = call i32 @mlx4_query_func(%struct.mlx4_dev* %177, %struct.mlx4_dev_cap* %6)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %183 = call i32 @mlx4_err(%struct.mlx4_dev* %182, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %439

184:                                              ; preds = %176
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @MLX4_QUERY_FUNC_NUM_SYS_EQS, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %6, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %193 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 18
  store i32 %191, i32* %194, align 8
  %195 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %6, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %198 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 17
  store i32 %196, i32* %199, align 4
  %200 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %6, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %203 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 16
  store i32 %201, i32* %204, align 8
  br label %205

205:                                              ; preds = %189, %184
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206, %170
  %208 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %209 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %269

215:                                              ; preds = %207
  %216 = call i32 @memset(%struct.mlx4_init_hca_param* %8, i32 0, i32 24)
  %217 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %218 = call i32 @mlx4_QUERY_HCA(%struct.mlx4_dev* %217, %struct.mlx4_init_hca_param* %8)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %215
  %222 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %223 = call i32 @mlx4_err(%struct.mlx4_dev* %222, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %224 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %225 = xor i32 %224, -1
  %226 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %227 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, %225
  store i32 %230, i32* %228, align 4
  br label %237

231:                                              ; preds = %215
  %232 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %235 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 15
  store i32 %233, i32* %236, align 4
  br label %237

237:                                              ; preds = %231, %221
  %238 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %239 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 15
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %253, label %243

243:                                              ; preds = %237
  %244 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %245 = xor i32 %244, -1
  %246 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %247 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, %245
  store i32 %250, i32* %248, align 4
  %251 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %252 = call i32 @mlx4_err(%struct.mlx4_dev* %251, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %268

253:                                              ; preds = %237
  %254 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %255 = call i64 @map_internal_clock(%struct.mlx4_dev* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %253
  %258 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %259 = xor i32 %258, -1
  %260 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %261 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, %259
  store i32 %264, i32* %262, align 4
  %265 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %266 = call i32 @mlx4_err(%struct.mlx4_dev* %265, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  br label %267

267:                                              ; preds = %257, %253
  br label %268

268:                                              ; preds = %267, %243
  br label %269

269:                                              ; preds = %268, %207
  %270 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %271 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @MLX4_STEERING_DMFS_A0_NOT_SUPPORTED, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %313

276:                                              ; preds = %269
  %277 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %278 = call i64 @mlx4_validate_optimized_steering(%struct.mlx4_dev* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %282 = call i32 @mlx4_warn(%struct.mlx4_dev* %281, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %276
  %284 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %285 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @MLX4_STEERING_DMFS_A0_DISABLE, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %305

290:                                              ; preds = %283
  %291 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %292 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 13
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %299 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 14
  store i32 %297, i32* %300, align 8
  %301 = load i32, i32* @MLX4_A0_STEERING_TABLE_SIZE, align 4
  %302 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %303 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 12
  store i32 %301, i32* %304, align 8
  br label %305

305:                                              ; preds = %290, %283
  %306 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %307 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %308 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @dmfs_high_rate_steering_mode_str(i64 %310)
  %312 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %306, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %311)
  br label %313

313:                                              ; preds = %305, %269
  br label %338

314:                                              ; preds = %1
  %315 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %316 = call i32 @mlx4_init_slave(%struct.mlx4_dev* %315)
  store i32 %316, i32* %11, align 4
  %317 = load i32, i32* %11, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %314
  %320 = load i32, i32* %11, align 4
  %321 = load i32, i32* @EAGAIN, align 4
  %322 = sub nsw i32 0, %321
  %323 = icmp ne i32 %320, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %319
  %325 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %326 = call i32 @mlx4_err(%struct.mlx4_dev* %325, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %327

327:                                              ; preds = %324, %319
  %328 = load i32, i32* %11, align 4
  store i32 %328, i32* %2, align 4
  br label %459

329:                                              ; preds = %314
  %330 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %331 = call i32 @mlx4_slave_cap(%struct.mlx4_dev* %330)
  store i32 %331, i32* %11, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %336 = call i32 @mlx4_err(%struct.mlx4_dev* %335, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %439

337:                                              ; preds = %329
  br label %338

338:                                              ; preds = %337, %313
  %339 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %340 = call i64 @map_bf_area(%struct.mlx4_dev* %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %338
  %343 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %344 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %343, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %345

345:                                              ; preds = %342, %338
  %346 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %347 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %345
  %350 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %351 = call i32 @mlx4_set_port_mask(%struct.mlx4_dev* %350)
  br label %352

352:                                              ; preds = %349, %345
  %353 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %354 = call i32 @mlx4_QUERY_ADAPTER(%struct.mlx4_dev* %353, %struct.mlx4_adapter* %5)
  store i32 %354, i32* %11, align 4
  %355 = load i32, i32* %11, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %359 = call i32 @mlx4_err(%struct.mlx4_dev* %358, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %404

360:                                              ; preds = %352
  %361 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %362 = call i32 @mlx4_config_dev_retrieval(%struct.mlx4_dev* %361, %struct.mlx4_config_dev_params* %10)
  store i32 %362, i32* %11, align 4
  %363 = load i32, i32* %11, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %360
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* @ENOTSUPP, align 4
  %368 = sub nsw i32 0, %367
  %369 = icmp ne i32 %366, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %365
  %371 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %372 = call i32 @mlx4_err(%struct.mlx4_dev* %371, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %392

373:                                              ; preds = %365, %360
  %374 = load i32, i32* %11, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %391, label %376

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.mlx4_config_dev_params, %struct.mlx4_config_dev_params* %10, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %380 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 11
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 1
  store i32 %378, i32* %383, align 4
  %384 = getelementptr inbounds %struct.mlx4_config_dev_params, %struct.mlx4_config_dev_params* %10, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %387 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 11
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 2
  store i32 %385, i32* %390, align 4
  br label %391

391:                                              ; preds = %376, %373
  br label %392

392:                                              ; preds = %391, %370
  %393 = getelementptr inbounds %struct.mlx4_adapter, %struct.mlx4_adapter* %5, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %396 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 0
  store i32 %394, i32* %397, align 4
  %398 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %399 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = getelementptr inbounds %struct.mlx4_adapter, %struct.mlx4_adapter* %5, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @memcpy(i32 %400, i32 %402, i32 4)
  store i32 0, i32* %2, align 4
  br label %459

404:                                              ; preds = %357
  %405 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %406 = call i32 @unmap_internal_clock(%struct.mlx4_dev* %405)
  %407 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %408 = call i32 @unmap_bf_area(%struct.mlx4_dev* %407)
  %409 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %410 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %438

412:                                              ; preds = %404
  %413 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %414 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 10
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @kfree(i32 %416)
  %418 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %419 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 9
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @kfree(i32 %421)
  %423 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %424 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 8
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @kfree(i32 %426)
  %428 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %429 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 7
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @kfree(i32 %431)
  %433 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %434 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 6
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @kfree(i32 %436)
  br label %438

438:                                              ; preds = %412, %404
  br label %439

439:                                              ; preds = %438, %334, %181
  %440 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %441 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %439
  %444 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %445 = call i32 @mlx4_slave_exit(%struct.mlx4_dev* %444)
  br label %449

446:                                              ; preds = %439
  %447 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %448 = call i32 @mlx4_CLOSE_HCA(%struct.mlx4_dev* %447, i32 0)
  br label %449

449:                                              ; preds = %446, %443
  br label %450

450:                                              ; preds = %449, %167
  %451 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %452 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %457, label %454

454:                                              ; preds = %450
  %455 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %456 = call i32 @mlx4_free_icms(%struct.mlx4_dev* %455)
  br label %457

457:                                              ; preds = %454, %450
  %458 = load i32, i32* %11, align 4
  store i32 %458, i32* %2, align 4
  br label %459

459:                                              ; preds = %457, %392, %327, %160, %89, %23
  %460 = load i32, i32* %2, align 4
  ret i32 %460
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dev_cap(%struct.mlx4_dev*, %struct.mlx4_dev_cap*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @choose_steering_mode(%struct.mlx4_dev*, %struct.mlx4_dev_cap*) #1

declare dso_local i32 @choose_tunnel_offload_mode(%struct.mlx4_dev*, %struct.mlx4_dev_cap*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_phys_port_id(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_parav_master_pf_caps(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_low_memory_profile(...) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_make_profile(%struct.mlx4_dev*, %struct.mlx4_profile*, %struct.mlx4_dev_cap*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx4_init_icm(%struct.mlx4_dev*, %struct.mlx4_dev_cap*, %struct.mlx4_init_hca_param*, i32) #1

declare dso_local i32 @mlx4_INIT_HCA(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_query_func(%struct.mlx4_dev*, %struct.mlx4_dev_cap*) #1

declare dso_local i32 @memset(%struct.mlx4_init_hca_param*, i32, i32) #1

declare dso_local i32 @mlx4_QUERY_HCA(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i64 @map_internal_clock(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_validate_optimized_steering(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @dmfs_high_rate_steering_mode_str(i64) #1

declare dso_local i32 @mlx4_init_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_cap(%struct.mlx4_dev*) #1

declare dso_local i64 @map_bf_area(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_set_port_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_QUERY_ADAPTER(%struct.mlx4_dev*, %struct.mlx4_adapter*) #1

declare dso_local i32 @mlx4_config_dev_retrieval(%struct.mlx4_dev*, %struct.mlx4_config_dev_params*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @unmap_internal_clock(%struct.mlx4_dev*) #1

declare dso_local i32 @unmap_bf_area(%struct.mlx4_dev*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mlx4_slave_exit(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_CLOSE_HCA(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_free_icms(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
