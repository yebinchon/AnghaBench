; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_tis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_tis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32*, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@create_tis_in = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@prio = common dso_local global i32 0, align 4
@transport_domain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32)* @mlx5e_open_tis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_tis(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 2
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  store %struct.mlx5_core_dev* %11, %struct.mlx5_core_dev** %5, align 8
  %12 = load i32, i32* @create_tis_in, align 4
  %13 = call i32 @MLX5_ST_SZ_DW(i32 %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @create_tis_in, align 4
  %18 = load i32, i32* @ctx, align 4
  %19 = call i8* @MLX5_ADDR_OF(i32 %17, i32* %16, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = mul nuw i64 4, %14
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %16, i32 0, i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @prio, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @MLX5_SET(i8* %23, i8* %24, i32 %25, i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @transport_domain, align 4
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @MLX5_SET(i8* %28, i8* %29, i32 %30, i32 %33)
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %36 = mul nuw i64 4, %14
  %37 = trunc i64 %36 to i32
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @mlx5_core_create_tis(%struct.mlx5_core_dev* %35, i32* %16, i32 %37, i32* %43)
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32 %44
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_tis(%struct.mlx5_core_dev*, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
