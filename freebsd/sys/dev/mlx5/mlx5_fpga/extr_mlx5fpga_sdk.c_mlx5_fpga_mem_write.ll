; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mlx5_fpga_mem_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mlx5_fpga_mem_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i64 }

@MLX5_FPGA_ACCESS_TYPE_DONTCARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Writing %zu bytes at 0x%jx over %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"RDMA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"I2C\00", align 1
@MLX5_FPGA_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unexpected write access_type %u\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_mem_write(%struct.mlx5_fpga_device* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_fpga_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @MLX5_FPGA_ACCESS_TYPE_DONTCARE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 128, i32 129
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %16, %5
  %24 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %27, i8* %31)
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %57 [
    i32 128, label %34
    i32 129, label %46
  ]

34:                                               ; preds = %23
  %35 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @MLX5_FPGA_WRITE, align 4
  %40 = call i32 @mem_transaction(%struct.mlx5_fpga_device* %35, i64 %36, i64 %37, i8* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %66

45:                                               ; preds = %34
  br label %63

46:                                               ; preds = %23
  %47 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @mlx5_fpga_mem_write_i2c(%struct.mlx5_fpga_device* %47, i64 %48, i64 %49, i8* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %66

56:                                               ; preds = %46
  br label %63

57:                                               ; preds = %23
  %58 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EACCES, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %66

63:                                               ; preds = %56, %45
  %64 = load i64, i64* %8, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %57, %54, %43
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, i64, i32, i8*) #1

declare dso_local i32 @mem_transaction(%struct.mlx5_fpga_device*, i64, i64, i8*, i32) #1

declare dso_local i32 @mlx5_fpga_mem_write_i2c(%struct.mlx5_fpga_device*, i64, i64, i8*) #1

declare dso_local i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
