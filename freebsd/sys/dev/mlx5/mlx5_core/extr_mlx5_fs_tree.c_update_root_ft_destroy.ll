; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_update_root_ft_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_update_root_ft_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mlx5_flow_root_namespace = type { %struct.mlx5_flow_table*, i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fs_prio = type { i32 }

@base = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"Update root flow table of id=%u failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*)* @update_root_ft_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_root_ft_destroy(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %5 = alloca %struct.mlx5_flow_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_prio*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca %struct.mlx5_flow_table*, align 8
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %4, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.mlx5_flow_table* null, %struct.mlx5_flow_table** %8, align 8
  store %struct.mlx5_flow_table* null, %struct.mlx5_flow_table** %9, align 8
  %10 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %10, i32 0, i32 0
  %12 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %13 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %14 = icmp ne %struct.mlx5_flow_table* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.fs_prio*, %struct.fs_prio** %7, align 8
  %18 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %19 = call i32 @fs_get_parent(%struct.fs_prio* %17, %struct.mlx5_flow_table* %18)
  %20 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.fs_prio*, %struct.fs_prio** %7, align 8
  %24 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %23, i32 0, i32 0
  %25 = call i32 @list_is_last(i32* %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %16
  %28 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @base, i32 0, i32 0), align 4
  %30 = call %struct.mlx5_flow_table* @list_next_entry(%struct.mlx5_flow_table* %28, i32 %29)
  store %struct.mlx5_flow_table* %30, %struct.mlx5_flow_table** %8, align 8
  br label %35

31:                                               ; preds = %16
  %32 = load %struct.fs_prio*, %struct.fs_prio** %7, align 8
  %33 = call %struct.mlx5_flow_table* @find_next_ft(%struct.fs_prio* %32)
  store %struct.mlx5_flow_table* %33, %struct.mlx5_flow_table** %8, align 8
  %34 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  store %struct.mlx5_flow_table* %34, %struct.mlx5_flow_table** %9, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %37 = icmp ne %struct.mlx5_flow_table* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %46 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mlx5_cmd_update_root_ft(i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %38
  %52 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mlx5_core_warn(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %51, %38
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %65 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %65, i32 0, i32 0
  store %struct.mlx5_flow_table* %64, %struct.mlx5_flow_table** %66, align 8
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %69 = icmp ne %struct.mlx5_flow_table* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %72 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %71, i32 0, i32 0
  %73 = call i32 @fs_put(%struct.TYPE_3__* %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @fs_get_parent(%struct.fs_prio*, %struct.mlx5_flow_table*) #1

declare dso_local i32 @list_is_last(i32*, i32*) #1

declare dso_local %struct.mlx5_flow_table* @list_next_entry(%struct.mlx5_flow_table*, i32) #1

declare dso_local %struct.mlx5_flow_table* @find_next_ft(%struct.fs_prio*) #1

declare dso_local i32 @mlx5_cmd_update_root_ft(i32, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

declare dso_local i32 @fs_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
