; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_mlx4_init_mcg_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_mlx4_init_mcg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.mlx4_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_mcg_table(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %6)
  store %struct.mlx4_priv* %7, %struct.mlx4_priv** %4, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @mlx4_bitmap_init(i32* %18, i64 %22, i64 %27, i32 0, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %15
  %34 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @mutex_init(i32* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %31, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_bitmap_init(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
