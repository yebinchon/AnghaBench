; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_create_root_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_create_root_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { i32, %struct.mlx5_flow_namespace, i32, %struct.mlx5_core_dev* }
%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_root_namespace* (%struct.mlx5_core_dev*, i32, i8*)* @create_root_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_root_namespace* @create_root_ns(%struct.mlx5_core_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %9 = alloca %struct.mlx5_flow_namespace*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = call %struct.mlx5_flow_root_namespace* @mlx5_vzalloc(i32 24)
  store %struct.mlx5_flow_root_namespace* %10, %struct.mlx5_flow_root_namespace** %8, align 8
  %11 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %12 = icmp ne %struct.mlx5_flow_root_namespace* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %33

14:                                               ; preds = %3
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %16 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %16, i32 0, i32 3
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %20 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %21, i32 0, i32 2
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %24, i32 0, i32 1
  store %struct.mlx5_flow_namespace* %25, %struct.mlx5_flow_namespace** %9, align 8
  %26 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %9, align 8
  %27 = call i32 @fs_init_namespace(%struct.mlx5_flow_namespace* %26)
  %28 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %9, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %28, i32 0, i32 0
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @fs_add_node(i32* %29, i32* null, i8* %30, i32 1)
  %32 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  store %struct.mlx5_flow_root_namespace* %32, %struct.mlx5_flow_root_namespace** %4, align 8
  br label %34

33:                                               ; preds = %13
  store %struct.mlx5_flow_root_namespace* null, %struct.mlx5_flow_root_namespace** %4, align 8
  br label %34

34:                                               ; preds = %33, %14
  %35 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  ret %struct.mlx5_flow_root_namespace* %35
}

declare dso_local %struct.mlx5_flow_root_namespace* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fs_init_namespace(%struct.mlx5_flow_namespace*) #1

declare dso_local i32 @fs_add_node(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
