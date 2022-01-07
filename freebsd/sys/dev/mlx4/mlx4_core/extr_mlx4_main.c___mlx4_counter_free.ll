; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c___mlx4_counter_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c___mlx4_counter_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MLX4_DEV_CAP_FLAG_COUNTERS = common dso_local global i32 0, align 4
@MLX4_USE_RR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx4_counter_free(%struct.mlx4_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MLX4_DEV_CAP_FLAG_COUNTERS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %29

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %16 = call i64 @MLX4_SINK_COUNTER_INDEX(%struct.mlx4_dev* %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %29

19:                                               ; preds = %13
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @__mlx4_clear_if_stat(%struct.mlx4_dev* %20, i64 %21)
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %24 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @MLX4_USE_RR, align 4
  %28 = call i32 @mlx4_bitmap_free(i32* %25, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %18, %12
  ret void
}

declare dso_local i64 @MLX4_SINK_COUNTER_INDEX(%struct.mlx4_dev*) #1

declare dso_local i32 @__mlx4_clear_if_stat(%struct.mlx4_dev*, i64) #1

declare dso_local i32 @mlx4_bitmap_free(i32*, i64, i32) #1

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
