; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_post_rx_wqes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_post_rx_wqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5e_rx_wqe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*)* @mlx5e_post_rx_wqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_post_rx_wqes(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca %struct.mlx5e_rq*, align 8
  %3 = alloca %struct.mlx5e_rx_wqe*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %2, align 8
  %4 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %41, %12
  %14 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %14, i32 0, i32 1
  %16 = call i32 @mlx5_wq_ll_is_full(%struct.TYPE_7__* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %20, i32 0, i32 1
  %22 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.mlx5e_rx_wqe* @mlx5_wq_ll_get_wqe(%struct.TYPE_7__* %21, i32 %25)
  store %struct.mlx5e_rx_wqe* %26, %struct.mlx5e_rx_wqe** %3, align 8
  %27 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %28 = load %struct.mlx5e_rx_wqe*, %struct.mlx5e_rx_wqe** %3, align 8
  %29 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mlx5e_alloc_rx_wqe(%struct.mlx5e_rq* %27, %struct.mlx5e_rx_wqe* %28, i32 %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %38 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %37, i32 0, i32 2
  %39 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %40 = call i32 @callout_reset_curcpu(i32* %38, i32 1, i8* bitcast (void (%struct.mlx5e_rq*)* @mlx5e_post_rx_wqes to i8*), %struct.mlx5e_rq* %39)
  br label %50

41:                                               ; preds = %19
  %42 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %43 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %42, i32 0, i32 1
  %44 = load %struct.mlx5e_rx_wqe*, %struct.mlx5e_rx_wqe** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rx_wqe, %struct.mlx5e_rx_wqe* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be16_to_cpu(i32 %47)
  %49 = call i32 @mlx5_wq_ll_push(%struct.TYPE_7__* %43, i32 %48)
  br label %13

50:                                               ; preds = %36, %13
  %51 = call i32 (...) @atomic_thread_fence_rel()
  %52 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %53 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %52, i32 0, i32 1
  %54 = call i32 @mlx5_wq_ll_update_db_record(%struct.TYPE_7__* %53)
  br label %55

55:                                               ; preds = %50, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_wq_ll_is_full(%struct.TYPE_7__*) #1

declare dso_local %struct.mlx5e_rx_wqe* @mlx5_wq_ll_get_wqe(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mlx5e_alloc_rx_wqe(%struct.mlx5e_rq*, %struct.mlx5e_rx_wqe*, i32) #1

declare dso_local i32 @callout_reset_curcpu(i32*, i32, i8*, %struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5_wq_ll_push(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

declare dso_local i32 @mlx5_wq_ll_update_db_record(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
