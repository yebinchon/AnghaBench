; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_order2idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_order2idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_mr_cache }
%struct.mlx5_mr_cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32)* @order2idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @order2idx(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_mr_cache*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %7, i32 0, i32 0
  store %struct.mlx5_mr_cache* %8, %struct.mlx5_mr_cache** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %9, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %19, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
