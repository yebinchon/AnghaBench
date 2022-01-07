; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vsc.c_mlx5_vsc_set_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vsc.c_mlx5_vsc_set_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Unable to set vsc space, vsc_addr not initialized\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_VSC_SPACE_OFFSET = common dso_local global i64 0, align 8
@status = common dso_local global i32 0, align 4
@MLX5_VSC_SPACE_SUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Space 0x%x is not supported.\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_vsc_set_space(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %22 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @MLX5_VSC_SET(i32 %25, i32* %8, i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @MLX5_VSC_SPACE_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @pci_write_config(i32 %29, i64 %33, i32 %34, i32 4)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @MLX5_VSC_SPACE_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @pci_read_config(i32 %36, i64 %40, i32 4)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @status, align 4
  %44 = call i64 @MLX5_VSC_GET(i32 %42, i32* %8, i32 %43)
  %45 = load i64, i64* @MLX5_VSC_SPACE_SUPPORTED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %24
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENOTSUP, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @MLX5_VSC_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @MLX5_VSC_GET(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
