; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_create_ft_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_create_ft_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }
%struct.fs_prio = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (%struct.mlx5_flow_namespace*, i32, i32, i32, i8*)* @create_ft_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @create_ft_common(%struct.mlx5_flow_namespace* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.mlx5_flow_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.fs_prio*, align 8
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.fs_prio* null, %struct.fs_prio** %12, align 8
  %13 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.fs_prio* @find_prio(%struct.mlx5_flow_namespace* %13, i32 %14)
  store %struct.fs_prio* %15, %struct.fs_prio** %12, align 8
  %16 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %17 = icmp ne %struct.fs_prio* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %20)
  store %struct.mlx5_flow_table* %21, %struct.mlx5_flow_table** %6, align 8
  br label %29

22:                                               ; preds = %5
  %23 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = call %struct.mlx5_flow_table* @_create_ft_common(%struct.mlx5_flow_namespace* %23, i32 %24, %struct.fs_prio* %25, i32 %26, i8* %27)
  store %struct.mlx5_flow_table* %28, %struct.mlx5_flow_table** %6, align 8
  br label %29

29:                                               ; preds = %22, %18
  %30 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  ret %struct.mlx5_flow_table* %30
}

declare dso_local %struct.fs_prio* @find_prio(%struct.mlx5_flow_namespace*, i32) #1

declare dso_local %struct.mlx5_flow_table* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_table* @_create_ft_common(%struct.mlx5_flow_namespace*, i32, %struct.fs_prio*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
