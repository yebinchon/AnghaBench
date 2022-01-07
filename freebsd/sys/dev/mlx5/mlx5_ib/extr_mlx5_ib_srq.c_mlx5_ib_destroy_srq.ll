; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_srq.c_mlx5_ib_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_srq.c_mlx5_ib_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_srq = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_destroy_srq(%struct.ib_srq* %0) #0 {
  %2 = alloca %struct.ib_srq*, align 8
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %2, align 8
  %5 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %6 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.mlx5_ib_dev* @to_mdev(i32 %7)
  store %struct.mlx5_ib_dev* %8, %struct.mlx5_ib_dev** %3, align 8
  %9 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %10 = call %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq* %9)
  store %struct.mlx5_ib_srq* %10, %struct.mlx5_ib_srq** %4, align 8
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %14, i32 0, i32 2
  %16 = call i32 @mlx5_core_destroy_srq(i32 %13, i32* %15)
  %17 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %18 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %23 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @to_mucontext(i32 %26)
  %28 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %28, i32 0, i32 1
  %30 = call i32 @mlx5_ib_db_unmap_user(i32 %27, i32* %29)
  %31 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ib_umem_release(i32 %33)
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %37 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %4, align 8
  %38 = call i32 @destroy_srq_kernel(%struct.mlx5_ib_dev* %36, %struct.mlx5_ib_srq* %37)
  br label %39

39:                                               ; preds = %35, %21
  %40 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %41 = call i32 @kfree(%struct.ib_srq* %40)
  ret i32 0
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local i32 @mlx5_core_destroy_srq(i32, i32*) #1

declare dso_local i32 @mlx5_ib_db_unmap_user(i32, i32*) #1

declare dso_local i32 @to_mucontext(i32) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @destroy_srq_kernel(%struct.mlx5_ib_dev*, %struct.mlx5_ib_srq*) #1

declare dso_local i32 @kfree(%struct.ib_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
