; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_query_port_prio_tc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_query_port_prio_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@qtct_reg = common dso_local global i32 0, align 4
@port_number = common dso_local global i32 0, align 4
@MLX5_REG_QTCT = common dso_local global i32 0, align 4
@tclass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_port_prio_tc(%struct.mlx5_core_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @qtct_reg, align 4
  %12 = call i32 @MLX5_ST_SZ_DW(i32 %11)
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @qtct_reg, align 4
  %17 = call i32 @MLX5_ST_SZ_DW(i32 %16)
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = mul nuw i64 4, %13
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %15, i32 0, i32 %21)
  %23 = mul nuw i64 4, %18
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(i32* %19, i32 0, i32 %24)
  %26 = load i32, i32* @qtct_reg, align 4
  %27 = load i32, i32* @port_number, align 4
  %28 = call i32 @MLX5_SET(i32 %26, i32* %15, i32 %27, i32 1)
  %29 = load i32, i32* @qtct_reg, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @MLX5_SET(i32 %29, i32* %15, i32 %30, i32 %31)
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %34 = mul nuw i64 4, %13
  %35 = trunc i64 %34 to i32
  %36 = mul nuw i64 4, %18
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @MLX5_REG_QTCT, align 4
  %39 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %33, i32* %15, i32 %35, i32* %19, i32 %37, i32 %38, i32 0, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @qtct_reg, align 4
  %44 = load i32, i32* @tclass, align 4
  %45 = call i32 @MLX5_GET(i32 %43, i32* %19, i32 %44)
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %3
  %48 = load i32, i32* %10, align 4
  %49 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
