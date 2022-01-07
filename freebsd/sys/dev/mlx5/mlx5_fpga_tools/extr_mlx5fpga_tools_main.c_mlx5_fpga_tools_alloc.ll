; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_main.c_mlx5_fpga_tools_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_main.c_mlx5_fpga_tools_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_tools_dev = type { i32, %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mlx5fpgat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_fpga_tools_dev* @mlx5_fpga_tools_alloc(%struct.mlx5_fpga_device* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_fpga_tools_dev*, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mlx5_fpga_tools_dev* @kzalloc(i32 16, i32 %5)
  store %struct.mlx5_fpga_tools_dev* %6, %struct.mlx5_fpga_tools_dev** %4, align 8
  %7 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %4, align 8
  %8 = icmp ne %struct.mlx5_fpga_tools_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %12 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_fpga_tools_dev, %struct.mlx5_fpga_tools_dev* %12, i32 0, i32 1
  store %struct.mlx5_fpga_device* %11, %struct.mlx5_fpga_device** %13, align 8
  %14 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_fpga_tools_dev, %struct.mlx5_fpga_tools_dev* %14, i32 0, i32 0
  %16 = call i32 @sx_init(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %4, align 8
  %18 = call i32 @mlx5_fpga_tools_char_add_one(%struct.mlx5_fpga_tools_dev* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %23

22:                                               ; preds = %10
  br label %26

23:                                               ; preds = %21
  %24 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %4, align 8
  %25 = call i32 @kfree(%struct.mlx5_fpga_tools_dev* %24)
  store %struct.mlx5_fpga_tools_dev* null, %struct.mlx5_fpga_tools_dev** %4, align 8
  br label %26

26:                                               ; preds = %23, %22, %9
  %27 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %4, align 8
  ret %struct.mlx5_fpga_tools_dev* %27
}

declare dso_local %struct.mlx5_fpga_tools_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @mlx5_fpga_tools_char_add_one(%struct.mlx5_fpga_tools_dev*) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_tools_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
