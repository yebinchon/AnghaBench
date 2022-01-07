; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_create_auto_grouped_flow_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_create_auto_grouped_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx5_flow_namespace = type { i32 }
%struct.fs_prio = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX5_CORE_FS_PRIO_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_table* @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.mlx5_flow_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_flow_table*, align 8
  %13 = alloca %struct.fs_prio*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.mlx5_flow_table* null, %struct.mlx5_flow_table** %12, align 8
  %15 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.fs_prio* @find_prio(%struct.mlx5_flow_namespace* %15, i32 %16)
  store %struct.fs_prio* %17, %struct.fs_prio** %13, align 8
  %18 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %19 = icmp ne %struct.fs_prio* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %22)
  store %struct.mlx5_flow_table* %23, %struct.mlx5_flow_table** %6, align 8
  br label %75

24:                                               ; preds = %5
  %25 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %26 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLX5_CORE_FS_PRIO_SHARED, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %34 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %37 = call %struct.mlx5_flow_table* @mlx5_create_autogrouped_shared_flow_table(%struct.fs_prio* %36)
  store %struct.mlx5_flow_table* %37, %struct.mlx5_flow_table** %12, align 8
  br label %38

38:                                               ; preds = %32, %24
  %39 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %40 = icmp ne %struct.mlx5_flow_table* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %66

42:                                               ; preds = %38
  %43 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call %struct.mlx5_flow_table* @create_ft_common(%struct.mlx5_flow_namespace* %43, i32 0, i32 %44, i32 %45, i8* %46)
  store %struct.mlx5_flow_table* %47, %struct.mlx5_flow_table** %12, align 8
  %48 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %49 = call i64 @IS_ERR(%struct.mlx5_flow_table* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %66

52:                                               ; preds = %42
  %53 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %58 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %64 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %52
  br label %66

66:                                               ; preds = %65, %51, %41
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %71 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  store %struct.mlx5_flow_table* %74, %struct.mlx5_flow_table** %6, align 8
  br label %75

75:                                               ; preds = %73, %20
  %76 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  ret %struct.mlx5_flow_table* %76
}

declare dso_local %struct.fs_prio* @find_prio(%struct.mlx5_flow_namespace*, i32) #1

declare dso_local %struct.mlx5_flow_table* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_autogrouped_shared_flow_table(%struct.fs_prio*) #1

declare dso_local %struct.mlx5_flow_table* @create_ft_common(%struct.mlx5_flow_namespace*, i32, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
