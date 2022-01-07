; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cong.c_mlx5_ib_get_all_cc_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cong.c_mlx5_ib_get_all_cc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@query_cong_params_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_IB_CONG_PARAMS_NUM = common dso_local global i64 0, align 8
@congestion_parameters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @mlx5_ib_get_all_cc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_get_all_cc_params(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %10 = load i32, i32* @query_cong_params_out, align 4
  %11 = call i32 @MLX5_ST_SZ_BYTES(i32 %10)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @MLX5_IB_CONG_PARAMS_NUM, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @mlx5_ib_param_to_node(i64 %27)
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @mlx5_ib_param_to_node(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @mlx5_cmd_query_cong_params(i32 %35, i32 %36, i8* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %61

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i32, i32* @query_cong_params_out, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @congestion_parameters, align 4
  %48 = call i8* @MLX5_ADDR_OF(i32 %45, i8* %46, i32 %47)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @mlx5_get_cc_param_val(i8* %49, i64 %50)
  %52 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %44
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %21

61:                                               ; preds = %42, %21
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @kfree(i8* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_ib_param_to_node(i64) #1

declare dso_local i32 @mlx5_cmd_query_cong_params(i32, i32, i8*, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @mlx5_get_cc_param_val(i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
