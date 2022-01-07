; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_get_roce_udp_sport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_get_roce_udp_sport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i32 }
%struct.ib_gid_attr = type { i64, i32 }
%union.ib_gid = type { i32 }

@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i64 0, align 8
@r_roce_min_src_udp_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_gid_attr, align 8
  %9 = alloca %union.ib_gid, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @ib_get_cached_gid(i32* %11, i32 %12, i32 %13, %union.ib_gid* %9, %struct.ib_gid_attr* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %8, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %38

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_put(i32 %24)
  %26 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %8, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %38

31:                                               ; preds = %22
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @r_roce_min_src_udp_port, align 4
  %36 = call i32 @MLX5_CAP_ROCE(i32 %34, i32 %35)
  %37 = call i32 @cpu_to_be16(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %30, %21, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @ib_get_cached_gid(i32*, i32, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @MLX5_CAP_ROCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
