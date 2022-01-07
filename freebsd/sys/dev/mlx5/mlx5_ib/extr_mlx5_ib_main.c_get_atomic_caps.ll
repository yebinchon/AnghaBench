; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_get_atomic_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_get_atomic_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_device_attr = type { i32 }

@atomic_req_8B_endianess_mode = common dso_local global i32 0, align 4
@MLX5_ATOMIC_OPS_CMP_SWAP = common dso_local global i32 0, align 4
@MLX5_ATOMIC_OPS_FETCH_ADD = common dso_local global i32 0, align 4
@MLX5_ATOMIC_SIZE_QP_8BYTES = common dso_local global i32 0, align 4
@IB_ATOMIC_HCA = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@atomic_operations = common dso_local global i32 0, align 4
@atomic_size_qp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.ib_device_attr*)* @get_atomic_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_atomic_caps(%struct.mlx5_ib_dev* %0, %struct.ib_device_attr* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %4, align 8
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @MLX5_CAP_ATOMIC(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @MLX5_CAP_ATOMIC(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @atomic_req_8B_endianess_mode, align 4
  %23 = call i32 @MLX5_CAP_ATOMIC(i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @MLX5_ATOMIC_OPS_CMP_SWAP, align 4
  %25 = load i32, i32* @MLX5_ATOMIC_OPS_FETCH_ADD, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MLX5_ATOMIC_SIZE_QP_8BYTES, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @IB_ATOMIC_HCA, align 4
  %42 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %43 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %37, %32, %2
  %45 = load i32, i32* @IB_ATOMIC_NONE, align 4
  %46 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %47 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @MLX5_CAP_ATOMIC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
