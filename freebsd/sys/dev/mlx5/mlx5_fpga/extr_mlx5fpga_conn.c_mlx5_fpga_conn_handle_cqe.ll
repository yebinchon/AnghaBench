; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_handle_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_handle_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { i32 }
%struct.mlx5_cqe64 = type { i32 }
%struct.mlx5_err_cqe = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unexpected cqe opcode %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_conn*, %struct.mlx5_cqe64*)* @mlx5_fpga_conn_handle_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_conn_handle_cqe(%struct.mlx5_fpga_conn* %0, %struct.mlx5_cqe64* %1) #0 {
  %3 = alloca %struct.mlx5_fpga_conn*, align 8
  %4 = alloca %struct.mlx5_cqe64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %3, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %32 [
    i32 130, label %12
    i32 131, label %17
    i32 129, label %22
    i32 128, label %27
  ]

12:                                               ; preds = %2
  %13 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %14 = bitcast %struct.mlx5_cqe64* %13 to %struct.mlx5_err_cqe*
  %15 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %2, %12
  %18 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %19 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mlx5_fpga_conn_sq_cqe(%struct.mlx5_fpga_conn* %18, %struct.mlx5_cqe64* %19, i32 %20)
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %24 = bitcast %struct.mlx5_cqe64* %23 to %struct.mlx5_err_cqe*
  %25 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %2, %22
  %28 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %29 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mlx5_fpga_conn_rq_cqe(%struct.mlx5_fpga_conn* %28, %struct.mlx5_cqe64* %29, i32 %30)
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mlx5_fpga_warn(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %27, %17
  ret void
}

declare dso_local i32 @mlx5_fpga_conn_sq_cqe(%struct.mlx5_fpga_conn*, %struct.mlx5_cqe64*, i32) #1

declare dso_local i32 @mlx5_fpga_conn_rq_cqe(%struct.mlx5_fpga_conn*, %struct.mlx5_cqe64*, i32) #1

declare dso_local i32 @mlx5_fpga_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
