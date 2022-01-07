; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_del_fg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_del_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_group = type { i32 }
%struct.mlx5_flow_table = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"flow steering can't destroy fg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_flow_group*)* @fs_del_fg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_del_fg(%struct.mlx5_flow_group* %0) #0 {
  %2 = alloca %struct.mlx5_flow_group*, align 8
  %3 = alloca %struct.mlx5_flow_table*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_flow_group* %0, %struct.mlx5_flow_group** %2, align 8
  %5 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %6 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %2, align 8
  %7 = call i32 @fs_get_parent(%struct.mlx5_flow_table* %5, %struct.mlx5_flow_group* %6)
  %8 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %8, i32 0, i32 4
  %10 = call %struct.mlx5_core_dev* @fs_get_dev(i32* %9)
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %4, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = icmp ne %struct.mlx5_core_dev* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %29 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %2, align 8
  %39 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @mlx5_cmd_fs_destroy_fg(%struct.mlx5_core_dev* %28, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %45 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %27
  ret void
}

declare dso_local i32 @fs_get_parent(%struct.mlx5_flow_table*, %struct.mlx5_flow_group*) #1

declare dso_local %struct.mlx5_core_dev* @fs_get_dev(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @mlx5_cmd_fs_destroy_fg(%struct.mlx5_core_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
