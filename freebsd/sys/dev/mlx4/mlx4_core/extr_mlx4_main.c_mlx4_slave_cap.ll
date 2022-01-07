; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_slave_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_slave_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32*, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.mlx4_dev_cap = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mlx4_func_cap = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mlx4_init_hca_param = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"QUERY_HCA command failed, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unknown hca global capabilities\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@mlx4_log_num_mgm_entry_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"QUERY_DEV_CAP command failed, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"QUERY_FW command failed: could not get FW version\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"HCA minimum page size:%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"HCA minimum page size of %d bigger than kernel PAGE_SIZE of %ld, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [70 x i8] c"Invalid configuration: uar page size is larger than system page size\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"QUERY_FUNC_CAP general command failed, aborting (%d)\0A\00", align 1
@PF_CONTEXT_BEHAVIOUR_MASK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"Unknown pf context behaviour %x known flags %x\0A\00", align 1
@MLX4_NUM_PDS = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [52 x i8] c"HCA has %d ports, but we only support %d, aborting\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [63 x i8] c"QUERY_FUNC_CAP port command failed for port %d, aborting (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [90 x i8] c"HCA reported UAR region size of 0x%x bigger than PCI resource 2 size of 0x%llx, aborting\0A\00", align 1
@MLX4_DEV_CAP_64B_EQE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_64B_CQE_ENABLED = common dso_local global i32 0, align 4
@MLX4_USER_DEV_CAP_LARGE_CQE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_EQE_STRIDE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_CQE_STRIDE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"Timestamping is not supported in slave mode\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"RSS support for IP fragments is %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@MLX4_QUERY_FUNC_FLAGS_BF_RES_QP = common dso_local global i32 0, align 4
@MLX4_RESERVE_ETH_BF_QP = common dso_local global i32 0, align 4
@MLX4_QUERY_FUNC_FLAGS_A0_RES_QP = common dso_local global i32 0, align 4
@MLX4_RESERVE_A0_QP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_slave_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_slave_cap(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev_cap, align 8
  %7 = alloca %struct.mlx4_func_cap, align 8
  %8 = alloca %struct.mlx4_init_hca_param, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %10 = call i32 @memset(%struct.mlx4_init_hca_param* %8, i32 0, i32 144)
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %12 = call i32 @mlx4_QUERY_HCA(%struct.mlx4_dev* %11, %struct.mlx4_init_hca_param* %8)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %17 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %649

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 29
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %25 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENOSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %649

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @mlx4_log_num_mgm_entry_size, align 4
  %31 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 27
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 33
  store i32 %32, i32* %35, align 8
  %36 = bitcast %struct.mlx4_dev_cap* %6 to %struct.mlx4_init_hca_param*
  %37 = call i32 @memset(%struct.mlx4_init_hca_param* %36, i32 0, i32 144)
  %38 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %45 = bitcast %struct.mlx4_dev_cap* %6 to %struct.mlx4_init_hca_param*
  %46 = call i32 @mlx4_dev_cap(%struct.mlx4_dev* %44, %struct.mlx4_init_hca_param* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %28
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %51 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %649

53:                                               ; preds = %28
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %55 = call i32 @mlx4_QUERY_FW(%struct.mlx4_dev* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %60 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, -1
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %61
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %75, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %76, i64 %78)
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %649

82:                                               ; preds = %61
  %83 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 12
  %86 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %87 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PAGE_SHIFT, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %95 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %94, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %649

98:                                               ; preds = %82
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %100 = bitcast %struct.mlx4_dev_cap* %6 to %struct.mlx4_init_hca_param*
  %101 = call i32 @mlx4_set_num_reserved_uars(%struct.mlx4_dev* %99, %struct.mlx4_init_hca_param* %100)
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %104 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = bitcast %struct.mlx4_func_cap* %7 to %struct.mlx4_init_hca_param*
  %107 = call i32 @memset(%struct.mlx4_init_hca_param* %106, i32 0, i32 144)
  %108 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %109 = bitcast %struct.mlx4_func_cap* %7 to %struct.mlx4_init_hca_param*
  %110 = call i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev* %108, i32 0, %struct.mlx4_init_hca_param* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %98
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %114, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %649

118:                                              ; preds = %98
  %119 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PF_CONTEXT_BEHAVIOUR_MASK, align 8
  %122 = or i64 %120, %121
  %123 = load i64, i64* @PF_CONTEXT_BEHAVIOUR_MASK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %118
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %127 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PF_CONTEXT_BEHAVIOUR_MASK, align 8
  %130 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %126, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i64 %128, i64 %129)
  %131 = load i32, i32* @ENOSYS, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %649

133:                                              ; preds = %118
  %134 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %137 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  store i64 %135, i64* %138, align 8
  %139 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 26
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %142 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  %144 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 25
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %147 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  store i32 %145, i32* %148, align 4
  %149 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 24
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %152 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 8
  %154 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 23
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %157 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  %159 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 22
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = shl i32 1, %165
  %167 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %168 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  store i32 %166, i32* %169, align 8
  %170 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 1, %171
  %173 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %174 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 5
  store i32 %172, i32* %175, align 4
  %176 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = shl i32 1, %177
  %179 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %180 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 6
  store i32 %178, i32* %181, align 8
  %182 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 1, %183
  %185 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %186 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 7
  store i32 %184, i32* %187, align 4
  %188 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 21
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %191 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 32
  store i32 %189, i32* %192, align 4
  %193 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 20
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %196 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 31
  store i32 %194, i32* %197, align 8
  %198 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 19
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %201 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 30
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* @MLX4_NUM_PDS, align 4
  %204 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %205 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 29
  store i32 %203, i32* %206, align 8
  %207 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %208 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 28
  store i64 0, i64* %209, align 8
  %210 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %211 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 27
  store i64 0, i64* %212, align 8
  %213 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %214 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @MLX4_MAX_PORTS, align 8
  %218 = icmp ugt i64 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %133
  %220 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %222 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @MLX4_MAX_PORTS, align 8
  %226 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %220, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i64 %224, i64 %225)
  %227 = load i32, i32* @ENODEV, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %2, align 4
  br label %649

229:                                              ; preds = %133
  %230 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %231 = call i32 @mlx4_replace_zero_macs(%struct.mlx4_dev* %230)
  %232 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %233 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = load i32, i32* @GFP_KERNEL, align 4
  %238 = call i8* @kcalloc(i32 %236, i32 4, i32 %237)
  %239 = bitcast i8* %238 to i32*
  %240 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %241 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 17
  store i32* %239, i32** %242, align 8
  %243 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %244 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* @GFP_KERNEL, align 4
  %249 = call i8* @kcalloc(i32 %247, i32 4, i32 %248)
  %250 = bitcast i8* %249 to i32*
  %251 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %252 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 16
  store i32* %250, i32** %253, align 8
  %254 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %255 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = load i32, i32* @GFP_KERNEL, align 4
  %260 = call i8* @kcalloc(i32 %258, i32 4, i32 %259)
  %261 = bitcast i8* %260 to i32*
  %262 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %263 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 15
  store i32* %261, i32** %264, align 8
  %265 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %266 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = load i32, i32* @GFP_KERNEL, align 4
  %271 = call i8* @kcalloc(i32 %269, i32 4, i32 %270)
  %272 = bitcast i8* %271 to i32*
  %273 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %274 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 14
  store i32* %272, i32** %275, align 8
  %276 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %277 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = trunc i64 %279 to i32
  %281 = load i32, i32* @GFP_KERNEL, align 4
  %282 = call i8* @kcalloc(i32 %280, i32 4, i32 %281)
  %283 = bitcast i8* %282 to i32*
  %284 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %285 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 13
  store i32* %283, i32** %286, align 8
  %287 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %288 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 16
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %316

292:                                              ; preds = %229
  %293 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %294 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 15
  %296 = load i32*, i32** %295, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %316

298:                                              ; preds = %292
  %299 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %300 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 14
  %302 = load i32*, i32** %301, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %316

304:                                              ; preds = %298
  %305 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %306 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 13
  %308 = load i32*, i32** %307, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %316

310:                                              ; preds = %304
  %311 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %312 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 17
  %314 = load i32*, i32** %313, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %319, label %316

316:                                              ; preds = %310, %304, %298, %292, %229
  %317 = load i32, i32* @ENOMEM, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %4, align 4
  br label %607

319:                                              ; preds = %310
  store i32 1, i32* %9, align 4
  br label %320

320:                                              ; preds = %436, %319
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %324 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = icmp ule i64 %322, %326
  br i1 %327, label %328, label %439

328:                                              ; preds = %320
  %329 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %330 = load i32, i32* %9, align 4
  %331 = bitcast %struct.mlx4_func_cap* %7 to %struct.mlx4_init_hca_param*
  %332 = call i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev* %329, i32 %330, %struct.mlx4_init_hca_param* %331)
  store i32 %332, i32* %4, align 4
  %333 = load i32, i32* %4, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %328
  %336 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* %4, align 4
  %339 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %336, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i32 %337, i32 %338)
  br label %607

