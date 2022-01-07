; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_char.c_mem_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_char.c_mem_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_tools_dev = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Failed to read %zu bytes at address 0x%jx: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_tools_dev*, i8*, i64, i64, i32, i64*)* @mem_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_read(%struct.mlx5_fpga_tools_dev* %0, i8* %1, i64 %2, i64 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_fpga_tools_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_fpga_tools_dev* %0, %struct.mlx5_fpga_tools_dev** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %15 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %8, align 8
  %16 = getelementptr inbounds %struct.mlx5_fpga_tools_dev, %struct.mlx5_fpga_tools_dev* %15, i32 0, i32 1
  %17 = call i32 @sx_xlock_sig(i32* %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %7, align 4
  br label %52

22:                                               ; preds = %6
  %23 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %8, align 8
  %24 = getelementptr inbounds %struct.mlx5_fpga_tools_dev, %struct.mlx5_fpga_tools_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @mlx5_fpga_mem_read(i32 %25, i64 %26, i64 %27, i8* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5_fpga_tools_dev, %struct.mlx5_fpga_tools_dev* %31, i32 0, i32 1
  %33 = call i32 @sx_xunlock(i32* %32)
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %22
  %37 = load %struct.mlx5_fpga_tools_dev*, %struct.mlx5_fpga_tools_dev** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5_fpga_tools_dev, %struct.mlx5_fpga_tools_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mlx5_fpga_dev(i32 %39)
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %43, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %52

48:                                               ; preds = %22
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %13, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %36, %20
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @sx_xlock_sig(i32*) #1

declare dso_local i32 @mlx5_fpga_mem_read(i32, i64, i64, i8*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @mlx5_fpga_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
