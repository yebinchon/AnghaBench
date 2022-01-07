; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__fs_add_dst_fte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__fs_add_dst_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_rule = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fs_fte = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5_flow_group = type { i32 }
%struct.mlx5_flow_destination = type { i32 }
%struct.mlx5_flow_table = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_TYPE_FLOW_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_rule* (%struct.fs_fte*, %struct.mlx5_flow_group*, %struct.mlx5_flow_destination*)* @_fs_add_dst_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_rule* @_fs_add_dst_fte(%struct.fs_fte* %0, %struct.mlx5_flow_group* %1, %struct.mlx5_flow_destination* %2) #0 {
  %4 = alloca %struct.mlx5_flow_rule*, align 8
  %5 = alloca %struct.fs_fte*, align 8
  %6 = alloca %struct.mlx5_flow_group*, align 8
  %7 = alloca %struct.mlx5_flow_destination*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca %struct.mlx5_flow_rule*, align 8
  %10 = alloca i32, align 4
  store %struct.fs_fte* %0, %struct.fs_fte** %5, align 8
  store %struct.mlx5_flow_group* %1, %struct.mlx5_flow_group** %6, align 8
  store %struct.mlx5_flow_destination* %2, %struct.mlx5_flow_destination** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlx5_flow_rule* @kzalloc(i32 20, i32 %11)
  store %struct.mlx5_flow_rule* %12, %struct.mlx5_flow_rule** %9, align 8
  %13 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  %14 = icmp ne %struct.mlx5_flow_rule* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.mlx5_flow_rule* @ERR_PTR(i32 %17)
  store %struct.mlx5_flow_rule* %18, %struct.mlx5_flow_rule** %4, align 8
  br label %104

19:                                               ; preds = %3
  %20 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %20, i32 0, i32 3
  %22 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %7, align 8
  %23 = call i32 @memcpy(i32* %21, %struct.mlx5_flow_destination* %22, i32 4)
  %24 = load i32, i32* @FS_TYPE_FLOW_DEST, align 4
  %25 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  %26 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %28, i32 0, i32 2
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  %32 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %31, i32 0, i32 1
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %35 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  %36 = call i32 @fs_get_parent(%struct.mlx5_flow_table* %34, %struct.mlx5_flow_group* %35)
  %37 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  %38 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %41 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %44 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %48 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %47, i32 0, i32 3
  %49 = call i32 @fs_get_dev(i32* %48)
  %50 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %54 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %53, i32 0, i32 6
  %55 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %56 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %59 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %62 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %65 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  %68 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %71 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %74 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %77 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %80 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %79, i32 0, i32 1
  %81 = call i32 @mlx5_cmd_fs_set_fte(i32 %49, i32 %52, i32* %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %19
  br label %91

85:                                               ; preds = %19
  %86 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  %87 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @list_del(i32* %88)
  %90 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  store %struct.mlx5_flow_rule* %90, %struct.mlx5_flow_rule** %4, align 8
  br label %104

91:                                               ; preds = %84
  %92 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  %93 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @list_del(i32* %94)
  %96 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %9, align 8
  %97 = call i32 @kfree(%struct.mlx5_flow_rule* %96)
  %98 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %99 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call %struct.mlx5_flow_rule* @ERR_PTR(i32 %102)
  store %struct.mlx5_flow_rule* %103, %struct.mlx5_flow_rule** %4, align 8
  br label %104

104:                                              ; preds = %91, %85, %15
  %105 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %4, align 8
  ret %struct.mlx5_flow_rule* %105
}

declare dso_local %struct.mlx5_flow_rule* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_flow_rule* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mlx5_flow_destination*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fs_get_parent(%struct.mlx5_flow_table*, %struct.mlx5_flow_group*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlx5_cmd_fs_set_fte(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fs_get_dev(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
