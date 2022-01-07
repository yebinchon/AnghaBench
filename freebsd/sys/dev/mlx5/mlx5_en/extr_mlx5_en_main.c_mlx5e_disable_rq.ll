; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_disable_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_disable_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.mlx5e_channel* }
%struct.mlx5e_channel = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*)* @mlx5e_disable_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_disable_rq(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca %struct.mlx5e_rq*, align 8
  %3 = alloca %struct.mlx5e_channel*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %2, align 8
  %6 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %6, i32 0, i32 1
  %8 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  store %struct.mlx5e_channel* %8, %struct.mlx5e_channel** %3, align 8
  %9 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %9, i32 0, i32 0
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %4, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %5, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %16 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mlx5_core_destroy_rq(%struct.mlx5_core_dev* %15, i32 %18)
  ret void
}

declare dso_local i32 @mlx5_core_destroy_rq(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
