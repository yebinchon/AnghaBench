; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_mlx5_core_arm_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_mlx5_core_arm_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_srq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MLX5_RES_XSRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_arm_srq(%struct.mlx5_core_dev* %0, %struct.mlx5_core_srq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_core_srq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %16 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @arm_srq_cmd(%struct.mlx5_core_dev* %15, %struct.mlx5_core_srq* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MLX5_RES_XSRQ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %29 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @arm_xrc_srq_cmd(%struct.mlx5_core_dev* %28, %struct.mlx5_core_srq* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %20
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %34 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @arm_rmp_cmd(%struct.mlx5_core_dev* %33, %struct.mlx5_core_srq* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %27, %14
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @arm_srq_cmd(%struct.mlx5_core_dev*, %struct.mlx5_core_srq*, i32, i32) #1

declare dso_local i32 @arm_xrc_srq_cmd(%struct.mlx5_core_dev*, %struct.mlx5_core_srq*, i32) #1

declare dso_local i32 @arm_rmp_cmd(%struct.mlx5_core_dev*, %struct.mlx5_core_srq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