340:                                              ; preds = %328
  %341 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 18
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %344 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 17
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %346, i64 %349
  store i32 %342, i32* %350, align 4
  %351 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 17
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %354 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 16
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %9, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  store i32 %352, i32* %360, align 4
  %361 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 16
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %364 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 15
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sub nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %366, i64 %369
  store i32 %362, i32* %370, align 4
  %371 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 15
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %374 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 14
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sub nsw i32 %377, 1
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  store i32 %372, i32* %380, align 4
  %381 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 14
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %384 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 13
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %9, align 4
  %388 = sub nsw i32 %387, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %386, i64 %389
  store i32 %382, i32* %390, align 4
  %391 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %392 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 25
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %9, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %400 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 26
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %9, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  store i32 %398, i32* %405, align 4
  %406 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 13
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %409 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 24
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %9, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  store i32 %407, i32* %414, align 4
  %415 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %416 = load i32, i32* %9, align 4
  %417 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %418 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 23
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %9, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %425 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 22
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %9, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = call i32 @mlx4_get_slave_pkey_gid_tbl_len(%struct.mlx4_dev* %415, i32 %416, i32* %423, i32* %430)
  store i32 %431, i32* %4, align 4
  %432 = load i32, i32* %4, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %340
  br label %607

435:                                              ; preds = %340
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %9, align 4
  br label %320

