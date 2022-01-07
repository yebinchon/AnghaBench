; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_create_mkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_create_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev*, %struct.ifnet* }
%struct.mlx5_core_dev = type { i32 }
%struct.ifnet = type { i32 }
%struct.mlx5_core_mr = type { i32 }

@create_mkey_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate inbox\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@access_mode = common dso_local global i32 0, align 4
@MLX5_ACCESS_MODE_PA = common dso_local global i32 0, align 4
@lw = common dso_local global i32 0, align 4
@lr = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@length64 = common dso_local global i32 0, align 4
@qpn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mlx5_core_create_mkey failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32, %struct.mlx5_core_mr*)* @mlx5e_create_mkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_mkey(%struct.mlx5e_priv* %0, i32 %1, %struct.mlx5_core_mr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_mr*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx5_core_mr* %2, %struct.mlx5_core_mr** %7, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 1
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %8, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 0
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  store %struct.mlx5_core_dev* %19, %struct.mlx5_core_dev** %9, align 8
  %20 = load i32, i32* @create_mkey_in, align 4
  %21 = call i32 @MLX5_ST_SZ_BYTES(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32* @mlx5_vzalloc(i32 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %28 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %77

31:                                               ; preds = %3
  %32 = load i32, i32* @create_mkey_in, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* @memory_key_mkey_entry, align 4
  %35 = call i8* @MLX5_ADDR_OF(i32 %32, i32* %33, i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* @access_mode, align 4
  %39 = load i32, i32* @MLX5_ACCESS_MODE_PA, align 4
  %40 = call i32 @MLX5_SET(i8* %36, i8* %37, i32 %38, i32 %39)
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* @lw, align 4
  %44 = call i32 @MLX5_SET(i8* %41, i8* %42, i32 %43, i32 1)
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @lr, align 4
  %48 = call i32 @MLX5_SET(i8* %45, i8* %46, i32 %47, i32 1)
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @pd, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @MLX5_SET(i8* %49, i8* %50, i32 %51, i32 %52)
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* @length64, align 4
  %57 = call i32 @MLX5_SET(i8* %54, i8* %55, i32 %56, i32 1)
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* @qpn, align 4
  %61 = call i32 @MLX5_SET(i8* %58, i8* %59, i32 %60, i32 16777215)
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %63 = load %struct.mlx5_core_mr*, %struct.mlx5_core_mr** %7, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev* %62, %struct.mlx5_core_mr* %63, i32* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %31
  %70 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 (%struct.ifnet*, i8*, ...) @mlx5_en_err(%struct.ifnet* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %31
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @kvfree(i32* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %26
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_en_err(%struct.ifnet*, i8*, ...) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev*, %struct.mlx5_core_mr*, i32*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
