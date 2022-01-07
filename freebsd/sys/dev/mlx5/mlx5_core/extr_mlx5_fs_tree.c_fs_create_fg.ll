; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_create_fg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_create_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_group = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"group_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_group* (%struct.mlx5_core_dev*, %struct.mlx5_flow_table*, %struct.list_head*, i32*, i32)* @fs_create_fg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_group* @fs_create_fg(%struct.mlx5_core_dev* %0, %struct.mlx5_flow_table* %1, %struct.list_head* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_flow_group*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_flow_group*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [20 x i8], align 16
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %8, align 8
  store %struct.list_head* %2, %struct.list_head** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = call %struct.mlx5_flow_group* @fs_alloc_fg(i32* %16)
  store %struct.mlx5_flow_group* %17, %struct.mlx5_flow_group** %12, align 8
  %18 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %19 = call i64 @IS_ERR(%struct.mlx5_flow_group* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  store %struct.mlx5_flow_group* %22, %struct.mlx5_flow_group** %6, align 8
  br label %93

23:                                               ; preds = %5
  %24 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %28 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %44 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %43, i32 0, i32 2
  %45 = call i32 @mlx5_cmd_fs_create_fg(%struct.mlx5_core_dev* %32, i32* %33, i32 %36, i32 %39, i32 %42, i32* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %23
  br label %88

49:                                               ; preds = %23
  %50 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %49
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %67 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %68 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snprintf(i8* %66, i32 20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %72 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %71, i32 0, i32 3
  %73 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %74 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %73, i32 0, i32 0
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @fs_add_node(%struct.TYPE_5__* %72, %struct.TYPE_6__* %74, i8* %75, i32 %76)
  %78 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %79 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.list_head*, %struct.list_head** %9, align 8
  %82 = call i32 @list_add(i32* %80, %struct.list_head* %81)
  %83 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %84 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  store %struct.mlx5_flow_group* %87, %struct.mlx5_flow_group** %6, align 8
  br label %93

88:                                               ; preds = %48
  %89 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %90 = call i32 @kfree(%struct.mlx5_flow_group* %89)
  %91 = load i32, i32* %13, align 4
  %92 = call %struct.mlx5_flow_group* @ERR_PTR(i32 %91)
  store %struct.mlx5_flow_group* %92, %struct.mlx5_flow_group** %6, align 8
  br label %93

93:                                               ; preds = %88, %65, %21
  %94 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  ret %struct.mlx5_flow_group* %94
}

declare dso_local %struct.mlx5_flow_group* @fs_alloc_fg(i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_group*) #1

declare dso_local i32 @mlx5_cmd_fs_create_fg(%struct.mlx5_core_dev*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fs_add_node(%struct.TYPE_5__*, %struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_group*) #1

declare dso_local %struct.mlx5_flow_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
