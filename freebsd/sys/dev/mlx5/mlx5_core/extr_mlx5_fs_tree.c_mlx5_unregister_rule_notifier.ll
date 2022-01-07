; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_unregister_rule_notifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_unregister_rule_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handler = type { i32, %struct.mlx5_flow_namespace* }
%struct.mlx5_flow_namespace = type { i32, i32 }

@remove_from_clients = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_unregister_rule_notifier(%struct.mlx5_flow_handler* %0) #0 {
  %2 = alloca %struct.mlx5_flow_handler*, align 8
  %3 = alloca %struct.mlx5_flow_namespace*, align 8
  store %struct.mlx5_flow_handler* %0, %struct.mlx5_flow_handler** %2, align 8
  %4 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_flow_handler, %struct.mlx5_flow_handler* %4, i32 0, i32 1
  %6 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  store %struct.mlx5_flow_namespace* %6, %struct.mlx5_flow_namespace** %3, align 8
  %7 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %7, i32 0, i32 0
  %9 = call i32 @down_write(i32* %8)
  %10 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %10, i32 0, i32 1
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  %14 = load i32, i32* @remove_from_clients, align 4
  %15 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %2, align 8
  %16 = call i32 @iterate_rules_in_ns(%struct.mlx5_flow_namespace* %13, i32 %14, %struct.mlx5_flow_handler* %15)
  %17 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5_flow_handler, %struct.mlx5_flow_handler* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %20, i32 0, i32 1
  %22 = call i32 @up_write(i32* %21)
  %23 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %23, i32 0, i32 0
  %25 = call i32 @up_write(i32* %24)
  %26 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %2, align 8
  %27 = call i32 @kfree(%struct.mlx5_flow_handler* %26)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @iterate_rules_in_ns(%struct.mlx5_flow_namespace*, i32, %struct.mlx5_flow_handler*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
