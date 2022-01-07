; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_qp_reserve_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c_mlx4_qp_reserve_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RES_QP = common dso_local global i32 0, align 4
@RES_OP_RESERVE = common dso_local global i32 0, align 4
@MLX4_CMD_ALLOC_RES = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_qp_reserve_range(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %11, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %11, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %22 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %5
  %25 = load i64, i64* %11, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 24
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @set_param_l(i32* %12, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @set_param_h(i32* %12, i32 %31)
  %33 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @RES_QP, align 4
  %36 = load i32, i32* @RES_OP_RESERVE, align 4
  %37 = load i32, i32* @MLX4_CMD_ALLOC_RES, align 4
  %38 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %39 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %40 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %33, i32 %34, i32* %13, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %55

45:                                               ; preds = %24
  %46 = call i32 @get_param_l(i32* %13)
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %6, align 4
  br label %55

48:                                               ; preds = %5
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @__mlx4_qp_reserve_range(%struct.mlx4_dev* %49, i32 %50, i32 %51, i32* %52, i64 %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %48, %45, %43
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @set_param_h(i32*, i32) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @__mlx4_qp_reserve_range(%struct.mlx4_dev*, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
