; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_build_rx_cq_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_build_rx_cq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.mlx5e_cq_param = type { i8* }
%struct.net_dim_cq_moder = type { i32, i32 }

@mini_cqe_res_format = common dso_local global i32 0, align 4
@MLX5_CQE_FORMAT_HASH = common dso_local global i32 0, align 4
@cqe_compression_en = common dso_local global i32 0, align 4
@log_cq_size = common dso_local global i32 0, align 4
@cq_period = common dso_local global i32 0, align 4
@cq_max_count = common dso_local global i32 0, align 4
@cq_period_mode = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@cq_period_start_from_cqe = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i32 0, align 4
@NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_cq_param*)* @mlx5e_build_rx_cq_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_rx_cq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_cq_param* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_cq_param*, align 8
  %5 = alloca %struct.net_dim_cq_moder, align 4
  %6 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq_param** %4, align 8
  %7 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @mini_cqe_res_format, align 4
  %19 = load i32, i32* @MLX5_CQE_FORMAT_HASH, align 4
  %20 = call i32 @MLX5_SET(i8* %16, i8* %17, i32 %18, i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @cqe_compression_en, align 4
  %24 = call i32 @MLX5_SET(i8* %21, i8* %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @log_cq_size, align 4
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MLX5_SET(i8* %26, i8* %27, i32 %28, i32 %32)
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %152 [
    i32 0, label %38
    i32 1, label %60
    i32 2, label %96
    i32 3, label %117
  ]

38:                                               ; preds = %25
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @cq_period, align 4
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @MLX5_SET(i8* %39, i8* %40, i32 %41, i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @cq_max_count, align 4
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MLX5_SET(i8* %47, i8* %48, i32 %49, i32 %53)
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @cq_period_mode, align 4
  %58 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %59 = call i32 @MLX5_SET(i8* %55, i8* %56, i32 %57, i32 %58)
  br label %153

60:                                               ; preds = %25
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* @cq_period, align 4
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %65 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @MLX5_SET(i8* %61, i8* %62, i32 %63, i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @cq_max_count, align 4
  %72 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MLX5_SET(i8* %69, i8* %70, i32 %71, i32 %75)
  %77 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %78 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @cq_period_start_from_cqe, align 4
  %81 = call i32 @MLX5_CAP_GEN(i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %60
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* @cq_period_mode, align 4
  %87 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 4
  %88 = call i32 @MLX5_SET(i8* %84, i8* %85, i32 %86, i32 %87)
  br label %95

89:                                               ; preds = %60
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* @cq_period_mode, align 4
  %93 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %94 = call i32 @MLX5_SET(i8* %90, i8* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %83
  br label %153

96:                                               ; preds = %25
  %97 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %98 = load i32, i32* @NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %99 = call i32 @mlx5e_get_default_profile(%struct.mlx5e_priv* %97, i32 %98, %struct.net_dim_cq_moder* %5)
  %100 = load i8*, i8** %6, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* @cq_period, align 4
  %103 = getelementptr inbounds %struct.net_dim_cq_moder, %struct.net_dim_cq_moder* %5, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @MLX5_SET(i8* %100, i8* %101, i32 %102, i32 %104)
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* @cq_max_count, align 4
  %109 = getelementptr inbounds %struct.net_dim_cq_moder, %struct.net_dim_cq_moder* %5, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @MLX5_SET(i8* %106, i8* %107, i32 %108, i32 %110)
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* @cq_period_mode, align 4
  %115 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %116 = call i32 @MLX5_SET(i8* %112, i8* %113, i32 %114, i32 %115)
  br label %153

117:                                              ; preds = %25
  %118 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %119 = load i32, i32* @NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE, align 4
  %120 = call i32 @mlx5e_get_default_profile(%struct.mlx5e_priv* %118, i32 %119, %struct.net_dim_cq_moder* %5)
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* @cq_period, align 4
  %124 = getelementptr inbounds %struct.net_dim_cq_moder, %struct.net_dim_cq_moder* %5, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @MLX5_SET(i8* %121, i8* %122, i32 %123, i32 %125)
  %127 = load i8*, i8** %6, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* @cq_max_count, align 4
  %130 = getelementptr inbounds %struct.net_dim_cq_moder, %struct.net_dim_cq_moder* %5, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @MLX5_SET(i8* %127, i8* %128, i32 %129, i32 %131)
  %133 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %134 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @cq_period_start_from_cqe, align 4
  %137 = call i32 @MLX5_CAP_GEN(i32 %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %117
  %140 = load i8*, i8** %6, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* @cq_period_mode, align 4
  %143 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 4
  %144 = call i32 @MLX5_SET(i8* %140, i8* %141, i32 %142, i32 %143)
  br label %151

145:                                              ; preds = %117
  %146 = load i8*, i8** %6, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* @cq_period_mode, align 4
  %149 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %150 = call i32 @MLX5_SET(i8* %146, i8* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %139
  br label %153

152:                                              ; preds = %25
  br label %153

153:                                              ; preds = %152, %151, %96, %95, %38
  %154 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %155 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %4, align 8
  %156 = call i32 @mlx5e_dim_build_cq_param(%struct.mlx5e_priv* %154, %struct.mlx5e_cq_param* %155)
  %157 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %158 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %4, align 8
  %159 = call i32 @mlx5e_build_common_cq_param(%struct.mlx5e_priv* %157, %struct.mlx5e_cq_param* %158)
  ret void
}

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5e_get_default_profile(%struct.mlx5e_priv*, i32, %struct.net_dim_cq_moder*) #1

declare dso_local i32 @mlx5e_dim_build_cq_param(%struct.mlx5e_priv*, %struct.mlx5e_cq_param*) #1

declare dso_local i32 @mlx5e_build_common_cq_param(%struct.mlx5e_priv*, %struct.mlx5e_cq_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
