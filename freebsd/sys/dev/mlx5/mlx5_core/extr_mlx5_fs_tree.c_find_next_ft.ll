; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_find_next_ft.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_find_next_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32 }
%struct.fs_prio = type { %struct.fs_base }
%struct.fs_base = type { i32 }
%struct.mlx5_flow_namespace = type { %struct.fs_base }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (%struct.fs_prio*)* @find_next_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @find_next_ft(%struct.fs_prio* %0) #0 {
  %2 = alloca %struct.fs_prio*, align 8
  %3 = alloca %struct.mlx5_flow_table*, align 8
  %4 = alloca %struct.fs_base*, align 8
  %5 = alloca %struct.mlx5_flow_namespace*, align 8
  store %struct.fs_prio* %0, %struct.fs_prio** %2, align 8
  store %struct.mlx5_flow_table* null, %struct.mlx5_flow_table** %3, align 8
  br label %6

6:                                                ; preds = %41, %1
  %7 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %8 = icmp ne %struct.mlx5_flow_table* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load %struct.fs_prio*, %struct.fs_prio** %2, align 8
  %11 = icmp ne %struct.fs_prio* %10, null
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %42

14:                                               ; preds = %12
  %15 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  %16 = load %struct.fs_prio*, %struct.fs_prio** %2, align 8
  %17 = bitcast %struct.fs_prio* %16 to %struct.mlx5_flow_namespace*
  %18 = call i32 @fs_get_parent(%struct.mlx5_flow_namespace* %15, %struct.mlx5_flow_namespace* %17)
  %19 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  %20 = load %struct.fs_prio*, %struct.fs_prio** %2, align 8
  %21 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %21, i32 0, i32 0
  %23 = call %struct.mlx5_flow_table* @find_first_ft_in_ns(%struct.mlx5_flow_namespace* %19, i32* %22)
  store %struct.mlx5_flow_table* %23, %struct.mlx5_flow_table** %3, align 8
  %24 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %24, i32 0, i32 0
  store %struct.fs_base* %25, %struct.fs_base** %4, align 8
  %26 = load %struct.fs_prio*, %struct.fs_prio** %2, align 8
  %27 = bitcast %struct.fs_prio* %26 to %struct.mlx5_flow_namespace*
  %28 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  %29 = call i32 @fs_get_parent(%struct.mlx5_flow_namespace* %27, %struct.mlx5_flow_namespace* %28)
  %30 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %31 = icmp ne %struct.mlx5_flow_table* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %14
  %33 = load %struct.fs_prio*, %struct.fs_prio** %2, align 8
  %34 = icmp ne %struct.fs_prio* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.fs_prio*, %struct.fs_prio** %2, align 8
  %37 = bitcast %struct.fs_prio* %36 to %struct.mlx5_flow_namespace*
  %38 = load %struct.fs_base*, %struct.fs_base** %4, align 8
  %39 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %38, i32 0, i32 0
  %40 = call %struct.mlx5_flow_table* @_find_first_ft_in_prio(%struct.mlx5_flow_namespace* %37, i32* %39)
  store %struct.mlx5_flow_table* %40, %struct.mlx5_flow_table** %3, align 8
  br label %41

41:                                               ; preds = %35, %32, %14
  br label %6

42:                                               ; preds = %12
  %43 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  ret %struct.mlx5_flow_table* %43
}

declare dso_local i32 @fs_get_parent(%struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace*) #1

declare dso_local %struct.mlx5_flow_table* @find_first_ft_in_ns(%struct.mlx5_flow_namespace*, i32*) #1

declare dso_local %struct.mlx5_flow_table* @_find_first_ft_in_prio(%struct.mlx5_flow_namespace*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
