; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mlx5_fpga_device_reload_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mlx5_fpga_device_reload_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32, i8*, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"mlx5/fpga - reload started\0A\00", align 1
@MLX5_FDEV_STATE_IN_PROGRESS = common dso_local global i8* null, align 8
@MLX5_FPGA_CTRL_OPERATION_RELOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to request reload: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MLX5_FPGA_LOAD_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed waiting for reload: %d\0A\00", align 1
@MLX5_FDEV_STATE_FAILURE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed load check for reload: %d\0A\00", align 1
@MLX5_FDEV_STATE_SUCCESS = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"mlx5/fpga - reload ended\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*)* @mlx5_fpga_device_reload_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_device_reload_cmd(%struct.mlx5_fpga_device* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_device*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %2, align 8
  %7 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %7, i32 0, i32 3
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  store %struct.mlx5_core_dev* %9, %struct.mlx5_core_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %11 = call i32 @mlx5_fpga_info(%struct.mlx5_fpga_device* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** @MLX5_FDEV_STATE_IN_PROGRESS, align 8
  %13 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %15, i32 0, i32 2
  %17 = call i32 @reinit_completion(i32* %16)
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = load i32, i32* @MLX5_FPGA_CTRL_OPERATION_RELOAD, align 4
  %20 = call i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %73

27:                                               ; preds = %1
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @MLX5_FPGA_LOAD_TIMEOUT, align 4
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = add i64 %28, %30
  store i64 %31, i64* %4, align 8
  %32 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %33 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %32, i32 0, i32 2
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @jiffies, align 8
  %36 = sub i64 %34, %35
  %37 = call i32 @wait_for_completion_timeout(i32* %33, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** @MLX5_FDEV_STATE_FAILURE, align 8
  %45 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %73

47:                                               ; preds = %27
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %49 = call i32 @mlx5_fpga_device_start(%struct.mlx5_core_dev* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** @MLX5_FDEV_STATE_FAILURE, align 8
  %57 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %58 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %73

59:                                               ; preds = %47
  %60 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %61 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %60, i32 0, i32 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load i8*, i8** @MLX5_FDEV_STATE_SUCCESS, align 8
  %65 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %66 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %68 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %67, i32 0, i32 0
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %72 = call i32 @mlx5_fpga_info(%struct.mlx5_fpga_device* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %59, %52, %40, %23
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @mlx5_fpga_info(%struct.mlx5_fpga_device*, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @mlx5_fpga_device_start(%struct.mlx5_core_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
