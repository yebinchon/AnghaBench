; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_query_port_tc_rate_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_query_port_tc_rate_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@qetc_reg = common dso_local global i32 0, align 4
@tc_configuration = common dso_local global i32* null, align 8
@ets_tcn_config_reg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_port_tc_rate_limit(%struct.mlx5_core_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @qetc_reg, align 4
  %15 = call i32 @MLX5_ST_SZ_DW(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %20 = mul nuw i64 4, %16
  %21 = trunc i64 %20 to i32
  %22 = call i32 @mlx5_query_port_qetcr_reg(%struct.mlx5_core_dev* %19, i32* %18, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %61

27:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %31 = call i32 @mlx5_max_tc(%struct.mlx5_core_dev* %30)
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load i32, i32* @qetc_reg, align 4
  %35 = load i32*, i32** @tc_configuration, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @MLX5_ADDR_OF(i32 %34, i32* %18, i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* @ets_tcn_config_reg, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @MLX5_GET(i32 %41, i8* %42, i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* @ets_tcn_config_reg, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @MLX5_GET(i32 %49, i8* %50, i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %33
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %28

60:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %60, %25
  %62 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_query_port_qetcr_reg(%struct.mlx5_core_dev*, i32*, i32) #1

declare dso_local i32 @mlx5_max_tc(%struct.mlx5_core_dev*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
