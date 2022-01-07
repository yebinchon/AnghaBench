; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_HCA.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_HCA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_init_hca_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32* }

@mlx4_QUERY_HCA.a0_dmfs_query_hw_steering = internal constant [4 x i32] [i32 131, i32 129, i32 128, i32 130], align 16
@MLX4_CMD_QUERY_HCA = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@INIT_HCA_QPC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_QP_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_SRQC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_SRQ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_CQC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_CQ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_ALTC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_AUXC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_EQC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_EQ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_NUM_SYS_EQS_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_RDMARC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_RD_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FLAGS_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@INIT_HCA_UC_STEERING_OFFSET = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_B0 = common dso_local global i64 0, align 8
@MLX4_STEERING_MODE_A0 = common dso_local global i64 0, align 8
@INIT_HCA_FS_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FS_LOG_TABLE_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FS_A0_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_MC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MC_HASH_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MC_TABLE_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_EQE_CQE_OFFSETS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_64B_EQE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_64B_CQE_ENABLED = common dso_local global i32 0, align 4
@INIT_HCA_EQE_CQE_STRIDE_OFFSET = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_EQE_STRIDE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_CQE_STRIDE_ENABLED = common dso_local global i32 0, align 4
@MLX4_CQE_SIZE_MASK_STRIDE = common dso_local global i32 0, align 4
@MLX4_EQE_SIZE_MASK_STRIDE = common dso_local global i32 0, align 4
@INIT_HCA_DMPT_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_TPT_MW_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MPT_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_MTT_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_CMPT_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_UAR_PAGE_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_UAR_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_CACHELINE_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_HCA_CORE_CLOCK_OFFSET = common dso_local global i32 0, align 4
@QUERY_HCA_GLOBAL_CAPS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_HCA(%struct.mlx4_dev* %0, %struct.mlx4_init_hca_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_init_hca_param*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_init_hca_param* %1, %struct.mlx4_init_hca_param** %5, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %12 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %11)
  store %struct.mlx4_cmd_mailbox* %12, %struct.mlx4_cmd_mailbox** %6, align 8
  %13 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %14 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %17)
  store i32 %18, i32* %3, align 4
  br label %342

19:                                               ; preds = %2
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MLX4_CMD_QUERY_HCA, align 4
  %28 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %30 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %23, i32 0, i32 %26, i32 0, i32 0, i32 %27, i32 %28, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  br label %337

