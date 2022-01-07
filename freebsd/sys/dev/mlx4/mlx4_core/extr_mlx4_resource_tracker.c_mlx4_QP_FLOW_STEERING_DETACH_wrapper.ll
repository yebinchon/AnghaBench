; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_QP_FLOW_STEERING_DETACH_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_QP_FLOW_STEERING_DETACH_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_vhcr = type { i64 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_qp = type { i64, i32, i32, i64 }
%struct.res_fs_rule = type { i64, i32, i32, i64 }

@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RES_FS_RULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Mirror rules cannot be removed explicitly\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Fail to get resource of mirror rule\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Fail to remove flow steering resources\0A\00", align 1
@MLX4_QP_FLOW_STEERING_DETACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QP_FLOW_STEERING_DETACH_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.res_qp*, align 8
  %16 = alloca %struct.res_fs_rule*, align 8
  %17 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %151

27:                                               ; preds = %6
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %31 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @RES_FS_RULE, align 4
  %34 = bitcast %struct.res_fs_rule** %16 to %struct.res_qp**
  %35 = call i32 @get_res(%struct.mlx4_dev* %28, i32 %29, i64 %32, i32 %33, %struct.res_qp** %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %7, align 4
  br label %151

40:                                               ; preds = %27
  %41 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %42 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %47 = call i32 @mlx4_err(%struct.mlx4_dev* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %51 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @RES_FS_RULE, align 4
  %54 = call i32 @put_res(%struct.mlx4_dev* %48, i32 %49, i64 %52, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %151

57:                                               ; preds = %40
  %58 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %59 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %17, align 8
  %61 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %62 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @kfree(i32 %63)
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %68 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @RES_FS_RULE, align 4
  %71 = call i32 @put_res(%struct.mlx4_dev* %65, i32 %66, i64 %69, i32 %70)
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %75 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @RES_QP, align 4
  %78 = call i32 @get_res(%struct.mlx4_dev* %72, i32 %73, i64 %76, i32 %77, %struct.res_qp** %15)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %57
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %7, align 4
  br label %151

83:                                               ; preds = %57
  %84 = load i64, i64* %17, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %88 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i64, i64* %17, align 8
  %94 = load i32, i32* @RES_FS_RULE, align 4
  %95 = bitcast %struct.res_fs_rule** %16 to %struct.res_qp**
  %96 = call i32 @get_res(%struct.mlx4_dev* %91, i32 %92, i64 %93, i32 %94, %struct.res_qp** %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %101 = call i32 @mlx4_err(%struct.mlx4_dev* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %112

102:                                              ; preds = %90
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i64, i64* %17, align 8
  %106 = load i32, i32* @RES_FS_RULE, align 4
  %107 = call i32 @put_res(%struct.mlx4_dev* %103, i32 %104, i64 %105, i32 %106)
  %108 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %109 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %110 = bitcast %struct.res_fs_rule* %109 to %struct.res_qp*
  %111 = call i32 @mlx4_undo_mirror_rule(%struct.mlx4_dev* %108, %struct.res_qp* %110)
  br label %112

112:                                              ; preds = %102, %99
  br label %113

113:                                              ; preds = %112, %86, %83
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %117 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @RES_FS_RULE, align 4
  %120 = call i32 @rem_res_range(%struct.mlx4_dev* %114, i32 %115, i64 %118, i32 1, i32 %119, i32 0)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %125 = call i32 @mlx4_err(%struct.mlx4_dev* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %142

126:                                              ; preds = %113
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %128 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %129 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* @MLX4_QP_FLOW_STEERING_DETACH, align 4
  %132 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %133 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %134 = call i32 @mlx4_cmd(%struct.mlx4_dev* %127, i64 %130, i32 0, i32 0, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %126
  %138 = load %struct.res_qp*, %struct.res_qp** %15, align 8
  %139 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %138, i32 0, i32 1
  %140 = call i32 @atomic_dec(i32* %139)
  br label %141

141:                                              ; preds = %137, %126
  br label %142

142:                                              ; preds = %141, %123
  %143 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %146 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @RES_QP, align 4
  %149 = call i32 @put_res(%struct.mlx4_dev* %143, i32 %144, i64 %147, i32 %148)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %142, %81, %45, %38, %24
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i64, i32, %struct.res_qp**) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i64, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_undo_mirror_rule(%struct.mlx4_dev*, %struct.res_qp*) #1

declare dso_local i32 @rem_res_range(%struct.mlx4_dev*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
