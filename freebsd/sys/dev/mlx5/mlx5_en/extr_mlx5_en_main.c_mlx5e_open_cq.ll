; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_cq_param = type { i32 }
%struct.mlx5e_cq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_cq(%struct.mlx5e_priv* %0, %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5e_cq_param*, align 8
  %9 = alloca %struct.mlx5e_cq*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq_param** %8, align 8
  store %struct.mlx5e_cq* %2, %struct.mlx5e_cq** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %14 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %15 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @mlx5e_create_cq(%struct.mlx5e_priv* %13, %struct.mlx5e_cq_param* %14, %struct.mlx5e_cq* %15, i32* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %36

23:                                               ; preds = %5
  %24 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %25 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @mlx5e_enable_cq(%struct.mlx5e_cq* %24, %struct.mlx5e_cq_param* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %36

32:                                               ; preds = %30
  %33 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %34 = call i32 @mlx5e_destroy_cq(%struct.mlx5e_cq* %33)
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %31, %21
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @mlx5e_create_cq(%struct.mlx5e_priv*, %struct.mlx5e_cq_param*, %struct.mlx5e_cq*, i32*, i32) #1

declare dso_local i32 @mlx5e_enable_cq(%struct.mlx5e_cq*, %struct.mlx5e_cq_param*, i32) #1

declare dso_local i32 @mlx5e_destroy_cq(%struct.mlx5e_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