38:                                               ; preds = %19
  %39 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @MLX4_GET(i32 %41, i32* %42, i32 4)
  %44 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %45 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @MLX4_GET(i32 %46, i32* %47, i32 12)
  %49 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %50 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @INIT_HCA_QPC_BASE_OFFSET, align 4
  %54 = call i32 @MLX4_GET(i32 %51, i32* %52, i32 %53)
  %55 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %56 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @INIT_HCA_LOG_QP_OFFSET, align 4
  %60 = call i32 @MLX4_GET(i32 %57, i32* %58, i32 %59)
  %61 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %62 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @INIT_HCA_SRQC_BASE_OFFSET, align 4
  %66 = call i32 @MLX4_GET(i32 %63, i32* %64, i32 %65)
  %67 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %68 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @INIT_HCA_LOG_SRQ_OFFSET, align 4
  %72 = call i32 @MLX4_GET(i32 %69, i32* %70, i32 %71)
  %73 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %74 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @INIT_HCA_CQC_BASE_OFFSET, align 4
  %78 = call i32 @MLX4_GET(i32 %75, i32* %76, i32 %77)
  %79 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %80 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @INIT_HCA_LOG_CQ_OFFSET, align 4
  %84 = call i32 @MLX4_GET(i32 %81, i32* %82, i32 %83)
  %85 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %86 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* @INIT_HCA_ALTC_BASE_OFFSET, align 4
  %90 = call i32 @MLX4_GET(i32 %87, i32* %88, i32 %89)
  %91 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %92 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @INIT_HCA_AUXC_BASE_OFFSET, align 4
  %96 = call i32 @MLX4_GET(i32 %93, i32* %94, i32 %95)
  %97 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %98 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @INIT_HCA_EQC_BASE_OFFSET, align 4
  %102 = call i32 @MLX4_GET(i32 %99, i32* %100, i32 %101)
  %103 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %104 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @INIT_HCA_LOG_EQ_OFFSET, align 4
  %108 = call i32 @MLX4_GET(i32 %105, i32* %106, i32 %107)
  %109 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %110 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %109, i32 0, i32 12
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* @INIT_HCA_NUM_SYS_EQS_OFFSET, align 4
  %114 = call i32 @MLX4_GET(i32 %111, i32* %112, i32 %113)
  %115 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %116 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* @INIT_HCA_RDMARC_BASE_OFFSET, align 4
  %120 = call i32 @MLX4_GET(i32 %117, i32* %118, i32 %119)
  %121 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %122 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %121, i32 0, i32 14
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* @INIT_HCA_LOG_RD_OFFSET, align 4
  %126 = call i32 @MLX4_GET(i32 %123, i32* %124, i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* @INIT_HCA_FLAGS_OFFSET, align 4
  %130 = call i32 @MLX4_GET(i32 %127, i32* %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN, align 4
  %133 = shl i32 1, %132
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %38
  %137 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %138 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %139 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %138, i32 0, i32 15
  store i64 %137, i64* %139, align 8
  br label %157

140:                                              ; preds = %38
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* @INIT_HCA_UC_STEERING_OFFSET, align 4
  %144 = call i32 @MLX4_GET(i32 %141, i32* %142, i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = and i32 %145, 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load i64, i64* @MLX4_STEERING_MODE_B0, align 8
  %150 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %151 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %150, i32 0, i32 15
  store i64 %149, i64* %151, align 8
  br label %156

152:                                              ; preds = %140
  %153 = load i64, i64* @MLX4_STEERING_MODE_A0, align 8
  %154 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %155 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %154, i32 0, i32 15
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %136
  %158 = load i32, i32* %8, align 4
  %159 = and i32 %158, 8192
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %163 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %162, i32 0, i32 16
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %157
  %165 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %166 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %165, i32 0, i32 15
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %164
  %171 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %172 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %171, i32 0, i32 17
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* @INIT_HCA_FS_BASE_OFFSET, align 4
  %176 = call i32 @MLX4_GET(i32 %173, i32* %174, i32 %175)
  %177 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %178 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %177, i32 0, i32 18
  %179 = load i32, i32* %178, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* @INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET, align 4
  %182 = call i32 @MLX4_GET(i32 %179, i32* %180, i32 %181)
  %183 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %184 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %183, i32 0, i32 19
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* @INIT_HCA_FS_LOG_TABLE_SZ_OFFSET, align 4
  %188 = call i32 @MLX4_GET(i32 %185, i32* %186, i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = load i32, i32* @INIT_HCA_FS_A0_OFFSET, align 4
  %192 = call i32 @MLX4_GET(i32 %189, i32* %190, i32 %191)
  %193 = load i32, i32* %10, align 4
  %194 = ashr i32 %193, 6
  %195 = and i32 %194, 3
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* @mlx4_QUERY_HCA.a0_dmfs_query_hw_steering, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %200 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %199, i32 0, i32 20
  store i32 %198, i32* %200, align 8
  br label %226

201:                                              ; preds = %164
  %202 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %203 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %202, i32 0, i32 17
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* @INIT_HCA_MC_BASE_OFFSET, align 4
  %207 = call i32 @MLX4_GET(i32 %204, i32* %205, i32 %206)
  %208 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %209 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %208, i32 0, i32 18
  %210 = load i32, i32* %209, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* @INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET, align 4
  %213 = call i32 @MLX4_GET(i32 %210, i32* %211, i32 %212)
  %214 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %215 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %214, i32 0, i32 21
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* @INIT_HCA_LOG_MC_HASH_SZ_OFFSET, align 4
  %219 = call i32 @MLX4_GET(i32 %216, i32* %217, i32 %218)
  %220 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %221 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %220, i32 0, i32 19
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %7, align 8
  %224 = load i32, i32* @INIT_HCA_LOG_MC_TABLE_SZ_OFFSET, align 4
  %225 = call i32 @MLX4_GET(i32 %222, i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %201, %170
  %227 = load i32, i32* %10, align 4
  %228 = load i32*, i32** %7, align 8
  %229 = load i32, i32* @INIT_HCA_EQE_CQE_OFFSETS, align 4
  %230 = call i32 @MLX4_GET(i32 %227, i32* %228, i32 %229)
  %231 = load i32, i32* %10, align 4
  %232 = and i32 %231, 32
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load i32, i32* @MLX4_DEV_CAP_64B_EQE_ENABLED, align 4
  %236 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %237 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %236, i32 0, i32 32
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %234, %226
  %241 = load i32, i32* %10, align 4
  %242 = and i32 %241, 64
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load i32, i32* @MLX4_DEV_CAP_64B_CQE_ENABLED, align 4
  %246 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %247 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %246, i32 0, i32 32
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %240
  %251 = load i32, i32* %10, align 4
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* @INIT_HCA_EQE_CQE_STRIDE_OFFSET, align 4
  %254 = call i32 @MLX4_GET(i32 %251, i32* %252, i32 %253)
  %255 = load i32, i32* %10, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %283

257:                                              ; preds = %250
  %258 = load i32, i32* @MLX4_DEV_CAP_EQE_STRIDE_ENABLED, align 4
  %259 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %260 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %259, i32 0, i32 32
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load i32, i32* @MLX4_DEV_CAP_CQE_STRIDE_ENABLED, align 4
  %264 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %265 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %264, i32 0, i32 32
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* @MLX4_CQE_SIZE_MASK_STRIDE, align 4
  %270 = and i32 %268, %269
  %271 = add nsw i32 %270, 5
  %272 = shl i32 1, %271
  %273 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %274 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %273, i32 0, i32 22
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* @MLX4_EQE_SIZE_MASK_STRIDE, align 4
  %277 = and i32 %275, %276
  %278 = ashr i32 %277, 4
  %279 = add nsw i32 %278, 5
  %280 = shl i32 1, %279
  %281 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %282 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %281, i32 0, i32 23
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %257, %250
  %284 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %285 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %284, i32 0, i32 24
  %286 = load i32, i32* %285, align 8
  %287 = load i32*, i32** %7, align 8
  %288 = load i32, i32* @INIT_HCA_DMPT_BASE_OFFSET, align 4
  %289 = call i32 @MLX4_GET(i32 %286, i32* %287, i32 %288)
  %290 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %291 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %290, i32 0, i32 25
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %7, align 8
  %294 = load i32, i32* @INIT_HCA_TPT_MW_OFFSET, align 4
  %295 = call i32 @MLX4_GET(i32 %292, i32* %293, i32 %294)
  %296 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %297 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %296, i32 0, i32 26
  %298 = load i32, i32* %297, align 8
  %299 = load i32*, i32** %7, align 8
  %300 = load i32, i32* @INIT_HCA_LOG_MPT_SZ_OFFSET, align 4
  %301 = call i32 @MLX4_GET(i32 %298, i32* %299, i32 %300)
  %302 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %303 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %302, i32 0, i32 27
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %7, align 8
  %306 = load i32, i32* @INIT_HCA_MTT_BASE_OFFSET, align 4
  %307 = call i32 @MLX4_GET(i32 %304, i32* %305, i32 %306)
  %308 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %309 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %308, i32 0, i32 28
  %310 = load i32, i32* %309, align 8
  %311 = load i32*, i32** %7, align 8
  %312 = load i32, i32* @INIT_HCA_CMPT_BASE_OFFSET, align 4
  %313 = call i32 @MLX4_GET(i32 %310, i32* %311, i32 %312)
  %314 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %315 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %314, i32 0, i32 29
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %7, align 8
  %318 = load i32, i32* @INIT_HCA_UAR_PAGE_SZ_OFFSET, align 4
  %319 = call i32 @MLX4_GET(i32 %316, i32* %317, i32 %318)
  %320 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %321 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %320, i32 0, i32 30
  %322 = load i32, i32* %321, align 8
  %323 = load i32*, i32** %7, align 8
  %324 = load i32, i32* @INIT_HCA_LOG_UAR_SZ_OFFSET, align 4
  %325 = call i32 @MLX4_GET(i32 %322, i32* %323, i32 %324)
  %326 = load i32, i32* %10, align 4
  %327 = load i32*, i32** %7, align 8
  %328 = load i32, i32* @INIT_HCA_CACHELINE_SZ_OFFSET, align 4
  %329 = call i32 @MLX4_GET(i32 %326, i32* %327, i32 %328)
  %330 = load i32, i32* %10, align 4
  %331 = and i32 %330, 2
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %283
  %334 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %335 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %334, i32 0, i32 31
  store i32 1, i32* %335, align 4
  br label %336

336:                                              ; preds = %333, %283
  br label %337

337:                                              ; preds = %336, %37
  %338 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %339 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %340 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %338, %struct.mlx4_cmd_mailbox* %339)
  %341 = load i32, i32* %9, align 4
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %337, %16
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
