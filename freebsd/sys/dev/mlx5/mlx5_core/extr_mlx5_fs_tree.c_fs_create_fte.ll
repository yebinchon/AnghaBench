; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_create_fte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_create_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_fte = type { i32 }
%struct.mlx5_flow_group = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_fte* (%struct.mlx5_flow_group*, i32*, i32, i32, %struct.list_head**)* @fs_create_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_fte* @fs_create_fte(%struct.mlx5_flow_group* %0, i32* %1, i32 %2, i32 %3, %struct.list_head** %4) #0 {
  %6 = alloca %struct.fs_fte*, align 8
  %7 = alloca %struct.mlx5_flow_group*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head**, align 8
  %12 = alloca %struct.fs_fte*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5_flow_group* %0, %struct.mlx5_flow_group** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.list_head** %4, %struct.list_head*** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %15 = load %struct.list_head**, %struct.list_head*** %11, align 8
  %16 = call i32 @fs_get_free_fg_index(%struct.mlx5_flow_group* %14, %struct.list_head** %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.fs_fte* @fs_alloc_fte(i32 %17, i32 %18, i32* %19, i32 %20)
  store %struct.fs_fte* %21, %struct.fs_fte** %12, align 8
  %22 = load %struct.fs_fte*, %struct.fs_fte** %12, align 8
  %23 = call i64 @IS_ERR(%struct.fs_fte* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load %struct.fs_fte*, %struct.fs_fte** %12, align 8
  store %struct.fs_fte* %26, %struct.fs_fte** %6, align 8
  br label %29

27:                                               ; preds = %5
  %28 = load %struct.fs_fte*, %struct.fs_fte** %12, align 8
  store %struct.fs_fte* %28, %struct.fs_fte** %6, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.fs_fte*, %struct.fs_fte** %6, align 8
  ret %struct.fs_fte* %30
}

declare dso_local i32 @fs_get_free_fg_index(%struct.mlx5_flow_group*, %struct.list_head**) #1

declare dso_local %struct.fs_fte* @fs_alloc_fte(i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fs_fte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
