; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_del_flow_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_del_flow_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_rule = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_del_flow_rule(%struct.mlx5_flow_rule* %0) #0 {
  %2 = alloca %struct.mlx5_flow_rule*, align 8
  %3 = alloca %struct.mlx5_flow_namespace*, align 8
  store %struct.mlx5_flow_rule* %0, %struct.mlx5_flow_rule** %2, align 8
  %4 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %4, i32 0, i32 0
  %6 = call %struct.mlx5_flow_namespace* @get_ns_with_notifiers(i32* %5)
  store %struct.mlx5_flow_namespace* %6, %struct.mlx5_flow_namespace** %3, align 8
  %7 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  %8 = icmp ne %struct.mlx5_flow_namespace* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %10, i32 0, i32 0
  %12 = call i32 @down_read(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %14, i32 0, i32 0
  %16 = call i32 @fs_remove_node(i32* %15)
  %17 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  %18 = icmp ne %struct.mlx5_flow_namespace* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %20, i32 0, i32 0
  %22 = call i32 @up_read(i32* %21)
  br label %23

23:                                               ; preds = %19, %13
  ret void
}

declare dso_local %struct.mlx5_flow_namespace* @get_ns_with_notifiers(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @fs_remove_node(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
