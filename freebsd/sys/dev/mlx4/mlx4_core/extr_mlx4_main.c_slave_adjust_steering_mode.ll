; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_slave_adjust_steering_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_slave_adjust_steering_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.mlx4_dev_cap = type { i32, i32 }
%struct.mlx4_init_hca_param = type { i64, i32 }

@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Steering mode is: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, %struct.mlx4_dev_cap*, %struct.mlx4_init_hca_param*)* @slave_adjust_steering_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slave_adjust_steering_mode(%struct.mlx4_dev* %0, %struct.mlx4_dev_cap* %1, %struct.mlx4_init_hca_param* %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_dev_cap*, align 8
  %6 = alloca %struct.mlx4_init_hca_param*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_dev_cap* %1, %struct.mlx4_dev_cap** %5, align 8
  store %struct.mlx4_init_hca_param* %2, %struct.mlx4_init_hca_param** %6, align 8
  %7 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %6, align 8
  %8 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = sdiv i32 %36, 16
  %38 = sub nsw i32 %37, 2
  %39 = mul nsw i32 4, %38
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %32, %19
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mlx4_steering_mode_str(i64 %48)
  %50 = call i32 @mlx4_dbg(%struct.mlx4_dev* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %49)
  ret void
}

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_steering_mode_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
