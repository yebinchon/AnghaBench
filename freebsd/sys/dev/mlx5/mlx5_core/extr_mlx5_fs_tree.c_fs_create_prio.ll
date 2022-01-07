; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_create_prio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_create_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_prio = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx5_flow_namespace = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_TYPE_PRIO = common dso_local global i32 0, align 4
@MLX5_CORE_FS_PRIO_MAX_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_prio* (%struct.mlx5_flow_namespace*, i32, i32, i8*, i32)* @fs_create_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_prio* @fs_create_prio(%struct.mlx5_flow_namespace* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.fs_prio*, align 8
  %7 = alloca %struct.mlx5_flow_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fs_prio*, align 8
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.fs_prio* @kzalloc(i32 32, i32 %13)
  store %struct.fs_prio* %14, %struct.fs_prio** %12, align 8
  %15 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %16 = icmp ne %struct.fs_prio* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.fs_prio* @ERR_PTR(i32 %19)
  store %struct.fs_prio* %20, %struct.fs_prio** %6, align 8
  br label %57

21:                                               ; preds = %5
  %22 = load i32, i32* @FS_TYPE_PRIO, align 4
  %23 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %24 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %27 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %26, i32 0, i32 4
  %28 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %28, i32 0, i32 1
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @fs_add_node(%struct.TYPE_2__* %27, i32* %29, i8* %30, i32 1)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %34 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @MLX5_CORE_FS_PRIO_MAX_NS, align 4
  %36 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %37 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %40 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %43 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %45 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %48 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %51 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %50, i32 0, i32 3
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %54 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %53, i32 0, i32 2
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  store %struct.fs_prio* %56, %struct.fs_prio** %6, align 8
  br label %57

57:                                               ; preds = %21, %17
  %58 = load %struct.fs_prio*, %struct.fs_prio** %6, align 8
  ret %struct.fs_prio* %58
}

declare dso_local %struct.fs_prio* @kzalloc(i32, i32) #1

declare dso_local %struct.fs_prio* @ERR_PTR(i32) #1

declare dso_local i32 @fs_add_node(%struct.TYPE_2__*, i32*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
