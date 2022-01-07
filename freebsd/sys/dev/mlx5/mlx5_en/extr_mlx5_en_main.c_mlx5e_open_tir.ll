; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_tir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_tir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32*, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@create_tir_in = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tir_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32)* @mlx5e_open_tir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_tir(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %6, align 8
  %14 = load i32, i32* @create_tir_in, align 4
  %15 = call i32 @MLX5_ST_SZ_BYTES(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32* @mlx5_vzalloc(i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %2
  %24 = load i32, i32* @create_tir_in, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @tir_context, align 4
  %27 = call i8* @MLX5_ADDR_OF(i32 %24, i32* %25, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mlx5e_build_tir_ctx(%struct.mlx5e_priv* %28, i8* %29, i32 %30)
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @mlx5_core_create_tir(%struct.mlx5_core_dev* %32, i32* %33, i32 %34, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @kvfree(i32* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %23, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @mlx5e_build_tir_ctx(%struct.mlx5e_priv*, i8*, i32) #1

declare dso_local i32 @mlx5_core_create_tir(%struct.mlx5_core_dev*, i32*, i32, i32*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
