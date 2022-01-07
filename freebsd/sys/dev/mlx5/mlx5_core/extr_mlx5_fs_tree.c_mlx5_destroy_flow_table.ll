; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_destroy_flow_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_destroy_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fs_prio = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mlx5_flow_root_namespace = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"flow steering failed to find root of priority %s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MLX5_CORE_FS_PRIO_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_destroy_flow_table(%struct.mlx5_flow_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_flow_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs_prio*, align 8
  %6 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %10 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %11 = call i32 @fs_get_parent(%struct.fs_prio* %9, %struct.mlx5_flow_table* %10)
  %12 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %13 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %12, i32 0, i32 2
  %14 = call %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_6__* %13)
  store %struct.mlx5_flow_root_namespace* %14, %struct.mlx5_flow_root_namespace** %6, align 8
  %15 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %16 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %15, i32 0, i32 2
  %17 = call %struct.mlx5_core_dev* @fs_get_dev(%struct.TYPE_6__* %16)
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %8, align 8
  %18 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %19 = icmp ne %struct.mlx5_flow_root_namespace* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %22 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %23 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %112

29:                                               ; preds = %1
  %30 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %31 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MLX5_CORE_FS_PRIO_SHARED, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %29
  %38 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %39 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %42 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %50, i32 0, i32 1
  %52 = call i32 @fs_put(%struct.TYPE_5__* %51)
  %53 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %54 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  store i32 0, i32* %2, align 4
  br label %112

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %29
  %58 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %59 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %67 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %68 = call i32 @update_root_ft_destroy(%struct.mlx5_flow_root_namespace* %66, %struct.mlx5_flow_table* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %95

72:                                               ; preds = %57
  %73 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %74 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %75 = call i32 @destroy_star_rule(%struct.mlx5_flow_table* %73, %struct.fs_prio* %74)
  %76 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %77 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %81 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %80, i32 0, i32 1
  %82 = call i32 @fs_remove_node_parent_locked(%struct.TYPE_5__* %81)
  %83 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %84 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %72
  %90 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %91 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  br label %93

93:                                               ; preds = %89, %72
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %112

95:                                               ; preds = %71
  %96 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %97 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %101 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %95
  %107 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %108 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  br label %110

110:                                              ; preds = %106, %95
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %93, %45, %20
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @fs_get_parent(%struct.fs_prio*, %struct.mlx5_flow_table*) #1

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_6__*) #1

declare dso_local %struct.mlx5_core_dev* @fs_get_dev(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fs_put(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @update_root_ft_destroy(%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*) #1

declare dso_local i32 @destroy_star_rule(%struct.mlx5_flow_table*, %struct.fs_prio*) #1

declare dso_local i32 @fs_remove_node_parent_locked(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
