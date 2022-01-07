; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_mr.c_mlx5_get_psv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_mr.c_mlx5_get_psv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@create_psv_out = common dso_local global i32 0, align 4
@psv1_index = common dso_local global i32 0, align 4
@psv2_index = common dso_local global i32 0, align 4
@psv3_index = common dso_local global i32 0, align 4
@psv0_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mlx5_get_psv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_get_psv(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %22 [
    i32 1, label %7
    i32 2, label %12
    i32 3, label %17
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @create_psv_out, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @psv1_index, align 4
  %11 = call i32 @MLX5_GET(i32 %8, i32* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* @create_psv_out, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @psv2_index, align 4
  %16 = call i32 @MLX5_GET(i32 %13, i32* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* @create_psv_out, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @psv3_index, align 4
  %21 = call i32 @MLX5_GET(i32 %18, i32* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @create_psv_out, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @psv0_index, align 4
  %26 = call i32 @MLX5_GET(i32 %23, i32* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %17, %12, %7
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
