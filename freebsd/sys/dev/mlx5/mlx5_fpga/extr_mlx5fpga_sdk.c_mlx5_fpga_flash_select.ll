; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mlx5_fpga_flash_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mlx5_fpga_flash_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to select flash image: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_flash_select(%struct.mlx5_fpga_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %8, i32 0, i32 3
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 132, label %22
    i32 130, label %22
    i32 128, label %22
    i32 131, label %22
  ]

15:                                               ; preds = %2
  %16 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %16, i32 0, i32 3
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2, %2, %2, %2
  br label %23

23:                                               ; preds = %2, %22
  %24 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %24, i32 0, i32 3
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mlx5_fpga_image_select(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %43

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlx5_fpga_image_select(i32, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
