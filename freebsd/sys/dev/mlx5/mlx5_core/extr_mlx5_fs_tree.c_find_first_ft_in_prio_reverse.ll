; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_find_first_ft_in_prio_reverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_find_first_ft_in_prio_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32 }
%struct.fs_prio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (%struct.fs_prio*, %struct.list_head*)* @find_first_ft_in_prio_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @find_first_ft_in_prio_reverse(%struct.fs_prio* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.mlx5_flow_table*, align 8
  %4 = alloca %struct.fs_prio*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  store %struct.fs_prio* %0, %struct.fs_prio** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %7 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %8 = icmp ne %struct.fs_prio* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.mlx5_flow_table* null, %struct.mlx5_flow_table** %3, align 8
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %12 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %16 = load %struct.list_head*, %struct.list_head** %5, align 8
  %17 = call %struct.mlx5_flow_table* @_find_first_ft_in_prio_reverse(%struct.fs_prio* %15, %struct.list_head* %16)
  store %struct.mlx5_flow_table* %17, %struct.mlx5_flow_table** %6, align 8
  %18 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %19 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  store %struct.mlx5_flow_table* %22, %struct.mlx5_flow_table** %3, align 8
  br label %23

23:                                               ; preds = %10, %9
  %24 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  ret %struct.mlx5_flow_table* %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_flow_table* @_find_first_ft_in_prio_reverse(%struct.fs_prio*, %struct.list_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
