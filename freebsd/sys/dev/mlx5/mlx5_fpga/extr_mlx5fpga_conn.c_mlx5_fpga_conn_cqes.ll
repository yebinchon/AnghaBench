; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_cqes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Re-arming CQ with cc# %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_conn*, i32)* @mlx5_fpga_conn_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_conn_cqes(%struct.mlx5_fpga_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_fpga_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call %struct.mlx5_cqe64* @mlx5_cqwq_get_cqe(%struct.TYPE_6__* %12)
  store %struct.mlx5_cqe64* %13, %struct.mlx5_cqe64** %5, align 8
  %14 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %15 = icmp ne %struct.mlx5_cqe64* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %31

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @mlx5_cqwq_pop(%struct.TYPE_6__* %22)
  %24 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %25 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %26 = call i32 @mlx5_fpga_conn_handle_cqe(%struct.mlx5_fpga_conn* %24, %struct.mlx5_cqe64* %25)
  %27 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @mlx5_cqwq_update_db_record(%struct.TYPE_6__* %29)
  br label %6

31:                                               ; preds = %16, %6
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = call i32 @tasklet_schedule(i32* %37)
  br label %52

39:                                               ; preds = %31
  %40 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mlx5_fpga_dbg(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 (...) @wmb()
  %50 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %51 = call i32 @mlx5_fpga_conn_arm_cq(%struct.mlx5_fpga_conn* %50)
  br label %52

52:                                               ; preds = %39, %34
  ret void
}

declare dso_local %struct.mlx5_cqe64* @mlx5_cqwq_get_cqe(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx5_cqwq_pop(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx5_fpga_conn_handle_cqe(%struct.mlx5_fpga_conn*, %struct.mlx5_cqe64*) #1

declare dso_local i32 @mlx5_cqwq_update_db_record(%struct.TYPE_6__*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @mlx5_fpga_dbg(i32, i8*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mlx5_fpga_conn_arm_cq(%struct.mlx5_fpga_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
