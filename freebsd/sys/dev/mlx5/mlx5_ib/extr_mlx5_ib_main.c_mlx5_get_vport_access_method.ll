; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_get_vport_access_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_get_vport_access_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }

@MLX5_VPORT_ACCESS_METHOD_MAD = common dso_local global i32 0, align 4
@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@MLX5_VPORT_ACCESS_METHOD_NIC = common dso_local global i32 0, align 4
@MLX5_VPORT_ACCESS_METHOD_HCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*)* @mlx5_get_vport_access_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_get_vport_access_method(%struct.ib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %4 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %5 = call i32 @to_mdev(%struct.ib_device* %4)
  %6 = call i64 @mlx5_use_mad_ifc(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @MLX5_VPORT_ACCESS_METHOD_MAD, align 4
  store i32 %9, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %12 = call i64 @mlx5_ib_port_link_layer(%struct.ib_device* %11, i32 1)
  %13 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @MLX5_VPORT_ACCESS_METHOD_NIC, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @MLX5_VPORT_ACCESS_METHOD_HCA, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %15, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @mlx5_use_mad_ifc(i32) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @mlx5_ib_port_link_layer(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
