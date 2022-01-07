; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_mlx5_trigger_health_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_mlx5_trigger_health_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_core_health }
%struct.mlx5_core_health = type { i32, i32, i32, i32 }

@MLX5_DROP_NEW_HEALTH_WORK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"new health works are not permitted at this stage\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_trigger_health_work(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_core_health*, align 8
  %4 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.mlx5_core_health* %7, %struct.mlx5_core_health** %3, align 8
  %8 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @MLX5_DROP_NEW_HEALTH_WORK, align 4
  %13 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %13, i32 0, i32 3
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %21, i32 0, i32 1
  %23 = call i32 @queue_work(i32 %20, i32* %22)
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %26 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %28, i32 0, i32 0
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
