; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fw.c_mlx5_reg_mcqi_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fw.c_mlx5_reg_mcqi_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@mcqi_reg = common dso_local global i32 0, align 4
@mcqi_cap = common dso_local global i32 0, align 4
@data_size = common dso_local global i32 0, align 4
@MLX5_REG_MCQI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i32*, i32*, i32*)* @mlx5_reg_mcqi_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_reg_mcqi_query(%struct.mlx5_core_dev* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* @mcqi_reg, align 4
  %17 = call i32 @MLX5_ST_SZ_DW(i32 %16)
  %18 = load i32, i32* @mcqi_cap, align 4
  %19 = call i32 @MLX5_ST_SZ_DW(i32 %18)
  %20 = add nsw i32 %17, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* @mcqi_reg, align 4
  %25 = call i32 @MLX5_ST_SZ_DW(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* @mcqi_reg, align 4
  %27 = call i32 @MLX5_ST_SZ_DW(i32 %26)
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %30 = mul nuw i64 4, %28
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %29, i32 0, i32 %31)
  %33 = mul nuw i64 4, %21
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32* %23, i32 0, i32 %34)
  %36 = load i32, i32* @mcqi_reg, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @MLX5_SET(i32 %36, i32* %29, i32 %37, i32 %38)
  %40 = load i32, i32* @mcqi_reg, align 4
  %41 = load i32, i32* @data_size, align 4
  %42 = load i32, i32* @mcqi_cap, align 4
  %43 = call i32 @MLX5_ST_SZ_BYTES(i32 %42)
  %44 = call i32 @MLX5_SET(i32 %40, i32* %29, i32 %41, i32 %43)
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %46 = mul nuw i64 4, %28
  %47 = trunc i64 %46 to i32
  %48 = mul nuw i64 4, %21
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @MLX5_REG_MCQI, align 4
  %51 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %45, i32* %29, i32 %47, i32* %23, i32 %49, i32 %50, i32 0, i32 0)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %5
  br label %77

55:                                               ; preds = %5
  %56 = load i32, i32* @mcqi_cap, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %23, i64 %58
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @MLX5_GET(i32 %56, i32* %59, i32* %60)
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @mcqi_cap, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %23, i64 %65
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @MLX5_GET(i32 %63, i32* %66, i32* %67)
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @mcqi_cap, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %23, i64 %72
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @MLX5_GET(i32 %70, i32* %73, i32* %74)
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %55, %54
  %78 = load i32, i32* %15, align 4
  %79 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32 %78
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
