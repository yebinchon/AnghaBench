; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_alloc_star_ft_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_alloc_star_ft_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_fte = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_group = type { i64, i64, i32, i32 }
%struct.mlx5_flow_rule = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_FS_DEFAULT_FLOW_TAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_DEST_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_fte* (%struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32*, i32)* @alloc_star_ft_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_fte* @alloc_star_ft_entry(%struct.mlx5_flow_table* %0, %struct.mlx5_flow_group* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.fs_fte*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.mlx5_flow_group*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fs_fte*, align 8
  %12 = alloca %struct.mlx5_flow_rule*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %6, align 8
  store %struct.mlx5_flow_group* %1, %struct.mlx5_flow_group** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.fs_fte* @ERR_PTR(i32 %22)
  store %struct.fs_fte* %23, %struct.fs_fte** %5, align 8
  br label %82

24:                                               ; preds = %4
  %25 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %26 = load i32, i32* @MLX5_FS_DEFAULT_FLOW_TAG, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.fs_fte* @fs_alloc_fte(i32 %25, i32 %26, i32* %27, i32 %28)
  store %struct.fs_fte* %29, %struct.fs_fte** %11, align 8
  %30 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  %31 = call i64 @IS_ERR(%struct.fs_fte* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  store %struct.fs_fte* %34, %struct.fs_fte** %5, align 8
  br label %82

35:                                               ; preds = %24
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mlx5_flow_rule* @kzalloc(i32 24, i32 %36)
  store %struct.mlx5_flow_rule* %37, %struct.mlx5_flow_rule** %12, align 8
  %38 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %12, align 8
  %39 = icmp ne %struct.mlx5_flow_rule* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %77

43:                                               ; preds = %35
  %44 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %45 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %44, i32 0, i32 3
  %46 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  %47 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32* %45, i32** %48, align 8
  %49 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  %50 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @MLX5_FLOW_CONTEXT_DEST_TYPE_FLOW_TABLE, align 4
  %52 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %12, align 8
  %53 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  %56 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %55, i32 0, i32 1
  %57 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %12, align 8
  %58 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %12, align 8
  %61 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  %64 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %63, i32 0, i32 2
  %65 = call i32 @list_add(i32* %62, i32* %64)
  %66 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  %67 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %70 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %69, i32 0, i32 2
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %73 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  store %struct.fs_fte* %76, %struct.fs_fte** %5, align 8
  br label %82

77:                                               ; preds = %40
  %78 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  %79 = call i32 @kfree(%struct.fs_fte* %78)
  %80 = load i32, i32* %10, align 4
  %81 = call %struct.fs_fte* @ERR_PTR(i32 %80)
  store %struct.fs_fte* %81, %struct.fs_fte** %5, align 8
  br label %82

82:                                               ; preds = %77, %43, %33, %20
  %83 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  ret %struct.fs_fte* %83
}

declare dso_local %struct.fs_fte* @ERR_PTR(i32) #1

declare dso_local %struct.fs_fte* @fs_alloc_fte(i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fs_fte*) #1

declare dso_local %struct.mlx5_flow_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.fs_fte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
