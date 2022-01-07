; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_translate_active_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_translate_active_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@MLX5_IB_WIDTH_1X = common dso_local global i32 0, align 4
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@MLX5_IB_WIDTH_2X = common dso_local global i32 0, align 4
@IB_WIDTH_2X = common dso_local global i32 0, align 4
@MLX5_IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@MLX5_IB_WIDTH_8X = common dso_local global i32 0, align 4
@IB_WIDTH_8X = common dso_local global i32 0, align 4
@MLX5_IB_WIDTH_12X = common dso_local global i32 0, align 4
@IB_WIDTH_12X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid active_width %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32*)* @translate_active_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_active_width(%struct.ib_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %9)
  store %struct.mlx5_ib_dev* %10, %struct.mlx5_ib_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MLX5_IB_WIDTH_1X, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @IB_WIDTH_1X, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MLX5_IB_WIDTH_2X, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @IB_WIDTH_2X, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %59

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MLX5_IB_WIDTH_4X, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @IB_WIDTH_4X, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %58

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MLX5_IB_WIDTH_8X, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @IB_WIDTH_8X, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %57

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MLX5_IB_WIDTH_12X, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @IB_WIDTH_12X, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %56

50:                                               ; preds = %42
  %51 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %47
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58, %23
  br label %60

60:                                               ; preds = %59, %15
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
