; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_create_flow_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_create_flow_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_group = type { i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mlx5_core_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_group* @mlx5_create_flow_group(%struct.mlx5_flow_table* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5_flow_group*, align 8
  %4 = alloca %struct.mlx5_flow_table*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlx5_flow_group*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %8, i32 0, i32 2
  %10 = call %struct.mlx5_core_dev* @fs_get_dev(i32* %9)
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %7, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %12 = icmp ne %struct.mlx5_core_dev* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.mlx5_flow_group* @ERR_PTR(i32 %15)
  store %struct.mlx5_flow_group* %16, %struct.mlx5_flow_group** %3, align 8
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.mlx5_flow_group* @ERR_PTR(i32 %25)
  store %struct.mlx5_flow_group* %26, %struct.mlx5_flow_group** %3, align 8
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %29 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %30 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.mlx5_flow_group* @fs_create_fg(%struct.mlx5_core_dev* %28, %struct.mlx5_flow_table* %29, i32 %33, i32* %34, i32 1)
  store %struct.mlx5_flow_group* %35, %struct.mlx5_flow_group** %6, align 8
  %36 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  store %struct.mlx5_flow_group* %36, %struct.mlx5_flow_group** %3, align 8
  br label %37

37:                                               ; preds = %27, %23, %13
  %38 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %3, align 8
  ret %struct.mlx5_flow_group* %38
}

declare dso_local %struct.mlx5_core_dev* @fs_get_dev(i32*) #1

declare dso_local %struct.mlx5_flow_group* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_group* @fs_create_fg(%struct.mlx5_core_dev*, %struct.mlx5_flow_table*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
