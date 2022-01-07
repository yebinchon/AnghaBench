; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_cleanup_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_cleanup_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @mlx5_cleanup_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_cleanup_once(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %3 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %4 = call i32 @mlx5_fpga_cleanup(%struct.mlx5_core_dev* %3)
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %6 = call i32 @mlx5_cleanup_reserved_gids(%struct.mlx5_core_dev* %5)
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = call i32 @mlx5_cleanup_mr_table(%struct.mlx5_core_dev* %7)
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %10 = call i32 @mlx5_cleanup_srq_table(%struct.mlx5_core_dev* %9)
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %12 = call i32 @mlx5_cleanup_qp_table(%struct.mlx5_core_dev* %11)
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %14 = call i32 @mlx5_cleanup_cq_table(%struct.mlx5_core_dev* %13)
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %16 = call i32 @mlx5_eq_cleanup(%struct.mlx5_core_dev* %15)
  ret void
}

declare dso_local i32 @mlx5_fpga_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_reserved_gids(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_mr_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_srq_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_qp_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_cq_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eq_cleanup(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
