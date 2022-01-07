; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_qp.c_mlx5_core_create_sq_tracked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_qp.c_mlx5_core_create_sq_tracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_qp = type { i32 }

@MLX5_RES_SQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_create_sq_tracked(%struct.mlx5_core_dev* %0, i32* %1, i32 %2, %struct.mlx5_core_qp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_core_qp*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx5_core_qp* %3, %struct.mlx5_core_qp** %9, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %9, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %14, i32 0, i32 0
  %16 = call i32 @mlx5_core_create_sq(%struct.mlx5_core_dev* %11, i32* %12, i32 %13, i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %36

21:                                               ; preds = %4
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %23 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %9, align 8
  %24 = load i32, i32* @MLX5_RES_SQ, align 4
  %25 = call i32 @create_qprqsq_common(%struct.mlx5_core_dev* %22, %struct.mlx5_core_qp* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %30 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %9, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5_core_destroy_sq(%struct.mlx5_core_dev* %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %19
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @mlx5_core_create_sq(%struct.mlx5_core_dev*, i32*, i32, i32*) #1

declare dso_local i32 @create_qprqsq_common(%struct.mlx5_core_dev*, %struct.mlx5_core_qp*, i32) #1

declare dso_local i32 @mlx5_core_destroy_sq(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
