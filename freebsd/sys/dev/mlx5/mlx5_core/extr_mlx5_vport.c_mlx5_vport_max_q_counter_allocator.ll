; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_vport_max_q_counter_allocator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_vport_max_q_counter_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@max_qp_cnt = common dso_local global i32 0, align 4
@MLX5_QCOUNTER_SETS_NETDEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unknown Client: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx5_core_dev*, i32)* @mlx5_vport_max_q_counter_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx5_vport_max_q_counter_allocator(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %15 [
    i32 128, label %7
    i32 129, label %13
  ]

7:                                                ; preds = %2
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = load i32, i32* @max_qp_cnt, align 4
  %10 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %8, i32 %9)
  %11 = load i64, i64* @MLX5_QCOUNTER_SETS_NETDEV, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %3, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load i64, i64* @MLX5_QCOUNTER_SETS_NETDEV, align 8
  store i64 %14, i64* %3, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %15, %13, %7
  %20 = load i64, i64* %3, align 8
  ret i64 %20
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
