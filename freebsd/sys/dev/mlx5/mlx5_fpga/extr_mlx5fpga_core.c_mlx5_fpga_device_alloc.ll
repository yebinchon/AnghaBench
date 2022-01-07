; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_core.c_mlx5_fpga_device_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_core.c_mlx5_fpga_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_FDEV_STATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_fpga_device* ()* @mlx5_fpga_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_fpga_device* @mlx5_fpga_device_alloc() #0 {
  %1 = alloca %struct.mlx5_fpga_device*, align 8
  %2 = alloca %struct.mlx5_fpga_device*, align 8
  store %struct.mlx5_fpga_device* null, %struct.mlx5_fpga_device** %2, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.mlx5_fpga_device* @kzalloc(i32 16, i32 %3)
  store %struct.mlx5_fpga_device* %4, %struct.mlx5_fpga_device** %2, align 8
  %5 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %6 = icmp ne %struct.mlx5_fpga_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.mlx5_fpga_device* null, %struct.mlx5_fpga_device** %1, align 8
  br label %22

8:                                                ; preds = %0
  %9 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %9, i32 0, i32 3
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %12, i32 0, i32 2
  %14 = call i32 @init_completion(i32* %13)
  %15 = load i32, i32* @MLX5_FDEV_STATE_NONE, align 4
  %16 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  store %struct.mlx5_fpga_device* %21, %struct.mlx5_fpga_device** %1, align 8
  br label %22

22:                                               ; preds = %8, %7
  %23 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %1, align 8
  ret %struct.mlx5_fpga_device* %23
}

declare dso_local %struct.mlx5_fpga_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
