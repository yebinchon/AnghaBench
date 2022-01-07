; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_get_default_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_get_default_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.net_dim_cq_moder = type { i64 }

@MLX5E_DIM_DEFAULT_PROFILE = common dso_local global i32 0, align 4
@MLX5E_DIM_MAX_RX_CQ_MODERATION_PKTS_WITH_LRO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, i32, %struct.net_dim_cq_moder*)* @mlx5e_get_default_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_get_default_profile(%struct.mlx5e_priv* %0, i32 %1, %struct.net_dim_cq_moder* %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_dim_cq_moder*, align 8
  %7 = alloca %struct.net_dim_cq_moder, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.net_dim_cq_moder* %2, %struct.net_dim_cq_moder** %6, align 8
  %8 = load %struct.net_dim_cq_moder*, %struct.net_dim_cq_moder** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MLX5E_DIM_DEFAULT_PROFILE, align 4
  %11 = call i64 @net_dim_get_profile(i32 %9, i32 %10)
  %12 = getelementptr inbounds %struct.net_dim_cq_moder, %struct.net_dim_cq_moder* %7, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = bitcast %struct.net_dim_cq_moder* %8 to i8*
  %14 = bitcast %struct.net_dim_cq_moder* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.net_dim_cq_moder*, %struct.net_dim_cq_moder** %6, align 8
  %22 = getelementptr inbounds %struct.net_dim_cq_moder, %struct.net_dim_cq_moder* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLX5E_DIM_MAX_RX_CQ_MODERATION_PKTS_WITH_LRO, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @MLX5E_DIM_MAX_RX_CQ_MODERATION_PKTS_WITH_LRO, align 8
  %28 = load %struct.net_dim_cq_moder*, %struct.net_dim_cq_moder** %6, align 8
  %29 = getelementptr inbounds %struct.net_dim_cq_moder, %struct.net_dim_cq_moder* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %20, %3
  ret void
}

declare dso_local i64 @net_dim_get_profile(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
