; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_set_rocev2_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_set_rocev2_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.mlx5_flow_rule_node = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@ethertype = common dso_local global i32 0, align 4
@ip_protocol = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@udp_dport = common dso_local global i32 0, align 4
@ROCEV2_UDP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*)* @set_rocev2_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rocev2_rules(%struct.list_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.mlx5_flow_rule_node*, align 8
  %5 = alloca %struct.mlx5_flow_rule_node*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlx5_flow_rule_node* @kzalloc(i32 16, i32 %6)
  store %struct.mlx5_flow_rule_node* %7, %struct.mlx5_flow_rule_node** %4, align 8
  %8 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %9 = icmp ne %struct.mlx5_flow_rule_node* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %116

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mlx5_flow_rule_node* @kzalloc(i32 16, i32 %14)
  store %struct.mlx5_flow_rule_node* %15, %struct.mlx5_flow_rule_node** %5, align 8
  %16 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %5, align 8
  %17 = icmp ne %struct.mlx5_flow_rule_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %20 = call i32 @kfree(%struct.mlx5_flow_rule_node* %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %116

23:                                               ; preds = %13
  %24 = load i32, i32* @MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %29 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ethertype, align 4
  %33 = call i32 @MLX5_SET(i32 %28, i32 %31, i32 %32, i32 65535)
  %34 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %35 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ethertype, align 4
  %39 = call i32 @MLX5_SET(i32 %34, i32 %37, i32 %38, i32 2048)
  %40 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %41 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ip_protocol, align 4
  %45 = call i32 @MLX5_SET(i32 %40, i32 %43, i32 %44, i32 255)
  %46 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %47 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ip_protocol, align 4
  %51 = load i32, i32* @IPPROTO_UDP, align 4
  %52 = call i32 @MLX5_SET(i32 %46, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %54 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @udp_dport, align 4
  %58 = call i32 @MLX5_SET(i32 %53, i32 %56, i32 %57, i32 65535)
  %59 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %60 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @udp_dport, align 4
  %64 = load i32, i32* @ROCEV2_UDP_PORT, align 4
  %65 = call i32 @MLX5_SET(i32 %59, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %5, align 8
  %69 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %71 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ethertype, align 4
  %75 = call i32 @MLX5_SET(i32 %70, i32 %73, i32 %74, i32 65535)
  %76 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %77 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %5, align 8
  %78 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ethertype, align 4
  %81 = call i32 @MLX5_SET(i32 %76, i32 %79, i32 %80, i32 34525)
  %82 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %83 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %5, align 8
  %84 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ip_protocol, align 4
  %87 = call i32 @MLX5_SET(i32 %82, i32 %85, i32 %86, i32 255)
  %88 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %89 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ip_protocol, align 4
  %93 = load i32, i32* @IPPROTO_UDP, align 4
  %94 = call i32 @MLX5_SET(i32 %88, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %96 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %5, align 8
  %97 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @udp_dport, align 4
  %100 = call i32 @MLX5_SET(i32 %95, i32 %98, i32 %99, i32 65535)
  %101 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %102 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @udp_dport, align 4
  %106 = load i32, i32* @ROCEV2_UDP_PORT, align 4
  %107 = call i32 @MLX5_SET(i32 %101, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %4, align 8
  %109 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %108, i32 0, i32 1
  %110 = load %struct.list_head*, %struct.list_head** %3, align 8
  %111 = call i32 @list_add_tail(i32* %109, %struct.list_head* %110)
  %112 = load %struct.mlx5_flow_rule_node*, %struct.mlx5_flow_rule_node** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5_flow_rule_node, %struct.mlx5_flow_rule_node* %112, i32 0, i32 1
  %114 = load %struct.list_head*, %struct.list_head** %3, align 8
  %115 = call i32 @list_add_tail(i32* %113, %struct.list_head* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %23, %18, %10
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.mlx5_flow_rule_node* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_rule_node*) #1

declare dso_local i32 @MLX5_SET(i32, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
