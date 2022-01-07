; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_build_rq_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_build_rq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5e_rq_param = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i64, i64 }

@wq_type = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_LINKED_LIST = common dso_local global i32 0, align 4
@end_padding_mode = common dso_local global i32 0, align 4
@MLX5_WQ_END_PAD_MODE_ALIGN = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@wq = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_rq_param*)* @mlx5e_build_rq_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_rq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_rq_param* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_rq_param*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_rq_param* %1, %struct.mlx5e_rq_param** %4, align 8
  %9 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = call i8* @MLX5_ADDR_OF(i8* %12, i8* %13, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %18 = call i32 @mlx5e_get_wqe_sz(%struct.mlx5e_priv* %17, i32* %7, i32* %8)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @wq_type, align 4
  %22 = load i32, i32* @MLX5_WQ_TYPE_LINKED_LIST, align 4
  %23 = call i32 @MLX5_SET(i8* %19, i8* %20, i32 %21, i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @end_padding_mode, align 4
  %27 = load i32, i32* @MLX5_WQ_END_PAD_MODE_ALIGN, align 4
  %28 = call i32 @MLX5_SET(i8* %24, i8* %25, i32 %26, i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @log_wq_stride, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ilog2(i32 %36)
  %38 = call i32 @MLX5_SET(i8* %29, i8* %30, i32 %31, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @log_wq_sz, align 4
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MLX5_SET(i8* %39, i8* %40, i32 %41, i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @pd, align 4
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MLX5_SET(i8* %47, i8* %48, i32 %49, i32 %52)
  %54 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @mlx5e_get_wqe_sz(%struct.mlx5e_priv*, i32*, i32*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
