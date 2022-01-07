; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_do_mirror_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_do_mirror_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_fs_rule = type { i32, %struct.TYPE_2__, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"rule mirroring mailbox is null\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX4_QP_FLOW_STEERING_ATTACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@RES_FS_RULE = common dso_local global i32 0, align 4
@MLX4_QP_FLOW_STEERING_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.res_fs_rule*)* @mlx4_do_mirror_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_do_mirror_rule(%struct.mlx4_dev* %0, %struct.res_fs_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.res_fs_rule*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.res_fs_rule*, align 8
  %9 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.res_fs_rule* %1, %struct.res_fs_rule** %5, align 8
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %11 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %10)
  store %struct.mlx4_cmd_mailbox* %11, %struct.mlx4_cmd_mailbox** %6, align 8
  %12 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %13 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %16)
  store i32 %17, i32* %3, align 4
  br label %120

18:                                               ; preds = %2
  %19 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %20 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %25 = call i32 @mlx4_err(%struct.mlx4_dev* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %120

28:                                               ; preds = %18
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %30 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %33 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %36 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i32 %31, i32* %34, i32 %37)
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %40 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %44 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 2
  %47 = load i32, i32* @MLX4_QP_FLOW_STEERING_ATTACH, align 4
  %48 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %49 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %50 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %39, i32 %42, i64* %9, i32 %46, i32 0, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %52 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %53 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %51, %struct.mlx4_cmd_mailbox* %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %28
  br label %118

57:                                               ; preds = %28
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %59 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %60 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @RES_FS_RULE, align 4
  %65 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %66 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @add_res_range(%struct.mlx4_dev* %58, i32 %62, i64 %63, i32 1, i32 %64, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %111

72:                                               ; preds = %57
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %74 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %75 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* @RES_FS_RULE, align 4
  %80 = call i32 @get_res(%struct.mlx4_dev* %73, i32 %77, i64 %78, i32 %79, %struct.res_fs_rule** %8)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %102

84:                                               ; preds = %72
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %87 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.res_fs_rule*, %struct.res_fs_rule** %8, align 8
  %89 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.res_fs_rule*, %struct.res_fs_rule** %8, align 8
  %91 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.res_fs_rule*, %struct.res_fs_rule** %8, align 8
  %93 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %92, i32 0, i32 2
  store i32* null, i32** %93, align 8
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %95 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %96 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %9, align 8
  %100 = load i32, i32* @RES_FS_RULE, align 4
  %101 = call i32 @put_res(%struct.mlx4_dev* %94, i32 %98, i64 %99, i32 %100)
  store i32 0, i32* %3, align 4
  br label %120

102:                                              ; preds = %83
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %104 = load %struct.res_fs_rule*, %struct.res_fs_rule** %5, align 8
  %105 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %9, align 8
  %109 = load i32, i32* @RES_FS_RULE, align 4
  %110 = call i32 @rem_res_range(%struct.mlx4_dev* %103, i32 %107, i64 %108, i32 1, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %102, %71
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* @MLX4_QP_FLOW_STEERING_DETACH, align 4
  %115 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %116 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %117 = call i32 @mlx4_cmd(%struct.mlx4_dev* %112, i64 %113, i32 0, i32 0, i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %111, %56
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %84, %23, %15
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i64*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i64, i32, %struct.res_fs_rule**) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i64, i32) #1

declare dso_local i32 @rem_res_range(%struct.mlx4_dev*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
