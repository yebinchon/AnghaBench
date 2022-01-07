; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_umr_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_umr_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_wqe_umr_ctrl_seg = type { i32, i32, i32 }
%struct.mlx5_ib_mr = type { i32, i64 }

@MLX5_ACCESS_MODE_KLM = common dso_local global i64 0, align 8
@MLX5_UMR_CHECK_NOT_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_ib_mr*)* @set_reg_umr_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reg_umr_seg(%struct.mlx5_wqe_umr_ctrl_seg* %0, %struct.mlx5_ib_mr* %1) #0 {
  %3 = alloca %struct.mlx5_wqe_umr_ctrl_seg*, align 8
  %4 = alloca %struct.mlx5_ib_mr*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_wqe_umr_ctrl_seg* %0, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %4, align 8
  %6 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %10 = call i32 @memset(%struct.mlx5_wqe_umr_ctrl_seg* %9, i32 0, i32 12)
  %11 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MLX5_ACCESS_MODE_KLM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @MLX5_UMR_CHECK_NOT_FREE, align 4
  %21 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @get_klm_octo(i32 %23)
  %25 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = call i32 (...) @frwr_mkey_mask()
  %28 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @memset(%struct.mlx5_wqe_umr_ctrl_seg*, i32, i32) #1

declare dso_local i32 @get_klm_octo(i32) #1

declare dso_local i32 @frwr_mkey_mask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
