; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_txrx.c_mlx5e_get_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_txrx.c_mlx5e_get_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cqe64 = type { i32 }
%struct.mlx5e_cq = type { i32 }

@MLX5_CQE_OWNER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_cqe64* @mlx5e_get_cqe(%struct.mlx5e_cq* %0) #0 {
  %2 = alloca %struct.mlx5_cqe64*, align 8
  %3 = alloca %struct.mlx5e_cq*, align 8
  %4 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5e_cq* %0, %struct.mlx5e_cq** %3, align 8
  %5 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %5, i32 0, i32 0
  %7 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %7, i32 0, i32 0
  %9 = call i32 @mlx5_cqwq_get_ci(i32* %8)
  %10 = call %struct.mlx5_cqe64* @mlx5_cqwq_get_wqe(i32* %6, i32 %9)
  store %struct.mlx5_cqe64* %10, %struct.mlx5_cqe64** %4, align 8
  %11 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %14, i32 0, i32 0
  %16 = call i32 @mlx5_cqwq_get_wrap_cnt(i32* %15)
  %17 = xor i32 %13, %16
  %18 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store %struct.mlx5_cqe64* null, %struct.mlx5_cqe64** %2, align 8
  br label %25

22:                                               ; preds = %1
  %23 = call i32 (...) @atomic_thread_fence_acq()
  %24 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  store %struct.mlx5_cqe64* %24, %struct.mlx5_cqe64** %2, align 8
  br label %25

25:                                               ; preds = %22, %21
  %26 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %2, align 8
  ret %struct.mlx5_cqe64* %26
}

declare dso_local %struct.mlx5_cqe64* @mlx5_cqwq_get_wqe(i32*, i32) #1

declare dso_local i32 @mlx5_cqwq_get_ci(i32*) #1

declare dso_local i32 @mlx5_cqwq_get_wrap_cnt(i32*) #1

declare dso_local i32 @atomic_thread_fence_acq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
