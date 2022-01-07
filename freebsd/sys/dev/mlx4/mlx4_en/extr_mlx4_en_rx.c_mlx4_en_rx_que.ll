; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_rx_que.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_rx_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mlx4_en_cq = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MLX4_EN_RX_BUDGET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_rx_que(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_cq*, align 8
  %6 = alloca %struct.thread*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mlx4_en_cq*
  store %struct.mlx4_en_cq* %8, %struct.mlx4_en_cq** %5, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %6, align 8
  %10 = load %struct.thread*, %struct.thread** %6, align 8
  %11 = call i32 @thread_lock(%struct.thread* %10)
  %12 = load %struct.thread*, %struct.thread** %6, align 8
  %13 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sched_bind(%struct.thread* %12, i32 %15)
  %17 = load %struct.thread*, %struct.thread** %6, align 8
  %18 = call i32 @thread_unlock(%struct.thread* %17)
  br label %19

19:                                               ; preds = %25, %2
  %20 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %21 = load i64, i64* @MLX4_EN_RX_BUDGET, align 8
  %22 = call i64 @mlx4_en_poll_rx_cq(%struct.mlx4_en_cq* %20, i64 %21)
  %23 = load i64, i64* @MLX4_EN_RX_BUDGET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %19

26:                                               ; preds = %19
  %27 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %33 = call i32 @mlx4_en_arm_cq(i32 %31, %struct.mlx4_en_cq* %32)
  ret void
}

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_bind(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i64 @mlx4_en_poll_rx_cq(%struct.mlx4_en_cq*, i64) #1

declare dso_local i32 @mlx4_en_arm_cq(i32, %struct.mlx4_en_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
