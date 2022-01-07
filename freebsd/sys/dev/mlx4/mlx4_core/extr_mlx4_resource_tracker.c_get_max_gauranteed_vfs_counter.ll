; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_get_max_gauranteed_vfs_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_get_max_gauranteed_vfs_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MLX4_PF_COUNTERS_PER_PORT = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @get_max_gauranteed_vfs_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_gauranteed_vfs_counter(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %3 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 %6, 1
  %8 = load i32, i32* @MLX4_PF_COUNTERS_PER_PORT, align 4
  %9 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sub nsw i32 %7, %10
  %12 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %13 = sdiv i32 %11, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
