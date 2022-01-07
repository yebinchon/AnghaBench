; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_core.c_mlx5_fpga_device_load_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_core.c_mlx5_fpga_device_load_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i64, i32, i32, i32 }
%struct.mlx5_fpga_query = type { i64, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to query status: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Status %u; Admin image %u; Oper image %u\0A\00", align 1
@MLX5_FPGA_MORSE = common dso_local global i64 0, align 8
@MLX5_FPGA_MORSEQ = common dso_local global i64 0, align 8
@MLX5_FPGA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"%s image failed to load; status %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*)* @mlx5_fpga_device_load_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_device_load_check(%struct.mlx5_fpga_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca %struct.mlx5_fpga_query, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %3, align 8
  %7 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mlx5_fpga_query(i32 %9, %struct.mlx5_fpga_query* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mlx5_fpga_info(%struct.mlx5_fpga_device* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %33, i32 %35, i32 %37)
  %39 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @MLX5_CAP_FPGA(i32 %41, i64 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @MLX5_FPGA_MORSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %18
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @MLX5_FPGA_MORSEQ, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %18
  store i32 0, i32* %2, align 4
  br label %69

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MLX5_FPGA_STATUS_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %59 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %60 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @mlx5_fpga_image_name(i32 %61)
  %63 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %62, i64 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %57, %51, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @mlx5_fpga_query(i32, %struct.mlx5_fpga_query*) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32, ...) #1

declare dso_local i32 @mlx5_fpga_info(%struct.mlx5_fpga_device*, i8*, i64, i32, i32) #1

declare dso_local i64 @MLX5_CAP_FPGA(i32, i64) #1

declare dso_local i32 @mlx5_fpga_image_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
