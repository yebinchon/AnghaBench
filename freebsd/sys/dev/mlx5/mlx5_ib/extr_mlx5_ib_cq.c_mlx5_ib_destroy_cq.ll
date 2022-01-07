; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_mlx5_ib_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_mlx5_ib_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ib_ucontext* }
%struct.ib_ucontext = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_cq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_destroy_cq(%struct.ib_cq* %0) #0 {
  %2 = alloca %struct.ib_cq*, align 8
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_cq*, align 8
  %5 = alloca %struct.ib_ucontext*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %2, align 8
  %6 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %7 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.mlx5_ib_dev* @to_mdev(i32 %8)
  store %struct.mlx5_ib_dev* %9, %struct.mlx5_ib_dev** %3, align 8
  %10 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %11 = call %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq* %10)
  store %struct.mlx5_ib_cq* %11, %struct.mlx5_ib_cq** %4, align 8
  store %struct.ib_ucontext* null, %struct.ib_ucontext** %5, align 8
  %12 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %13 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %18 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.ib_ucontext*, %struct.ib_ucontext** %20, align 8
  store %struct.ib_ucontext* %21, %struct.ib_ucontext** %5, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %26, i32 0, i32 0
  %28 = call i32 @mlx5_core_destroy_cq(i32 %25, i32* %27)
  %29 = load %struct.ib_ucontext*, %struct.ib_ucontext** %5, align 8
  %30 = icmp ne %struct.ib_ucontext* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %33 = load %struct.ib_ucontext*, %struct.ib_ucontext** %5, align 8
  %34 = call i32 @destroy_cq_user(%struct.mlx5_ib_cq* %32, %struct.ib_ucontext* %33)
  br label %39

35:                                               ; preds = %22
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %37 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %38 = call i32 @destroy_cq_kernel(%struct.mlx5_ib_dev* %36, %struct.mlx5_ib_cq* %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %41 = call i32 @kfree(%struct.mlx5_ib_cq* %40)
  ret i32 0
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @mlx5_core_destroy_cq(i32, i32*) #1

declare dso_local i32 @destroy_cq_user(%struct.mlx5_ib_cq*, %struct.ib_ucontext*) #1

declare dso_local i32 @destroy_cq_kernel(%struct.mlx5_ib_dev*, %struct.mlx5_ib_cq*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