439:                                              ; preds = %320
  %440 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %441 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %445 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 8
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %449 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 9
  %451 = load i32, i32* %450, align 4
  %452 = sub nsw i32 %447, %451
  %453 = mul nsw i32 %443, %452
  %454 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %455 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %454, i32 0, i32 2
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @pci_resource_len(i32 %458, i32 2)
  %460 = icmp sgt i32 %453, %459
  br i1 %460, label %461, label %482

461:                                              ; preds = %439
  %462 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %463 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %464 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %468 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 8
  %470 = load i32, i32* %469, align 8
  %471 = mul nsw i32 %466, %470
  %472 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %473 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %472, i32 0, i32 2
  %474 = load %struct.TYPE_5__*, %struct.TYPE_5__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @pci_resource_len(i32 %476, i32 2)
  %478 = sext i32 %477 to i64
  %479 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %462, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.11, i64 0, i64 0), i32 %471, i64 %478)
  %480 = load i32, i32* @ENOMEM, align 4
  %481 = sub nsw i32 0, %480
  store i32 %481, i32* %4, align 4
  br label %607

482:                                              ; preds = %439
  %483 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 8
  %484 = load i32, i32* %483, align 8
  %485 = load i32, i32* @MLX4_DEV_CAP_64B_EQE_ENABLED, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %495

488:                                              ; preds = %482
  %489 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %490 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 10
  store i32 64, i32* %491, align 8
  %492 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %493 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 11
  store i32 1, i32* %494, align 4
  br label %502

495:                                              ; preds = %482
  %496 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %497 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i32 0, i32 10
  store i32 32, i32* %498, align 8
  %499 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %500 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 11
  store i32 0, i32* %501, align 4
  br label %502

502:                                              ; preds = %495, %488
  %503 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 8
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* @MLX4_DEV_CAP_64B_CQE_ENABLED, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %518

508:                                              ; preds = %502
  %509 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %510 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i32 0, i32 12
  store i32 64, i32* %511, align 8
  %512 = load i32, i32* @MLX4_USER_DEV_CAP_LARGE_CQE, align 4
  %513 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %514 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %514, i32 0, i32 21
  %516 = load i32, i32* %515, align 4
  %517 = or i32 %516, %512
  store i32 %517, i32* %515, align 4
  br label %522

518:                                              ; preds = %502
  %519 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %520 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %520, i32 0, i32 12
  store i32 32, i32* %521, align 8
  br label %522

522:                                              ; preds = %518, %508
  %523 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 8
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @MLX4_DEV_CAP_EQE_STRIDE_ENABLED, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %537

528:                                              ; preds = %522
  %529 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 9
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %532 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 10
  store i32 %530, i32* %533, align 8
  %534 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %535 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %535, i32 0, i32 11
  store i32 0, i32* %536, align 4
  br label %537

537:                                              ; preds = %528, %522
  %538 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 8
  %539 = load i32, i32* %538, align 8
  %540 = load i32, i32* @MLX4_DEV_CAP_CQE_STRIDE_ENABLED, align 4
  %541 = and i32 %539, %540
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %555

543:                                              ; preds = %537
  %544 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 10
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %547 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %547, i32 0, i32 12
  store i32 %545, i32* %548, align 8
  %549 = load i32, i32* @MLX4_USER_DEV_CAP_LARGE_CQE, align 4
  %550 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %551 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %551, i32 0, i32 21
  %553 = load i32, i32* %552, align 4
  %554 = or i32 %553, %549
  store i32 %554, i32* %552, align 4
  br label %555

