; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_get_core_cap_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_get_core_cap_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@l3_type = common dso_local global i32 0, align 4
@roce_version = common dso_local global i32 0, align 4
@IB_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_IBA_IB = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV4_CAP = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV6_CAP = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_1_CAP = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_IBA_ROCE = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_2_CAP = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*)* @get_core_cap_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_core_cap_flags(%struct.ib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %10 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %9)
  store %struct.mlx5_ib_dev* %10, %struct.mlx5_ib_dev** %4, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %12 = call i32 @mlx5_ib_port_link_layer(%struct.ib_device* %11, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @l3_type, align 4
  %17 = call i32 @MLX5_CAP_ROCE(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @roce_version, align 4
  %22 = call i32 @MLX5_CAP_ROCE(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @RDMA_CORE_PORT_IBA_IB, align 4
  store i32 %27, i32* %2, align 4
  br label %60

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV4_CAP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %60

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV6_CAP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %60

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MLX5_ROCE_VERSION_1_CAP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MLX5_ROCE_VERSION_2_CAP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %39, %33, %26
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx5_ib_port_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @MLX5_CAP_ROCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
