; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mem_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mem_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i64 }
%struct.mem_transfer = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, i8* }

@ENOTCONN = common dso_local global i32 0, align 4
@mem_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Transfer execution failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*, i64, i32, i8*, i32)* @mem_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_transaction(%struct.mlx5_fpga_device* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_fpga_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mem_transfer, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOTCONN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %61

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @mem_complete, align 4
  %39 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 1
  %42 = call i32 @init_completion(i32* %41)
  %43 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 2
  %44 = call i32 @mlx5_fpga_xfer_exec(%struct.TYPE_2__* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %20
  %48 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %61

51:                                               ; preds = %20
  %52 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 1
  %53 = call i32 @wait_for_completion(i32* %52)
  %54 = getelementptr inbounds %struct.mem_transfer, %struct.mem_transfer* %12, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60, %47, %17
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mlx5_fpga_xfer_exec(%struct.TYPE_2__*) #1

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
