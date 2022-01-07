; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_get_roce_flow_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_get_roce_flow_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_rules_list = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_1_CAP = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_2_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_rules_list* @get_roce_flow_rules(i32 %0) #0 {
  %2 = alloca %struct.mlx5_flow_rules_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_rules_list*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlx5_flow_rules_list* @kzalloc(i32 4, i32 %6)
  store %struct.mlx5_flow_rules_list* %7, %struct.mlx5_flow_rules_list** %5, align 8
  %8 = load %struct.mlx5_flow_rules_list*, %struct.mlx5_flow_rules_list** %5, align 8
  %9 = icmp ne %struct.mlx5_flow_rules_list* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.mlx5_flow_rules_list* null, %struct.mlx5_flow_rules_list** %2, align 8
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.mlx5_flow_rules_list*, %struct.mlx5_flow_rules_list** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_flow_rules_list, %struct.mlx5_flow_rules_list* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MLX5_ROCE_VERSION_1_CAP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.mlx5_flow_rules_list*, %struct.mlx5_flow_rules_list** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_rules_list, %struct.mlx5_flow_rules_list* %20, i32 0, i32 0
  %22 = call i32 @set_rocev1_rules(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %42

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MLX5_ROCE_VERSION_2_CAP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.mlx5_flow_rules_list*, %struct.mlx5_flow_rules_list** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_flow_rules_list, %struct.mlx5_flow_rules_list* %33, i32 0, i32 0
  %35 = call i32 @set_rocev2_rules(i32* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %42

40:                                               ; preds = %36
  %41 = load %struct.mlx5_flow_rules_list*, %struct.mlx5_flow_rules_list** %5, align 8
  store %struct.mlx5_flow_rules_list* %41, %struct.mlx5_flow_rules_list** %2, align 8
  br label %45

42:                                               ; preds = %39, %25
  %43 = load %struct.mlx5_flow_rules_list*, %struct.mlx5_flow_rules_list** %5, align 8
  %44 = call i32 @mlx5_del_flow_rules_list(%struct.mlx5_flow_rules_list* %43)
  store %struct.mlx5_flow_rules_list* null, %struct.mlx5_flow_rules_list** %2, align 8
  br label %45

45:                                               ; preds = %42, %40, %10
  %46 = load %struct.mlx5_flow_rules_list*, %struct.mlx5_flow_rules_list** %2, align 8
  ret %struct.mlx5_flow_rules_list* %46
}

declare dso_local %struct.mlx5_flow_rules_list* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @set_rocev1_rules(i32*) #1

declare dso_local i32 @set_rocev2_rules(i32*) #1

declare dso_local i32 @mlx5_del_flow_rules_list(%struct.mlx5_flow_rules_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
