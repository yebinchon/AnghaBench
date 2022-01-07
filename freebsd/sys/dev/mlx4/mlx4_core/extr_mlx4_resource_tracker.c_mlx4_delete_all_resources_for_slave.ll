; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_delete_all_resources_for_slave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_delete_all_resources_for_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_delete_all_resources_for_slave(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %6)
  store %struct.mlx4_priv* %7, %struct.mlx4_priv** %5, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @mlx4_reset_roce_gids(%struct.mlx4_dev* %8, i32 %9)
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @rem_slave_vlans(%struct.mlx4_dev* %22, i32 %23)
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rem_slave_macs(%struct.mlx4_dev* %25, i32 %26)
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @rem_slave_fs_rule(%struct.mlx4_dev* %28, i32 %29)
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rem_slave_qps(%struct.mlx4_dev* %31, i32 %32)
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @rem_slave_srqs(%struct.mlx4_dev* %34, i32 %35)
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @rem_slave_cqs(%struct.mlx4_dev* %37, i32 %38)
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rem_slave_mrs(%struct.mlx4_dev* %40, i32 %41)
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @rem_slave_eqs(%struct.mlx4_dev* %43, i32 %44)
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @rem_slave_mtts(%struct.mlx4_dev* %46, i32 %47)
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @rem_slave_counters(%struct.mlx4_dev* %49, i32 %50)
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @rem_slave_xrcdns(%struct.mlx4_dev* %52, i32 %53)
  %55 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %56 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_reset_roce_gids(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rem_slave_vlans(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_macs(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_fs_rule(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_qps(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_srqs(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_cqs(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_mrs(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_eqs(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_mtts(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_counters(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @rem_slave_xrcdns(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
