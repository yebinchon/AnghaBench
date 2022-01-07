; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_xfer.c_xfer_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_xfer.c_xfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfer_state = type { i32, %struct.mlx5_fpga_transaction* }
%struct.mlx5_fpga_transaction = type { i32 (%struct.mlx5_fpga_transaction*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfer_state*)* @xfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfer_complete(%struct.xfer_state* %0) #0 {
  %2 = alloca %struct.xfer_state*, align 8
  %3 = alloca %struct.mlx5_fpga_transaction*, align 8
  %4 = alloca i32, align 4
  store %struct.xfer_state* %0, %struct.xfer_state** %2, align 8
  %5 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %6 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %5, i32 0, i32 1
  %7 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %6, align 8
  store %struct.mlx5_fpga_transaction* %7, %struct.mlx5_fpga_transaction** %3, align 8
  %8 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %9 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %12 = call i32 @kfree(%struct.xfer_state* %11)
  %13 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %13, i32 0, i32 0
  %15 = load i32 (%struct.mlx5_fpga_transaction*, i32)*, i32 (%struct.mlx5_fpga_transaction*, i32)** %14, align 8
  %16 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %15(%struct.mlx5_fpga_transaction* %16, i32 %17)
  ret void
}

declare dso_local i32 @kfree(%struct.xfer_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
