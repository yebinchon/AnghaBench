; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_main.c_mlx5_fpga_tools_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_main.c_mlx5_fpga_tools_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32 }
%struct.mlx5_fpga_tools_dev = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"tools_destroy\0A\00", align 1
@mlx5_fpga_tools_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_device*)* @mlx5_fpga_tools_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_tools_destroy(%struct.mlx5_fpga_device* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_device*, align 8
  %3 = alloca %struct.mlx5_fpga_tools_dev*, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %2, align 8
  %4 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %5 = call i32 @mlx5_fpga_dev(%struct.mlx5_fpga_device* %4)
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %8 = call %struct.mlx5_fpga_tools_dev* @mlx5_fpga_client_data_get(%struct.mlx5_fpga_device* %7, i32* @mlx5_fpga_tools_client)
  store %struct.mlx5_fpga_tools_dev* %8, %struct.mlx5_fpga_tools_dev** %3, align 8
  %9 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %3, align 8
  %10 = icmp ne %struct.mlx5_fpga_tools_dev* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %3, align 8
  %13 = call i32 @mlx5_fpga_tools_free(%struct.mlx5_fpga_tools_dev* %12)
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mlx5_fpga_dev(%struct.mlx5_fpga_device*) #1

declare dso_local %struct.mlx5_fpga_tools_dev* @mlx5_fpga_client_data_get(%struct.mlx5_fpga_device*, i32*) #1

declare dso_local i32 @mlx5_fpga_tools_free(%struct.mlx5_fpga_tools_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
