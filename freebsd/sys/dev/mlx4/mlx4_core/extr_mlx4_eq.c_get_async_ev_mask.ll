; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_eq.c_get_async_ev_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_eq.c_get_async_ev_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MLX4_ASYNC_EVENT_MASK = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV = common dso_local global i32 0, align 4
@MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG2_RECOVERABLE_ERROR_EVENT = common dso_local global i32 0, align 4
@MLX4_EVENT_TYPE_RECOVERABLE_ERROR_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx4_dev*)* @get_async_ev_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_async_ev_mask(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %4 = load i64, i64* @MLX4_ASYNC_EVENT_MASK, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i64, i64* @MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT, align 8
  %14 = shl i64 1, %13
  %15 = load i64, i64* %3, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RECOVERABLE_ERROR_EVENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i64, i64* @MLX4_EVENT_TYPE_RECOVERABLE_ERROR_EVENT, align 8
  %27 = shl i64 1, %26
  %28 = load i64, i64* %3, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %25, %17
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
