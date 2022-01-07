; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_ib_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_ib_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_ib_mr = type { i32, i64, %struct.ib_umem* }
%struct.ib_umem = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_dereg_mr(%struct.ib_mr* %0) #0 {
  %2 = alloca %struct.ib_mr*, align 8
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_mr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_umem*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %2, align 8
  %7 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %8 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mlx5_ib_dev* @to_mdev(i32 %9)
  store %struct.mlx5_ib_dev* %10, %struct.mlx5_ib_dev** %3, align 8
  %11 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %12 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %11)
  store %struct.mlx5_ib_mr* %12, %struct.mlx5_ib_mr** %4, align 8
  %13 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %16, i32 0, i32 2
  %18 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  store %struct.ib_umem* %18, %struct.ib_umem** %6, align 8
  %19 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %20 = call i32 @clean_mr(%struct.mlx5_ib_mr* %19)
  %21 = load %struct.ib_umem*, %struct.ib_umem** %6, align 8
  %22 = icmp ne %struct.ib_umem* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.ib_umem*, %struct.ib_umem** %6, align 8
  %25 = call i32 @ib_umem_release(%struct.ib_umem* %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @atomic_sub(i32 %26, i32* %31)
  br label %33

33:                                               ; preds = %23, %1
  ret i32 0
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @clean_mr(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @ib_umem_release(%struct.ib_umem*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
