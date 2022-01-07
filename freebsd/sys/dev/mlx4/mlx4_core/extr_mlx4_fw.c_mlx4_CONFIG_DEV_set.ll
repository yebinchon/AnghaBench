; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_CONFIG_DEV_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_CONFIG_DEV_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_config_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }

@MLX4_CMD_CONFIG_DEV = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_config_dev*)* @mlx4_CONFIG_DEV_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_CONFIG_DEV_set(%struct.mlx4_dev* %0, %struct.mlx4_config_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_config_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_cmd_mailbox*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_config_dev* %1, %struct.mlx4_config_dev** %5, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %9 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %8)
  store %struct.mlx4_cmd_mailbox* %9, %struct.mlx4_cmd_mailbox** %7, align 8
  %10 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %11 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %15 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %14)
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %18 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx4_config_dev*, %struct.mlx4_config_dev** %5, align 8
  %21 = call i32 @memcpy(i32 %19, %struct.mlx4_config_dev* %20, i32 4)
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %23 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MLX4_CMD_CONFIG_DEV, align 4
  %27 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %28 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %29 = call i32 @mlx4_cmd(%struct.mlx4_dev* %22, i32 %25, i32 0, i32 0, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %32 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %30, %struct.mlx4_cmd_mailbox* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %16, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memcpy(i32, %struct.mlx4_config_dev*, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
