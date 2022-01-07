; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_get_netdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_get_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ib_device*, i32)* @mlx5_ib_get_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @mlx5_ib_get_netdev(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %8 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %7)
  store %struct.mlx5_ib_dev* %8, %struct.mlx5_ib_dev** %5, align 8
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @read_lock(i32* %11)
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @dev_hold(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @read_unlock(i32* %25)
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  ret %struct.net_device* %27
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
