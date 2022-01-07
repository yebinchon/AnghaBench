; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cq.c_mlx5_init_cq_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cq.c_mlx5_init_cq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_cq_table }
%struct.mlx5_cq_table = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@MLX5_CQ_LINEAR_ARRAY_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_init_cq_table(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_cq_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.mlx5_cq_table* %8, %struct.mlx5_cq_table** %3, align 8
  %9 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %3, align 8
  %10 = call i32 @memset(%struct.mlx5_cq_table* %9, i32 0, i32 24)
  %11 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_init(i32* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MLX5_CQ_LINEAR_ARRAY_SIZE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_init(i32* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i32 @INIT_RADIX_TREE(i32* %32, i32 %33)
  store i32 0, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.mlx5_cq_table*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
