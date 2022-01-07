; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_get_match_criteria_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_get_match_criteria_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_rule = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fs_base* }
%struct.fs_base = type { %struct.fs_base* }
%struct.mlx5_flow_group = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_get_match_criteria_enable(%struct.mlx5_flow_rule* %0) #0 {
  %2 = alloca %struct.mlx5_flow_rule*, align 8
  %3 = alloca %struct.fs_base*, align 8
  %4 = alloca %struct.mlx5_flow_group*, align 8
  store %struct.mlx5_flow_rule* %0, %struct.mlx5_flow_rule** %2, align 8
  %5 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.fs_base*, %struct.fs_base** %7, align 8
  store %struct.fs_base* %8, %struct.fs_base** %3, align 8
  %9 = load %struct.fs_base*, %struct.fs_base** %3, align 8
  %10 = icmp ne %struct.fs_base* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.fs_base*, %struct.fs_base** %3, align 8
  %15 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %14, i32 0, i32 0
  %16 = load %struct.fs_base*, %struct.fs_base** %15, align 8
  store %struct.fs_base* %16, %struct.fs_base** %3, align 8
  %17 = load %struct.fs_base*, %struct.fs_base** %3, align 8
  %18 = icmp ne %struct.fs_base* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %23 = load %struct.fs_base*, %struct.fs_base** %3, align 8
  %24 = call i32 @fs_get_obj(%struct.mlx5_flow_group* %22, %struct.fs_base* %23)
  %25 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  ret i32 %28
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_group*, %struct.fs_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
