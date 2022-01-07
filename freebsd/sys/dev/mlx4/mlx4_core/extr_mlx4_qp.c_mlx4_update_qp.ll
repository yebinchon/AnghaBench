; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_update_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_update_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_update_qp_params = type { i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i64 }
%struct.mlx4_update_qp_context = type { i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@MLX4_UPDATE_QP_SUPPORTED_ATTRS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_UPDATE_QP_SMAC = common dso_local global i32 0, align 4
@MLX4_UPD_QP_PATH_MASK_MAC_INDEX = common dso_local global i64 0, align 8
@MLX4_UPDATE_QP_ETH_SRC_CHECK_MC_LB = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Trying to set src check LB, but it isn't supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@MLX4_UPD_QP_PATH_MASK_ETH_SRC_CHECK_MC_LB = common dso_local global i64 0, align 8
@MLX4_UPDATE_QP_PARAMS_FLAGS_ETH_CHECK_MC_LB = common dso_local global i32 0, align 4
@MLX4_FL_ETH_SRC_CHECK_MC_LB = common dso_local global i32 0, align 4
@MLX4_UPDATE_QP_VSD = common dso_local global i32 0, align 4
@MLX4_UPD_QP_MASK_VSD = common dso_local global i64 0, align 8
@MLX4_UPDATE_QP_PARAMS_FLAGS_VSD_ENABLE = common dso_local global i32 0, align 4
@MLX4_STRIP_VLAN = common dso_local global i32 0, align 4
@MLX4_UPDATE_QP_RATE_LIMIT = common dso_local global i32 0, align 4
@MLX4_UPD_QP_MASK_RATE_LIMIT = common dso_local global i64 0, align 8
@MLX4_UPDATE_QP_QOS_VPORT = common dso_local global i32 0, align 4
@MLX4_UPD_QP_MASK_QOS_VPP = common dso_local global i64 0, align 8
@MLX4_CMD_UPDATE_QP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_update_qp(%struct.mlx4_dev* %0, i32 %1, i32 %2, %struct.mlx4_update_qp_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_update_qp_params*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_update_qp_context*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_update_qp_params* %3, %struct.mlx4_update_qp_params** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MLX4_UPDATE_QP_SUPPORTED_ATTRS, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %181

26:                                               ; preds = %17
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %28 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %27)
  store %struct.mlx4_cmd_mailbox* %28, %struct.mlx4_cmd_mailbox** %10, align 8
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %30 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %33)
  store i32 %34, i32* %5, align 4
  br label %181

35:                                               ; preds = %26
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.mlx4_update_qp_context*
  store %struct.mlx4_update_qp_context* %39, %struct.mlx4_update_qp_context** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MLX4_UPDATE_QP_SMAC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %35
  %45 = load i64, i64* @MLX4_UPD_QP_PATH_MASK_MAC_INDEX, align 8
  %46 = shl i64 1, %45
  %47 = load i64, i64* %12, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %12, align 8
  %49 = load %struct.mlx4_update_qp_params*, %struct.mlx4_update_qp_params** %9, align 8
  %50 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %11, align 8
  %53 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %35
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MLX4_UPDATE_QP_ETH_SRC_CHECK_MC_LB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %56
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %63 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %71 = call i32 @mlx4_warn(%struct.mlx4_dev* %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @ENOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %14, align 4
  br label %176

74:                                               ; preds = %61
  %75 = load i64, i64* @MLX4_UPD_QP_PATH_MASK_ETH_SRC_CHECK_MC_LB, align 8
  %76 = shl i64 1, %75
  %77 = load i64, i64* %12, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %12, align 8
  %79 = load %struct.mlx4_update_qp_params*, %struct.mlx4_update_qp_params** %9, align 8
  %80 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MLX4_UPDATE_QP_PARAMS_FLAGS_ETH_CHECK_MC_LB, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load i32, i32* @MLX4_FL_ETH_SRC_CHECK_MC_LB, align 4
  %87 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %11, align 8
  %88 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %86
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %85, %74
  br label %94

94:                                               ; preds = %93, %56
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @MLX4_UPDATE_QP_VSD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load i64, i64* @MLX4_UPD_QP_MASK_VSD, align 8
  %101 = shl i64 1, %100
  %102 = load i64, i64* %13, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %13, align 8
  %104 = load %struct.mlx4_update_qp_params*, %struct.mlx4_update_qp_params** %9, align 8
  %105 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MLX4_UPDATE_QP_PARAMS_FLAGS_VSD_ENABLE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load i32, i32* @MLX4_STRIP_VLAN, align 4
  %112 = call i32 @cpu_to_be32(i32 %111)
  %113 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %11, align 8
  %114 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %110, %99
  br label %119

119:                                              ; preds = %118, %94
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @MLX4_UPDATE_QP_RATE_LIMIT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load i64, i64* @MLX4_UPD_QP_MASK_RATE_LIMIT, align 8
  %126 = shl i64 1, %125
  %127 = load i64, i64* %13, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %13, align 8
  %129 = load %struct.mlx4_update_qp_params*, %struct.mlx4_update_qp_params** %9, align 8
  %130 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 14
  %133 = load %struct.mlx4_update_qp_params*, %struct.mlx4_update_qp_params** %9, align 8
  %134 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %132, %135
  %137 = call i32 @cpu_to_be16(i32 %136)
  %138 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %11, align 8
  %139 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  br label %141

141:                                              ; preds = %124, %119
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @MLX4_UPDATE_QP_QOS_VPORT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load i64, i64* @MLX4_UPD_QP_MASK_QOS_VPP, align 8
  %148 = shl i64 1, %147
  %149 = load i64, i64* %13, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %13, align 8
  %151 = load %struct.mlx4_update_qp_params*, %struct.mlx4_update_qp_params** %9, align 8
  %152 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %11, align 8
  %155 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  br label %157

157:                                              ; preds = %146, %141
  %158 = load i64, i64* %12, align 8
  %159 = call i8* @cpu_to_be64(i64 %158)
  %160 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %11, align 8
  %161 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load i64, i64* %13, align 8
  %163 = call i8* @cpu_to_be64(i64 %162)
  %164 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %11, align 8
  %165 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %167 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %168 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 16777215
  %172 = load i32, i32* @MLX4_CMD_UPDATE_QP, align 4
  %173 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %174 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %175 = call i32 @mlx4_cmd(%struct.mlx4_dev* %166, i32 %169, i32 %171, i32 0, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %157, %69
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %178 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %179 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %177, %struct.mlx4_cmd_mailbox* %178)
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %176, %32, %23
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
