; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_set_hca_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_set_hca_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_reg_host_endianess = type { i32 }

@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@roce = common dso_local global i32 0, align 4
@MLX5_SET_HOST_ENDIANNESS = common dso_local global i32 0, align 4
@MLX5_REG_HOST_ENDIANNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @set_hca_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hca_ctrl(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_reg_host_endianess, align 4
  %5 = alloca %struct.mlx5_reg_host_endianess, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = load i32, i32* @port_type, align 4
  %9 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %7, i32 %8)
  %10 = load i64, i64* @MLX5_CAP_PORT_TYPE_ETH, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = load i32, i32* @roce, align 4
  %15 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %26

18:                                               ; preds = %12, %1
  %19 = call i32 @memset(%struct.mlx5_reg_host_endianess* %4, i32 0, i32 4)
  %20 = load i32, i32* @MLX5_SET_HOST_ENDIANNESS, align 4
  %21 = getelementptr inbounds %struct.mlx5_reg_host_endianess, %struct.mlx5_reg_host_endianess* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %23 = load i32, i32* @MLX5_REG_HOST_ENDIANNESS, align 4
  %24 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %22, %struct.mlx5_reg_host_endianess* %4, i32 4, %struct.mlx5_reg_host_endianess* %5, i32 4, i32 %23, i32 0, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @memset(%struct.mlx5_reg_host_endianess*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, %struct.mlx5_reg_host_endianess*, i32, %struct.mlx5_reg_host_endianess*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
