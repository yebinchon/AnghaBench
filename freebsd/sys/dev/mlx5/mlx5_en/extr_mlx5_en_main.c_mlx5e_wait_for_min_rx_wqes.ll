; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_wait_for_min_rx_wqes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_wait_for_min_rx_wqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.mlx5_wq_ll, %struct.mlx5e_channel* }
%struct.mlx5_wq_ll = type { i64 }
%struct.mlx5e_channel = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*)* @mlx5e_wait_for_min_rx_wqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_wait_for_min_rx_wqes(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca %struct.mlx5e_channel*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5_wq_ll*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  %8 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %8, i32 0, i32 1
  %10 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %9, align 8
  store %struct.mlx5e_channel* %10, %struct.mlx5e_channel** %4, align 8
  %11 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %11, i32 0, i32 0
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %12, align 8
  store %struct.mlx5e_priv* %13, %struct.mlx5e_priv** %5, align 8
  %14 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %14, i32 0, i32 0
  store %struct.mlx5_wq_ll* %15, %struct.mlx5_wq_ll** %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 1000
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %37

29:                                               ; preds = %19
  %30 = call i32 @msleep(i32 4)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
