; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_create_autogrouped_shared_flow_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_create_autogrouped_shared_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32 }
%struct.fs_prio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (%struct.fs_prio*)* @mlx5_create_autogrouped_shared_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @mlx5_create_autogrouped_shared_flow_table(%struct.fs_prio* %0) #0 {
  %2 = alloca %struct.mlx5_flow_table*, align 8
  %3 = alloca %struct.fs_prio*, align 8
  %4 = alloca %struct.mlx5_flow_table*, align 8
  store %struct.fs_prio* %0, %struct.fs_prio** %3, align 8
  %5 = load %struct.fs_prio*, %struct.fs_prio** %3, align 8
  %6 = load %struct.fs_prio*, %struct.fs_prio** %3, align 8
  %7 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %6, i32 0, i32 0
  %8 = call %struct.mlx5_flow_table* @find_first_ft_in_prio(%struct.fs_prio* %5, i32* %7)
  store %struct.mlx5_flow_table* %8, %struct.mlx5_flow_table** %4, align 8
  %9 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %10 = icmp ne %struct.mlx5_flow_table* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  store %struct.mlx5_flow_table* %16, %struct.mlx5_flow_table** %2, align 8
  br label %18

17:                                               ; preds = %1
  store %struct.mlx5_flow_table* null, %struct.mlx5_flow_table** %2, align 8
  br label %18

18:                                               ; preds = %17, %11
  %19 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %2, align 8
  ret %struct.mlx5_flow_table* %19
}

declare dso_local %struct.mlx5_flow_table* @find_first_ft_in_prio(%struct.fs_prio*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
