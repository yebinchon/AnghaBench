; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_del_fte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_del_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_fte = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_flow_table = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.mlx5_flow_group = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"flow steering can't delete fte %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_fte*)* @fs_del_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_del_fte(%struct.fs_fte* %0) #0 {
  %2 = alloca %struct.fs_fte*, align 8
  %3 = alloca %struct.mlx5_flow_table*, align 8
  %4 = alloca %struct.mlx5_flow_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.fs_fte* %0, %struct.fs_fte** %2, align 8
  %7 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %8 = bitcast %struct.mlx5_flow_group* %7 to %struct.mlx5_flow_table*
  %9 = load %struct.fs_fte*, %struct.fs_fte** %2, align 8
  %10 = bitcast %struct.fs_fte* %9 to %struct.mlx5_flow_table*
  %11 = call i32 @fs_get_parent(%struct.mlx5_flow_table* %8, %struct.mlx5_flow_table* %10)
  %12 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %13 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %14 = bitcast %struct.mlx5_flow_group* %13 to %struct.mlx5_flow_table*
  %15 = call i32 @fs_get_parent(%struct.mlx5_flow_table* %12, %struct.mlx5_flow_table* %14)
  %16 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %16, i32 0, i32 1
  %18 = call %struct.mlx5_core_dev* @fs_get_dev(%struct.TYPE_2__* %17)
  store %struct.mlx5_core_dev* %18, %struct.mlx5_core_dev** %6, align 8
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %20 = icmp ne %struct.mlx5_core_dev* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %25 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fs_fte*, %struct.fs_fte** %2, align 8
  %29 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %28, i32 0, i32 5
  %30 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fs_fte*, %struct.fs_fte** %2, align 8
  %37 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mlx5_cmd_fs_delete_fte(%struct.mlx5_core_dev* %24, i32 %27, i32* %29, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %1
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %44 = load %struct.fs_fte*, %struct.fs_fte** %2, align 8
  %45 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %42, %1
  %50 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  ret void
}

declare dso_local i32 @fs_get_parent(%struct.mlx5_flow_table*, %struct.mlx5_flow_table*) #1

declare dso_local %struct.mlx5_core_dev* @fs_get_dev(%struct.TYPE_2__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mlx5_cmd_fs_delete_fte(%struct.mlx5_core_dev*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
