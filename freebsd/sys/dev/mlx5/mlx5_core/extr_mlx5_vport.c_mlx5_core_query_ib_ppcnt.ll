; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_core_query_ib_ppcnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_core_query_ib_ppcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ppcnt_reg = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@grp = common dso_local global i32 0, align 4
@MLX5_INFINIBAND_PORT_COUNTERS_GROUP = common dso_local global i32 0, align 4
@MLX5_REG_PPCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_query_ib_ppcnt(%struct.mlx5_core_dev* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i32* @mlx5_vzalloc(i64 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load i32, i32* @ppcnt_reg, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* @local_port, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @MLX5_SET(i32 %21, i32* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @ppcnt_reg, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* @grp, align 4
  %29 = load i32, i32* @MLX5_INFINIBAND_PORT_COUNTERS_GROUP, align 4
  %30 = call i32 @MLX5_SET(i32 %26, i32* %27, i32 %28, i32 %29)
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @MLX5_REG_PPCNT, align 4
  %37 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %31, i32* %32, i64 %33, i8* %34, i64 %35, i32 %36, i32 0, i32 0)
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @kvfree(i32* %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %20, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32* @mlx5_vzalloc(i64) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i32*, i64, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
