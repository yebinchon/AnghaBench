; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_init_root_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_init_root_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.init_tree_node = type { i32, i32* }
%struct.fs_base = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, %struct.init_tree_node*, %struct.fs_base*)* @init_root_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_root_tree(%struct.mlx5_core_dev* %0, i32 %1, %struct.init_tree_node* %2, %struct.fs_base* %3) #0 {
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.init_tree_node*, align 8
  %8 = alloca %struct.fs_base*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_flow_namespace*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.init_tree_node* %2, %struct.init_tree_node** %7, align 8
  store %struct.fs_base* %3, %struct.fs_base** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %10, align 8
  %13 = load %struct.fs_base*, %struct.fs_base** %8, align 8
  %14 = call i32 @fs_get_obj(%struct.mlx5_flow_namespace* %12, %struct.fs_base* %13)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %38, %4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.init_tree_node*, %struct.init_tree_node** %7, align 8
  %18 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.init_tree_node*, %struct.init_tree_node** %7, align 8
  %25 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %10, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %30, i32 0, i32 0
  %32 = load %struct.init_tree_node*, %struct.init_tree_node** %7, align 8
  %33 = call i32 @_init_root_tree(%struct.mlx5_core_dev* %22, i32 %23, i32* %29, i32* %31, %struct.init_tree_node* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %41

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %15

41:                                               ; preds = %36, %15
  %42 = load i32, i32* %11, align 4
  ret i32 %42
}

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_namespace*, %struct.fs_base*) #1

declare dso_local i32 @_init_root_tree(%struct.mlx5_core_dev*, i32, i32*, i32*, %struct.init_tree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
