; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_reset_calibration_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_reset_calibration_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i64, i32 }

@mlx5e_calibration_duration = common dso_local global i64 0, align 8
@mlx5e_fast_calibration = common dso_local global i32 0, align 4
@mlx5e_normal_calibration = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_reset_calibration_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_reset_calibration_callout(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %3 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = call i32 @mlx5e_calibration_callout(%struct.mlx5e_priv* %8)
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 1
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @mlx5e_calibration_duration, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @mlx5e_fast_calibration, align 4
  br label %22

20:                                               ; preds = %10
  %21 = load i32, i32* @mlx5e_normal_calibration, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load i32, i32* @hz, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %27 = call i32 @callout_reset_curcpu(i32* %12, i32 %25, i32 (%struct.mlx5e_priv*)* @mlx5e_calibration_callout, %struct.mlx5e_priv* %26)
  br label %28

28:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @mlx5e_calibration_callout(%struct.mlx5e_priv*) #1

declare dso_local i32 @callout_reset_curcpu(i32*, i32, i32 (%struct.mlx5e_priv*)*, %struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
