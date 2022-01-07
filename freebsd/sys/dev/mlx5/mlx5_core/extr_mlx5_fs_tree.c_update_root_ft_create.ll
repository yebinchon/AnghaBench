; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_update_root_ft_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_update_root_ft_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { %struct.mlx5_flow_table*, i32 }
%struct.mlx5_flow_table = type { i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Update root flow table of id=%u failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*)* @update_root_ft_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_root_ft_create(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %5 = alloca %struct.mlx5_flow_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %4, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @INT_MAX, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %9, i32 0, i32 0
  %11 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %12 = icmp ne %struct.mlx5_flow_table* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %14, i32 0, i32 0
  %16 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %15, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mlx5_cmd_update_root_ft(i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %55

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mlx5_core_warn(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %53

49:                                               ; preds = %38
  %50 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %51 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %51, i32 0, i32 0
  store %struct.mlx5_flow_table* %50, %struct.mlx5_flow_table** %52, align 8
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %36
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @mlx5_cmd_update_root_ft(i32, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
