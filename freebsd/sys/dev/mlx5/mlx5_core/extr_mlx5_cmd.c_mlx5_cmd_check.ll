; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@mbox_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s(0x%x) op_mod(0x%x) failed, status %s(0x%x), syndrome (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i8*, i8*)* @mlx5_cmd_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_check(%struct.mlx5_core_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @mlx5_cmd_mbox_status(i8* %12, i32* %9, i32* %8)
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load i32, i32* @mbox_in, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @MLX5_GET(i32 %18, i8* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @mbox_in, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @MLX5_GET(i32 %22, i8* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @mlx5_command_str(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @cmd_status_str(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %26, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @cmd_status_to_err_helper(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %17, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @mlx5_cmd_mbox_status(i8*, i32*, i32*) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_command_str(i32) #1

declare dso_local i32 @cmd_status_str(i32) #1

declare dso_local i32 @cmd_status_to_err_helper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
