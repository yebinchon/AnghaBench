; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_reset_fw_if_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_reset_fw_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@mlx5_fw_reset_enable = common dso_local global i32 0, align 4
@MLX5_FW_RESET_SUPPORTED_OFFSET = common dso_local global i32 0, align 4
@MLX5_SENSOR_PCI_COMM_ERR = common dso_local global i64 0, align 8
@MLX5_SENSOR_NIC_DISABLED = common dso_local global i64 0, align 8
@MLX5_SENSOR_NIC_SW_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Not issuing FW reset. Either it's already done or won't help.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Issuing FW Reset\0A\00", align 1
@MLX5_NIC_IFC_SW_RESET = common dso_local global i64 0, align 8
@MLX5_NIC_IFC_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @reset_fw_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_fw_if_needed(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %6 = load i32, i32* @mlx5_fw_reset_enable, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %58

9:                                                ; preds = %1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @ioread32be(i32* %13)
  %15 = load i32, i32* @MLX5_FW_RESET_SUPPORTED_OFFSET, align 4
  %16 = ashr i32 %14, %15
  %17 = and i32 %16, 1
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  br label %58

21:                                               ; preds = %9
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %23 = call i64 @check_fatal_sensors(%struct.mlx5_core_dev* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @MLX5_SENSOR_PCI_COMM_ERR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @MLX5_SENSOR_NIC_DISABLED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @MLX5_SENSOR_NIC_SW_RESET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27, %21
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %37 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %36, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %58

38:                                               ; preds = %31
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %40 = call i32 @mlx5_core_info(%struct.mlx5_core_dev* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @ioread32be(i32* %44)
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = and i64 %47, 4294963200
  %49 = load i64, i64* @MLX5_NIC_IFC_SW_RESET, align 8
  %50 = load i64, i64* @MLX5_NIC_IFC_OFFSET, align 8
  %51 = shl i64 %49, %50
  %52 = or i64 %48, %51
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %54 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @iowrite32be(i64 %52, i32* %56)
  br label %58

58:                                               ; preds = %38, %35, %20, %8
  ret void
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i64 @check_fatal_sensors(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @iowrite32be(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
