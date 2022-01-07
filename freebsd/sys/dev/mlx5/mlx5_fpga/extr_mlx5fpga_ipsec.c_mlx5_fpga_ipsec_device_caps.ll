; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_ipsec.c_mlx5_fpga_ipsec_device_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_ipsec.c_mlx5_fpga_ipsec_device_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX5_ACCEL_IPSEC_DEVICE = common dso_local global i32 0, align 4
@ipsec_extended_cap = common dso_local global i32 0, align 4
@esp = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_ESP = common dso_local global i32 0, align 4
@ipv6 = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_IPV6 = common dso_local global i32 0, align 4
@lso = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_LSO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_ipsec_device_caps(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  %8 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  store %struct.mlx5_fpga_device* %8, %struct.mlx5_fpga_device** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = call i64 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @MLX5_ACCEL_IPSEC_DEVICE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %12
  %19 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %18
  %26 = load i32, i32* @ipsec_extended_cap, align 4
  %27 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @esp, align 4
  %33 = call i64 @MLX5_GET(i32 %26, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @MLX5_ACCEL_IPSEC_ESP, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %25
  %40 = load i32, i32* @ipsec_extended_cap, align 4
  %41 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ipv6, align 4
  %47 = call i64 @MLX5_GET(i32 %40, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @MLX5_ACCEL_IPSEC_IPV6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %39
  %54 = load i32, i32* @ipsec_extended_cap, align 4
  %55 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @lso, align 4
  %61 = call i64 @MLX5_GET(i32 %54, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* @MLX5_ACCEL_IPSEC_LSO, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %53
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %23, %16
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev*) #1

declare dso_local i64 @MLX5_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
