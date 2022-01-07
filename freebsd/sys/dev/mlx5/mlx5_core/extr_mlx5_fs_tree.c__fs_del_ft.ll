; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__fs_del_ft.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__fs_del_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.fs_prio = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"flow steering can't destroy ft %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_flow_table*)* @_fs_del_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_fs_del_ft(%struct.mlx5_flow_table* %0) #0 {
  %2 = alloca %struct.mlx5_flow_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.fs_prio*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %2, align 8
  %6 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %6, i32 0, i32 0
  %8 = call %struct.mlx5_core_dev* @fs_get_dev(%struct.TYPE_2__* %7)
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %4, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlx5_cmd_fs_destroy_ft(%struct.mlx5_core_dev* %9, i32 %12, i32 %15, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %24 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %31 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %2, align 8
  %32 = call i32 @fs_get_parent(%struct.fs_prio* %30, %struct.mlx5_flow_table* %31)
  %33 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %34 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  ret void
}

declare dso_local %struct.mlx5_core_dev* @fs_get_dev(%struct.TYPE_2__*) #1

declare dso_local i32 @mlx5_cmd_fs_destroy_ft(%struct.mlx5_core_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @fs_get_parent(%struct.fs_prio*, %struct.mlx5_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
