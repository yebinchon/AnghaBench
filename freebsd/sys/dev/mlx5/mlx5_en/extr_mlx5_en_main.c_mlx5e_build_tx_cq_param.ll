; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_build_tx_cq_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_build_tx_cq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.mlx5e_cq_param = type { i8* }

@log_cq_size = common dso_local global i32 0, align 4
@cq_period = common dso_local global i32 0, align 4
@cq_max_count = common dso_local global i32 0, align 4
@cq_period_mode = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@cq_period_start_from_cqe = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_cq_param*)* @mlx5e_build_tx_cq_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_tx_cq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_cq_param* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_cq_param*, align 8
  %5 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq_param** %4, align 8
  %6 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @log_cq_size, align 4
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @MLX5_SET(i8* %9, i8* %10, i32 %11, i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @cq_period, align 4
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MLX5_SET(i8* %17, i8* %18, i32 %19, i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @cq_max_count, align 4
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MLX5_SET(i8* %25, i8* %26, i32 %27, i32 %31)
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %43 [
    i32 0, label %37
  ]

37:                                               ; preds = %2
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @cq_period_mode, align 4
  %41 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %42 = call i32 @MLX5_SET(i8* %38, i8* %39, i32 %40, i32 %41)
  br label %63

43:                                               ; preds = %2
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @cq_period_start_from_cqe, align 4
  %48 = call i32 @MLX5_CAP_GEN(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* @cq_period_mode, align 4
  %54 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 4
  %55 = call i32 @MLX5_SET(i8* %51, i8* %52, i32 %53, i32 %54)
  br label %62

56:                                               ; preds = %43
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @cq_period_mode, align 4
  %60 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %61 = call i32 @MLX5_SET(i8* %57, i8* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %65 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %4, align 8
  %66 = call i32 @mlx5e_build_common_cq_param(%struct.mlx5e_priv* %64, %struct.mlx5e_cq_param* %65)
  ret void
}

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5e_build_common_cq_param(%struct.mlx5e_priv*, %struct.mlx5e_cq_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
