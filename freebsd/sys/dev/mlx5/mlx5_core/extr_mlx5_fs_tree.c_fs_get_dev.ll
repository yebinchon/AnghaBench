; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_get_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_get_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.fs_base = type { i32 }
%struct.mlx5_flow_root_namespace = type { %struct.mlx5_core_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_core_dev* (%struct.fs_base*)* @fs_get_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_core_dev* @fs_get_dev(%struct.fs_base* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.fs_base*, align 8
  %4 = alloca %struct.mlx5_flow_root_namespace*, align 8
  store %struct.fs_base* %0, %struct.fs_base** %3, align 8
  %5 = load %struct.fs_base*, %struct.fs_base** %3, align 8
  %6 = call %struct.mlx5_flow_root_namespace* @find_root(%struct.fs_base* %5)
  store %struct.mlx5_flow_root_namespace* %6, %struct.mlx5_flow_root_namespace** %4, align 8
  %7 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %8 = icmp ne %struct.mlx5_flow_root_namespace* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %10, i32 0, i32 0
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %2, align 8
  br label %14

13:                                               ; preds = %1
  store %struct.mlx5_core_dev* null, %struct.mlx5_core_dev** %2, align 8
  br label %14

14:                                               ; preds = %13, %9
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  ret %struct.mlx5_core_dev* %15
}

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(%struct.fs_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
