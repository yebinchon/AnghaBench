; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_get_rx_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_get_rx_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32 }
%struct.ib_qp_init_attr = type { i64, i64 }

@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@MLX5_SRQ_RQ = common dso_local global i32 0, align 4
@MLX5_ZERO_LEN_RQ = common dso_local global i32 0, align 4
@MLX5_NON_ZERO_RQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, %struct.ib_qp_init_attr*)* @get_rx_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rx_type(%struct.mlx5_ib_qp* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_qp*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  %6 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %7 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %12 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %18 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %10, %2
  %23 = load i32, i32* @MLX5_SRQ_RQ, align 4
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %16
  %25 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @MLX5_ZERO_LEN_RQ, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @MLX5_NON_ZERO_RQ, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
