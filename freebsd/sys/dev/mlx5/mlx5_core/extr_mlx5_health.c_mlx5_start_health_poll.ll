; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_mlx5_start_health_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_mlx5_start_health_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.mlx5_core_health }
%struct.mlx5_core_health = type { i32, i32*, i32*, i32, i32 }

@MLX5_SENSOR_NO_ERR = common dso_local global i32 0, align 4
@MLX5_DROP_NEW_HEALTH_WORK = common dso_local global i32 0, align 4
@MLX5_DROP_NEW_RECOVERY_WORK = common dso_local global i32 0, align 4
@MLX5_DROP_NEW_WATCHDOG_WORK = common dso_local global i32 0, align 4
@poll_health = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MLX5_HEALTH_POLL_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_start_health_poll(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_core_health*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store %struct.mlx5_core_health* %6, %struct.mlx5_core_health** %3, align 8
  %7 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %7, i32 0, i32 0
  %9 = call i32 @init_timer(i32* %8)
  %10 = load i32, i32* @MLX5_SENSOR_NO_ERR, align 4
  %11 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @MLX5_DROP_NEW_HEALTH_WORK, align 4
  %14 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %14, i32 0, i32 3
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @MLX5_DROP_NEW_RECOVERY_WORK, align 4
  %18 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %18, i32 0, i32 3
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @MLX5_DROP_NEW_WATCHDOG_WORK, align 4
  %22 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %22, i32 0, i32 3
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %37, i32 0, i32 0
  %39 = load i32, i32* @poll_health, align 4
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %41 = ptrtoint %struct.mlx5_core_dev* %40 to i64
  %42 = call i32 @setup_timer(i32* %38, i32 %39, i64 %41)
  %43 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %43, i32 0, i32 0
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* @MLX5_HEALTH_POLL_INTERVAL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @round_jiffies(i64 %47)
  %49 = call i32 @mod_timer(i32* %44, i32 %48)
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %51 = call i32 @mlx5_trigger_health_watchdog(%struct.mlx5_core_dev* %50)
  ret void
}

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @mlx5_trigger_health_watchdog(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
