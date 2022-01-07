; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_get_match_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_get_match_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_rule = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fs_base* }
%struct.fs_base = type { i32 }
%struct.fs_fte = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_get_match_value(i32* %0, %struct.mlx5_flow_rule* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mlx5_flow_rule*, align 8
  %5 = alloca %struct.fs_base*, align 8
  %6 = alloca %struct.fs_fte*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.mlx5_flow_rule* %1, %struct.mlx5_flow_rule** %4, align 8
  %7 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.fs_base*, %struct.fs_base** %9, align 8
  store %struct.fs_base* %10, %struct.fs_base** %5, align 8
  %11 = load %struct.fs_base*, %struct.fs_base** %5, align 8
  %12 = icmp ne %struct.fs_base* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.fs_fte*, %struct.fs_fte** %6, align 8
  %17 = load %struct.fs_base*, %struct.fs_base** %5, align 8
  %18 = call i32 @fs_get_obj(%struct.fs_fte* %16, %struct.fs_base* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.fs_fte*, %struct.fs_fte** %6, align 8
  %21 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32* %19, i32 %22, i32 4)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fs_get_obj(%struct.fs_fte*, %struct.fs_base*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
