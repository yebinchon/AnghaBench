; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_build_ifp_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_build_ifp_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i64, i64, i64, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE = common dso_local global i32 0, align 4
@cq_period_start_from_cqe = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC_FROM_CQE = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_PKTS = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_PKTS = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_MIN_RX_WQES = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_RX_HASH_LOG_TBL_SZ = common dso_local global i64 0, align 8
@MLX5E_PARAMS_DEFAULT_LRO_WQE_SZ = common dso_local global i32 0, align 4
@mlx5e_update_stats_work = common dso_local global i32 0, align 4
@mlx5e_update_carrier_work = common dso_local global i32 0, align 4
@mlx5e_set_rx_mode_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5e_priv*, i32)* @mlx5e_build_ifp_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_build_ifp_priv(%struct.mlx5_core_dev* %0, %struct.mlx5e_priv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5e_priv* %1, %struct.mlx5e_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE, align 4
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 17
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE, align 4
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 16
  store i32 %13, i32* %16, align 4
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %18 = load i32, i32* @cq_period_start_from_cqe, align 4
  %19 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC_FROM_CQE, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 15
  store i32 %26, i32* %29, align 8
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %31 = load i32, i32* @cq_period_start_from_cqe, align 4
  %32 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_PKTS, align 4
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 14
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC, align 4
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 13
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_PKTS, align 4
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 12
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @MLX5E_PARAMS_DEFAULT_MIN_RX_WQES, align 4
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 11
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @order_base_2(i32 %55)
  %57 = load i64, i64* @MLX5E_PARAMS_DEFAULT_RX_HASH_LOG_TBL_SZ, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %25
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @order_base_2(i32 %60)
  br label %64

62:                                               ; preds = %25
  %63 = load i64, i64* @MLX5E_PARAMS_DEFAULT_RX_HASH_LOG_TBL_SZ, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i64 [ %61, %59 ], [ %63, %62 ]
  %66 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %67 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 10
  store i64 %65, i64* %68, align 8
  %69 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %73 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %76 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %78 = call i32 @mlx5e_get_max_inline_cap(%struct.mlx5_core_dev* %77)
  %79 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %80 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 9
  store i32 %78, i32* %81, align 8
  %82 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %83 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %84 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 8
  %86 = call i32 @mlx5_query_min_inline(%struct.mlx5_core_dev* %82, i32* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %64
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %145

91:                                               ; preds = %64
  %92 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %93 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  %95 = load i32, i32* @MLX5E_PARAMS_DEFAULT_LRO_WQE_SZ, align 4
  %96 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %97 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 7
  store i32 %95, i32* %98, align 8
  %99 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %100 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %103 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %104 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %103, i32 0, i32 9
  store %struct.mlx5_core_dev* %102, %struct.mlx5_core_dev** %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %107 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  store i32 %105, i32* %108, align 8
  %109 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %110 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 5
  store i32 1, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i64 @order_base_2(i32 %112)
  %114 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %115 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %114, i32 0, i32 8
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i64 @roundup_pow_of_two(i32 %116)
  %118 = sub nsw i64 %117, 1
  %119 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %120 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %119, i32 0, i32 7
  store i64 %118, i64* %120, align 8
  %121 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %122 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %126 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %128 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %132 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %131, i32 0, i32 6
  store i64 %130, i64* %132, align 8
  %133 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %134 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %133, i32 0, i32 4
  %135 = load i32, i32* @mlx5e_update_stats_work, align 4
  %136 = call i32 @INIT_WORK(i32* %134, i32 %135)
  %137 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %138 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %137, i32 0, i32 3
  %139 = load i32, i32* @mlx5e_update_carrier_work, align 4
  %140 = call i32 @INIT_WORK(i32* %138, i32 %139)
  %141 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %142 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %141, i32 0, i32 2
  %143 = load i32, i32* @mlx5e_set_rx_mode_work, align 4
  %144 = call i32 @INIT_WORK(i32* %142, i32 %143)
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %91, %89
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @order_base_2(i32) #1

declare dso_local i32 @mlx5e_get_max_inline_cap(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_query_min_inline(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
