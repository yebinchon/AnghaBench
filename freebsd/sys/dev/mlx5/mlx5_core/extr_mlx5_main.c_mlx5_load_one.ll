; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_load_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_load_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_priv = type { i32 }

@MLX5_INTERFACE_STATE_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"interface is up, NOP\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"firmware version: %d.%d.%d\0A\00", align 1
@MLX5_DEVICE_STATE_UP = common dso_local global i32 0, align 4
@FW_PRE_INIT_TIMEOUT_MILI = common dso_local global i32 0, align 4
@FW_INIT_WARN_MESSAGE_INTERVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Firmware over %d MS in pre-initializing state, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed initializing command interface, aborting\0A\00", align 1
@FW_INIT_TIMEOUT_MILI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"Firmware over %d MS in initializing state, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"enable hca failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"failed to set issi\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"mlx5_pagealloc_start failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to allocate boot pages\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"set_hca_ctrl failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"handle_hca_cap failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"handle_hca_cap_atomic failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"failed to allocate init pages\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"init hca failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"sw objs init failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"enable msix failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Failed allocating uar, aborting\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Failed to start pages and async EQs\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Failed to alloc completion EQs\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Failed to map blue flame area\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"flow steering init %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"mpfs init failed %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"fpga device start failed %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"mlx5_register_device failed %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"tear_down_hca failed, skip cleanup\0A\00", align 1
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_priv*, i32)* @mlx5_load_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_load_one(%struct.mlx5_core_dev* %0, %struct.mlx5_priv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_priv* %1, %struct.mlx5_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @MLX5_INTERFACE_STATE_UP, align 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %19 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %230

20:                                               ; preds = %3
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %23 = call i32 @fw_rev_maj(%struct.mlx5_core_dev* %22)
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %25 = call i32 @fw_rev_min(%struct.mlx5_core_dev* %24)
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %27 = call i32 @fw_rev_sub(%struct.mlx5_core_dev* %26)
  %28 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %25, i32 %27)
  %29 = load i32, i32* @MLX5_DEVICE_STATE_UP, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %33 = load i32, i32* @FW_PRE_INIT_TIMEOUT_MILI, align 4
  %34 = load i32, i32* @FW_INIT_WARN_MESSAGE_INTERVAL, align 4
  %35 = call i32 @wait_fw_init(%struct.mlx5_core_dev* %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* @FW_PRE_INIT_TIMEOUT_MILI, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %289

45:                                               ; preds = %20
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %47 = call i32 @mlx5_cmd_init(%struct.mlx5_core_dev* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %52 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %289

53:                                               ; preds = %45
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %55 = load i32, i32* @FW_INIT_TIMEOUT_MILI, align 4
  %56 = call i32 @wait_fw_init(%struct.mlx5_core_dev* %54, i32 %55, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %61 = load i32, i32* @FW_INIT_TIMEOUT_MILI, align 4
  %62 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %286

63:                                               ; preds = %53
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %65 = call i32 @mlx5_core_enable_hca(%struct.mlx5_core_dev* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %70 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %286

71:                                               ; preds = %63
  %72 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %73 = call i32 @mlx5_core_set_issi(%struct.mlx5_core_dev* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %78 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %283

79:                                               ; preds = %71
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %81 = call i32 @mlx5_pagealloc_start(%struct.mlx5_core_dev* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %86 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %283

87:                                               ; preds = %79
  %88 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %89 = call i32 @mlx5_satisfy_startup_pages(%struct.mlx5_core_dev* %88, i32 1)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %94 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %280

95:                                               ; preds = %87
  %96 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %97 = call i32 @set_hca_ctrl(%struct.mlx5_core_dev* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %102 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %277

103:                                              ; preds = %95
  %104 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %105 = call i32 @handle_hca_cap(%struct.mlx5_core_dev* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %110 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %277

111:                                              ; preds = %103
  %112 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %113 = call i32 @handle_hca_cap_atomic(%struct.mlx5_core_dev* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %118 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %277

119:                                              ; preds = %111
  %120 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %121 = call i32 @mlx5_satisfy_startup_pages(%struct.mlx5_core_dev* %120, i32 0)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %126 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %277

127:                                              ; preds = %119
  %128 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %129 = call i32 @mlx5_cmd_init_hca(%struct.mlx5_core_dev* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %134 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %277

135:                                              ; preds = %127
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %137 = call i32 @mlx5_start_health_poll(%struct.mlx5_core_dev* %136)
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %142 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %143 = call i64 @mlx5_init_once(%struct.mlx5_core_dev* %141, %struct.mlx5_priv* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %147 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %266

148:                                              ; preds = %140, %135
  %149 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %150 = call i32 @mlx5_enable_msix(%struct.mlx5_core_dev* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %155 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  br label %259

156:                                              ; preds = %148
  %157 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %158 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %159 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %158, i32 0, i32 0
  %160 = call i32 @mlx5_alloc_uuars(%struct.mlx5_core_dev* %157, i32* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %165 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  br label %256

166:                                              ; preds = %156
  %167 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %168 = call i32 @mlx5_start_eqs(%struct.mlx5_core_dev* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %173 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %172, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  br label %251

174:                                              ; preds = %166
  %175 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %176 = call i32 @alloc_comp_eqs(%struct.mlx5_core_dev* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %181 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %180, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  br label %248

182:                                              ; preds = %174
  %183 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %184 = call i64 @map_bf_area(%struct.mlx5_core_dev* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %188 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %182
  %190 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %191 = call i32 @mlx5_init_fs(%struct.mlx5_core_dev* %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %196)
  br label %243

198:                                              ; preds = %189
  %199 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %200 = call i32 @mlx5_mpfs_init(%struct.mlx5_core_dev* %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %204, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %205)
  br label %240

207:                                              ; preds = %198
  %208 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %209 = call i32 @mlx5_fpga_device_start(%struct.mlx5_core_dev* %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %213, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %214)
  br label %237

216:                                              ; preds = %207
  %217 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %218 = call i32 @mlx5_register_device(%struct.mlx5_core_dev* %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %222, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 %223)
  br label %234

225:                                              ; preds = %216
  %226 = load i32, i32* @MLX5_INTERFACE_STATE_UP, align 4
  %227 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %228 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %227, i32 0, i32 2
  %229 = call i32 @set_bit(i32 %226, i32* %228)
  br label %230

230:                                              ; preds = %225, %17
  %231 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %232 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %231, i32 0, i32 0
  %233 = call i32 @mutex_unlock(i32* %232)
  store i32 0, i32* %4, align 4
  br label %297

234:                                              ; preds = %221
  %235 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %236 = call i32 @mlx5_fpga_device_stop(%struct.mlx5_core_dev* %235)
  br label %237

237:                                              ; preds = %234, %212
  %238 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %239 = call i32 @mlx5_mpfs_destroy(%struct.mlx5_core_dev* %238)
  br label %240

240:                                              ; preds = %237, %203
  %241 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %242 = call i32 @mlx5_cleanup_fs(%struct.mlx5_core_dev* %241)
  br label %243

243:                                              ; preds = %240, %194
  %244 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %245 = call i32 @free_comp_eqs(%struct.mlx5_core_dev* %244)
  %246 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %247 = call i32 @unmap_bf_area(%struct.mlx5_core_dev* %246)
  br label %248

248:                                              ; preds = %243, %179
  %249 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %250 = call i32 @mlx5_stop_eqs(%struct.mlx5_core_dev* %249)
  br label %251

251:                                              ; preds = %248, %171
  %252 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %253 = load %struct.mlx5_priv*, %struct.mlx5_priv** %6, align 8
  %254 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %253, i32 0, i32 0
  %255 = call i32 @mlx5_free_uuars(%struct.mlx5_core_dev* %252, i32* %254)
  br label %256

256:                                              ; preds = %251, %163
  %257 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %258 = call i32 @mlx5_disable_msix(%struct.mlx5_core_dev* %257)
  br label %259

259:                                              ; preds = %256, %153
  %260 = load i32, i32* %7, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %264 = call i32 @mlx5_cleanup_once(%struct.mlx5_core_dev* %263)
  br label %265

265:                                              ; preds = %262, %259
  br label %266

266:                                              ; preds = %265, %145
  %267 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @mlx5_stop_health_poll(%struct.mlx5_core_dev* %267, i32 %268)
  %270 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %271 = call i64 @mlx5_cmd_teardown_hca(%struct.mlx5_core_dev* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %266
  %274 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %275 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %274, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0))
  br label %289

276:                                              ; preds = %266
  br label %277

277:                                              ; preds = %276, %132, %124, %116, %108, %100
  %278 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %279 = call i32 @mlx5_reclaim_startup_pages(%struct.mlx5_core_dev* %278)
  br label %280

280:                                              ; preds = %277, %92
  %281 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %282 = call i32 @mlx5_pagealloc_stop(%struct.mlx5_core_dev* %281)
  br label %283

283:                                              ; preds = %280, %84, %76
  %284 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %285 = call i32 @mlx5_core_disable_hca(%struct.mlx5_core_dev* %284)
  br label %286

286:                                              ; preds = %283, %68, %59
  %287 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %288 = call i32 @mlx5_cmd_cleanup(%struct.mlx5_core_dev* %287)
  br label %289

289:                                              ; preds = %286, %273, %50, %38
  %290 = load i32, i32* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 4
  %291 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %292 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 4
  %293 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %294 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %293, i32 0, i32 0
  %295 = call i32 @mutex_unlock(i32* %294)
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %4, align 4
  br label %297

297:                                              ; preds = %289, %230
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @fw_rev_maj(%struct.mlx5_core_dev*) #1

declare dso_local i32 @fw_rev_min(%struct.mlx5_core_dev*) #1

declare dso_local i32 @fw_rev_sub(%struct.mlx5_core_dev*) #1

declare dso_local i32 @wait_fw_init(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mlx5_cmd_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_core_enable_hca(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_set_issi(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_pagealloc_start(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_satisfy_startup_pages(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @set_hca_ctrl(%struct.mlx5_core_dev*) #1

declare dso_local i32 @handle_hca_cap(%struct.mlx5_core_dev*) #1

declare dso_local i32 @handle_hca_cap_atomic(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cmd_init_hca(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_start_health_poll(%struct.mlx5_core_dev*) #1

declare dso_local i64 @mlx5_init_once(%struct.mlx5_core_dev*, %struct.mlx5_priv*) #1

declare dso_local i32 @mlx5_enable_msix(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_alloc_uuars(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_start_eqs(%struct.mlx5_core_dev*) #1

declare dso_local i32 @alloc_comp_eqs(%struct.mlx5_core_dev*) #1

declare dso_local i64 @map_bf_area(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_fs(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_mpfs_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fpga_device_start(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_register_device(%struct.mlx5_core_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_fpga_device_stop(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_mpfs_destroy(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_fs(%struct.mlx5_core_dev*) #1

declare dso_local i32 @free_comp_eqs(%struct.mlx5_core_dev*) #1

declare dso_local i32 @unmap_bf_area(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_stop_eqs(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_free_uuars(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_disable_msix(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_once(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_stop_health_poll(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @mlx5_cmd_teardown_hca(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_reclaim_startup_pages(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_pagealloc_stop(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_disable_hca(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cmd_cleanup(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
