; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_trans_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_trans_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32 }

@MLX5_FPGA_TRANSACTION_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Cannot access %zu bytes at once. Max is %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Cannot access %zu bytes. Must be full dwords\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Cannot access %zu bytes. Empty transaction not allowed\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Cannot access %zu bytes at unaligned address %jx\0A\00", align 1
@MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"Cannot access %zu bytes at address %jx. Crosses page boundary\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"Cannot access %zu bytes at cr-space address %jx. Must access a single dword\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*, i64, i64)* @trans_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trans_validate(%struct.mlx5_fpga_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MLX5_FPGA_TRANSACTION_MAX_SIZE, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @MLX5_FPGA_TRANSACTION_MAX_SIZE, align 8
  %15 = call i32 (%struct.mlx5_fpga_device*, i8*, i64, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 (%struct.mlx5_fpga_device*, i8*, i64, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %85

29:                                               ; preds = %18
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 (%struct.mlx5_fpga_device*, i8*, i64, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %85

38:                                               ; preds = %29
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 (%struct.mlx5_fpga_device*, i8*, i64, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %45, i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %85

50:                                               ; preds = %38
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS, align 8
  %53 = lshr i64 %51, %52
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %54, %55
  %57 = sub i64 %56, 1
  %58 = load i64, i64* @MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS, align 8
  %59 = lshr i64 %57, %58
  %60 = icmp ne i64 %53, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 (%struct.mlx5_fpga_device*, i8*, i64, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %62, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %85

68:                                               ; preds = %50
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %71 = call i64 @mlx5_fpga_ddr_base_get(%struct.mlx5_fpga_device* %70)
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 4
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 (%struct.mlx5_fpga_device*, i8*, i64, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %77, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %68
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %76, %61, %43, %32, %23, %11
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device*, i8*, i64, ...) #1

declare dso_local i64 @mlx5_fpga_ddr_base_get(%struct.mlx5_fpga_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
