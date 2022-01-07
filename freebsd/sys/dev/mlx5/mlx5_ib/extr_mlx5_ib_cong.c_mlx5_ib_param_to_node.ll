; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cong.c_mlx5_ib_param_to_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cong.c_mlx5_ib_param_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rp_clamp_tgt_rate = common dso_local global i32 0, align 4
@rp_gd = common dso_local global i32 0, align 4
@MLX5_IB_RROCE_ECN_RP = common dso_local global i32 0, align 4
@MLX5_IB_RROCE_ECN_NP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @mlx5_ib_param_to_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_param_to_node(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i32, i32* @rp_clamp_tgt_rate, align 4
  %6 = call i64 @MLX5_IB_INDEX(i32 %5)
  %7 = icmp sge i64 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @rp_gd, align 4
  %11 = call i64 @MLX5_IB_INDEX(i32 %10)
  %12 = icmp sle i64 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @MLX5_IB_RROCE_ECN_RP, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %8, %1
  %16 = load i32, i32* @MLX5_IB_RROCE_ECN_NP, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @MLX5_IB_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
