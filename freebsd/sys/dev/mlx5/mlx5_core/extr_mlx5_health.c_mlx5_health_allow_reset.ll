; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_mlx5_health_allow_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_mlx5_health_allow_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_core_health }
%struct.mlx5_core_health = type { i32 }

@ticks = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@sw_reset_to = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Firmware reset elided due to auto-reset frequency threshold.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5_health_allow_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_health_allow_reset(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_core_health*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.mlx5_core_health* %8, %struct.mlx5_core_health** %3, align 8
  %9 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @ticks, align 4
  %15 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @hz, align 4
  %20 = load i32, i32* %4, align 4
  %21 = udiv i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @sw_reset_to, align 4
  %24 = icmp uge i32 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* @ticks, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %32

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i32 [ %28, %30 ], [ -1, %31 ]
  %34 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %40 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %39, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
