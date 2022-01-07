; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_ipsec.c_mlx5_fpga_ipsec_sa_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_ipsec.c_mlx5_fpga_ipsec_sa_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ipsec_command_context = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Failure waiting for IPSec command response\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_SACMD_COMPLETE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_ipsec_sa_cmd_wait(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_ipsec_command_context*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.mlx5_ipsec_command_context*
  store %struct.mlx5_ipsec_command_context* %7, %struct.mlx5_ipsec_command_context** %4, align 8
  %8 = load %struct.mlx5_ipsec_command_context*, %struct.mlx5_ipsec_command_context** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_ipsec_command_context, %struct.mlx5_ipsec_command_context* %8, i32 0, i32 3
  %10 = call i32 @wait_for_completion(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.mlx5_ipsec_command_context*, %struct.mlx5_ipsec_command_context** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_ipsec_command_context, %struct.mlx5_ipsec_command_context* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mlx5_fpga_warn(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %1
  %21 = load %struct.mlx5_ipsec_command_context*, %struct.mlx5_ipsec_command_context** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_ipsec_command_context, %struct.mlx5_ipsec_command_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLX5_FPGA_IPSEC_SACMD_COMPLETE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.mlx5_ipsec_command_context*, %struct.mlx5_ipsec_command_context** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_ipsec_command_context, %struct.mlx5_ipsec_command_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.mlx5_ipsec_command_context*, %struct.mlx5_ipsec_command_context** %4, align 8
  %35 = call i32 @kfree(%struct.mlx5_ipsec_command_context* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mlx5_fpga_warn(i32, i8*) #1

declare dso_local i32 @kfree(%struct.mlx5_ipsec_command_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
