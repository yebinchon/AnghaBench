; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_refresh_sq_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_refresh_sq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mlx5e_sq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cq_period_mode_modify = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_sq*)* @mlx5e_refresh_sq_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_refresh_sq_params(%struct.mlx5e_priv* %0, %struct.mlx5e_sq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_sq*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_sq* %1, %struct.mlx5e_sq** %5, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @cq_period_mode_modify, align 4
  %11 = call i64 @MLX5_CAP_GEN(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %20 [
    i32 0, label %18
    i32 2, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mlx5_core_modify_cq_moderation_mode(i32 %25, i32* %28, i32 %32, i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %2
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mlx5_core_modify_cq_moderation(i32 %42, i32* %45, i32 %49, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %39, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_core_modify_cq_moderation_mode(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx5_core_modify_cq_moderation(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
