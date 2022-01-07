; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__init_root_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__init_root_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.fs_base = type { i32 }
%struct.init_tree_node = type { i64, i32, i32, %struct.init_tree_node*, i32, i32, i32, i32 }
%struct.mlx5_flow_namespace = type { %struct.fs_base }
%struct.fs_prio = type { %struct.fs_base }

@FS_TYPE_PRIO = common dso_local global i64 0, align 8
@FS_TYPE_NAMESPACE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, %struct.init_tree_node*, %struct.fs_base*, %struct.init_tree_node*)* @_init_root_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_init_root_tree(%struct.mlx5_core_dev* %0, i32 %1, %struct.init_tree_node* %2, %struct.fs_base* %3, %struct.init_tree_node* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.init_tree_node*, align 8
  %10 = alloca %struct.fs_base*, align 8
  %11 = alloca %struct.init_tree_node*, align 8
  %12 = alloca %struct.mlx5_flow_namespace*, align 8
  %13 = alloca %struct.fs_prio*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fs_base*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.init_tree_node* %2, %struct.init_tree_node** %9, align 8
  store %struct.fs_base* %3, %struct.fs_base** %10, align 8
  store %struct.init_tree_node* %4, %struct.init_tree_node** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %19 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FS_TYPE_PRIO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %5
  %24 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %25 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %31 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %32 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %31, i32 0, i32 7
  %33 = call i32 @has_required_caps(%struct.mlx5_core_dev* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %23
  br label %130

36:                                               ; preds = %29
  %37 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %38 = load %struct.fs_base*, %struct.fs_base** %10, align 8
  %39 = call i32 @fs_get_obj(%struct.mlx5_flow_namespace* %37, %struct.fs_base* %38)
  %40 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %41 = load %struct.init_tree_node*, %struct.init_tree_node** %11, align 8
  %42 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %41, i32 0, i32 3
  %43 = load %struct.init_tree_node*, %struct.init_tree_node** %42, align 8
  %44 = ptrtoint %struct.init_tree_node* %40 to i64
  %45 = ptrtoint %struct.init_tree_node* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 40
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %52 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %55 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %58 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.mlx5_flow_namespace* @fs_create_prio(%struct.mlx5_flow_namespace* %49, i32 %50, i32 %53, i32 %56, i32 %59)
  %61 = bitcast %struct.mlx5_flow_namespace* %60 to %struct.fs_prio*
  store %struct.fs_prio* %61, %struct.fs_prio** %13, align 8
  %62 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %63 = bitcast %struct.fs_prio* %62 to %struct.mlx5_flow_namespace*
  %64 = call i64 @IS_ERR(%struct.mlx5_flow_namespace* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %36
  %67 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %68 = bitcast %struct.fs_prio* %67 to %struct.mlx5_flow_namespace*
  %69 = call i32 @PTR_ERR(%struct.mlx5_flow_namespace* %68)
  store i32 %69, i32* %17, align 4
  br label %130

70:                                               ; preds = %36
  %71 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %72 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %71, i32 0, i32 0
  store %struct.fs_base* %72, %struct.fs_base** %15, align 8
  br label %103

73:                                               ; preds = %5
  %74 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %75 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FS_TYPE_NAMESPACE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %81 = bitcast %struct.fs_prio* %80 to %struct.mlx5_flow_namespace*
  %82 = load %struct.fs_base*, %struct.fs_base** %10, align 8
  %83 = call i32 @fs_get_obj(%struct.mlx5_flow_namespace* %81, %struct.fs_base* %82)
  %84 = load %struct.fs_prio*, %struct.fs_prio** %13, align 8
  %85 = bitcast %struct.fs_prio* %84 to %struct.mlx5_flow_namespace*
  %86 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %87 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.mlx5_flow_namespace* @fs_create_namespace(%struct.mlx5_flow_namespace* %85, i32 %88)
  store %struct.mlx5_flow_namespace* %89, %struct.mlx5_flow_namespace** %12, align 8
  %90 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %91 = call i64 @IS_ERR(%struct.mlx5_flow_namespace* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %95 = call i32 @PTR_ERR(%struct.mlx5_flow_namespace* %94)
  store i32 %95, i32* %17, align 4
  br label %130

96:                                               ; preds = %79
  %97 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %98 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %97, i32 0, i32 0
  store %struct.fs_base* %98, %struct.fs_base** %15, align 8
  br label %102

99:                                               ; preds = %73
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %132

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %70
  store i32 0, i32* %16, align 4
  br label %104

104:                                              ; preds = %126, %103
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %107 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %104
  %111 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %114 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %113, i32 0, i32 3
  %115 = load %struct.init_tree_node*, %struct.init_tree_node** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %115, i64 %117
  %119 = load %struct.fs_base*, %struct.fs_base** %15, align 8
  %120 = load %struct.init_tree_node*, %struct.init_tree_node** %9, align 8
  %121 = call i32 @_init_root_tree(%struct.mlx5_core_dev* %111, i32 %112, %struct.init_tree_node* %118, %struct.fs_base* %119, %struct.init_tree_node* %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %129

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %16, align 4
  br label %104

129:                                              ; preds = %124, %104
  br label %130

130:                                              ; preds = %129, %93, %66, %35
  %131 = load i32, i32* %17, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %99
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @has_required_caps(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_namespace*, %struct.fs_base*) #1

declare dso_local %struct.mlx5_flow_namespace* @fs_create_prio(%struct.mlx5_flow_namespace*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_namespace*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_namespace*) #1

declare dso_local %struct.mlx5_flow_namespace* @fs_create_namespace(%struct.mlx5_flow_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
