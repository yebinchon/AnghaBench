; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { i32 }

@IB_QPT_GSI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_destroy_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  %6 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %7 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.mlx5_ib_dev* @to_mdev(i32 %8)
  store %struct.mlx5_ib_dev* %9, %struct.mlx5_ib_dev** %4, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %11 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %10)
  store %struct.mlx5_ib_qp* %11, %struct.mlx5_ib_qp** %5, align 8
  %12 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IB_QPT_GSI, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %22 = call i32 @mlx5_ib_gsi_destroy_qp(%struct.ib_qp* %21)
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %25 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %26 = call i32 @destroy_qp_common(%struct.mlx5_ib_dev* %24, %struct.mlx5_ib_qp* %25)
  %27 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %28 = call i32 @kfree(%struct.mlx5_ib_qp* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_ib_gsi_destroy_qp(%struct.ib_qp*) #1

declare dso_local i32 @destroy_qp_common(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
