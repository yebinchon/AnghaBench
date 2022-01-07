; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_refresh_rq_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_refresh_rq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mlx5e_rq = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.net_dim_cq_moder = type { i32, i32 }

@cq_period_mode_modify = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i32 0, align 4
@NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i32 0, align 4
@NET_DIM_CQ_PERIOD_MODE_DISABLED = common dso_local global i32 0, align 4
@MLX5E_DIM_DEFAULT_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_rq*)* @mlx5e_refresh_rq_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_refresh_rq_params(%struct.mlx5e_priv* %0, %struct.mlx5e_rq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_dim_cq_moder, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_rq* %1, %struct.mlx5e_rq** %5, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @cq_period_mode_modify, align 4
  %14 = call i64 @MLX5_CAP_GEN(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %2
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %24 [
    i32 0, label %21
    i32 2, label %21
  ]

21:                                               ; preds = %16, %16
  %22 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %28, i32 0, i32 1
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load i32, i32* @NET_DIM_CQ_PERIOD_MODE_DISABLED, align 4
  %32 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %35, i32 0, i32 1
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = call i32 @cancel_work_sync(i32* %40)
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %80

47:                                               ; preds = %27
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mlx5e_get_default_profile(%struct.mlx5e_priv* %48, i32 %49, %struct.net_dim_cq_moder* %9)
  %51 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.net_dim_cq_moder, %struct.net_dim_cq_moder* %9, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.net_dim_cq_moder, %struct.net_dim_cq_moder* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @mlx5_core_modify_cq_moderation_mode(i32 %53, i32* %56, i32 %58, i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %63, i32 0, i32 1
  %65 = call i32 @mtx_lock(i32* %64)
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @MLX5E_DIM_DEFAULT_PROFILE, align 4
  %74 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %78 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %77, i32 0, i32 1
  %79 = call i32 @mtx_unlock(i32* %78)
  br label %97

80:                                               ; preds = %27
  %81 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %88 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %92 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @mlx5_core_modify_cq_moderation_mode(i32 %83, i32* %86, i32 %90, i32 %94, i32 %95)
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %80, %47
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %115

99:                                               ; preds = %2
  %100 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %101 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %104 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %107 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %111 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mlx5_core_modify_cq_moderation(i32 %102, i32* %105, i32 %109, i32 %113)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %99, %97
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mlx5e_get_default_profile(%struct.mlx5e_priv*, i32, %struct.net_dim_cq_moder*) #1

declare dso_local i32 @mlx5_core_modify_cq_moderation_mode(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx5_core_modify_cq_moderation(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