555:                                              ; preds = %543, %537
  %556 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %557 = xor i32 %556, -1
  %558 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %559 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %559, i32 0, i32 20
  %561 = load i32, i32* %560, align 8
  %562 = and i32 %561, %557
  store i32 %562, i32* %560, align 8
  %563 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %564 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %563, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %565 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %566 = bitcast %struct.mlx4_dev_cap* %6 to %struct.mlx4_init_hca_param*
  %567 = call i32 @slave_adjust_steering_mode(%struct.mlx4_dev* %565, %struct.mlx4_init_hca_param* %566, %struct.mlx4_init_hca_param* %8)
  %568 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %569 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 12
  %570 = load i64, i64* %569, align 8
  %571 = icmp ne i64 %570, 0
  %572 = zext i1 %571 to i64
  %573 = select i1 %571, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  %574 = call i32 @mlx4_dbg(%struct.mlx4_dev* %568, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i8* %573)
  %575 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 11
  %576 = load i32, i32* %575, align 4
  %577 = load i32, i32* @MLX4_QUERY_FUNC_FLAGS_BF_RES_QP, align 4
  %578 = and i32 %576, %577
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %593

580:                                              ; preds = %555
  %581 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %582 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %582, i32 0, i32 19
  %584 = load i64, i64* %583, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %593

586:                                              ; preds = %580
  %587 = load i32, i32* @MLX4_RESERVE_ETH_BF_QP, align 4
  %588 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %589 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %589, i32 0, i32 18
  %591 = load i32, i32* %590, align 8
  %592 = or i32 %591, %587
  store i32 %592, i32* %590, align 8
  br label %593

593:                                              ; preds = %586, %580, %555
  %594 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 11
  %595 = load i32, i32* %594, align 4
  %596 = load i32, i32* @MLX4_QUERY_FUNC_FLAGS_A0_RES_QP, align 4
  %597 = and i32 %595, %596
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %606

599:                                              ; preds = %593
  %600 = load i32, i32* @MLX4_RESERVE_A0_QP, align 4
  %601 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %602 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %601, i32 0, i32 1
  %603 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %602, i32 0, i32 18
  %604 = load i32, i32* %603, align 8
  %605 = or i32 %604, %600
  store i32 %605, i32* %603, align 8
  br label %606

606:                                              ; preds = %599, %593
  store i32 0, i32* %2, align 4
  br label %649

607:                                              ; preds = %461, %434, %335, %316
  %608 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %609 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %608, i32 0, i32 1
  %610 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %609, i32 0, i32 17
  %611 = load i32*, i32** %610, align 8
  %612 = call i32 @kfree(i32* %611)
  %613 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %614 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %613, i32 0, i32 1
  %615 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %614, i32 0, i32 16
  %616 = load i32*, i32** %615, align 8
  %617 = call i32 @kfree(i32* %616)
  %618 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %619 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %619, i32 0, i32 15
  %621 = load i32*, i32** %620, align 8
  %622 = call i32 @kfree(i32* %621)
  %623 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %624 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %624, i32 0, i32 14
  %626 = load i32*, i32** %625, align 8
  %627 = call i32 @kfree(i32* %626)
  %628 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %629 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %629, i32 0, i32 13
  %631 = load i32*, i32** %630, align 8
  %632 = call i32 @kfree(i32* %631)
  %633 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %634 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %634, i32 0, i32 17
  store i32* null, i32** %635, align 8
  %636 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %637 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %637, i32 0, i32 16
  store i32* null, i32** %638, align 8
  %639 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %640 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %640, i32 0, i32 15
  store i32* null, i32** %641, align 8
  %642 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %643 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %643, i32 0, i32 14
  store i32* null, i32** %644, align 8
  %645 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %646 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %646, i32 0, i32 13
  store i32* null, i32** %647, align 8
  %648 = load i32, i32* %4, align 4
  store i32 %648, i32* %2, align 4
  br label %649

649:                                              ; preds = %607, %606, %219, %125, %113, %93, %74, %49, %23, %15
  %650 = load i32, i32* %2, align 4
  ret i32 %650
}

declare dso_local i32 @memset(%struct.mlx4_init_hca_param*, i32, i32) #1

declare dso_local i32 @mlx4_QUERY_HCA(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_dev_cap(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_QUERY_FW(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_set_num_reserved_uars(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev*, i32, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_replace_zero_macs(%struct.mlx4_dev*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlx4_get_slave_pkey_gid_tbl_len(%struct.mlx4_dev*, i32, i32*, i32*) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @slave_adjust_steering_mode(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
