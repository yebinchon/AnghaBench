; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_set_rocev1_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_set_rocev1_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.mlx5_flow_rule_node = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@ethertype = common dso_local global i32 0, align 4
@ROCEV1_ETHERTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*)* @set_rocev1_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rocev1_rules(%struct.list_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.mlx5_flow_rule_node*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mlx5_flow_rule_node* @kzalloc(i32 16, i32 %5)
  store %struct.mlx5_flow_rule_node* %6, %struct.mlx5_flow_rule_node** %4, align 8
  %7 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %8 = icmp ne %struct.mlx5_flow_rule_node* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* @MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS, align 4
  %14 = shl i32 1, %13
  %15 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %18 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ethertype, align 4
  %22 = call i32 @MLX5_SET(i32 %17, i32 %20, i32 %21, i32 65535)
  %23 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %24 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ethertype, align 4
  %28 = load i32, i32* @ROCEV1_ETHERTYPE, align 4
  %29 = call i32 @MLX5_SET(i32 %23, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %30, i32 0, i32 1
  %32 = load %struct.list_head*, %struct.list_head** %3, align 8
  %33 = call i32 @list_add_tail(i32* %31, %struct.list_head* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %12, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.mlx5_flow_rule_node* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
