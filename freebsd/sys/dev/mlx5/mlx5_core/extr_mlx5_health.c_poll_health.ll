; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_poll_health.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_health.c_poll_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_core_health }
%struct.mlx5_core_health = type { i64, i64, i32, i64, i32 }

@MLX5_DEVICE_STATE_UP = common dso_local global i64 0, align 8
@MAX_MISSES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"device's health compromised - reached miss count\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"FW is unable to respond to initialization segment reads\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Fatal error %u detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @poll_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_health(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_core_health*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.mlx5_core_dev*
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %3, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.mlx5_core_health* %11, %struct.mlx5_core_health** %4, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MLX5_DEVICE_STATE_UP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %83

18:                                               ; preds = %1
  %19 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @ioread32be(i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  br label %36

33:                                               ; preds = %18
  %34 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MAX_MISSES, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %47 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %49 = call i64 @print_health_info(%struct.mlx5_core_dev* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %53 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %57 = call i64 @check_fatal_sensors(%struct.mlx5_core_dev* %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %60
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %71 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %72, i32 0, i32 3
  store i64 %69, i64* %73, align 8
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %75 = call i64 @print_health_info(%struct.mlx5_core_dev* %74)
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %77 = call i32 @mlx5_trigger_health_work(%struct.mlx5_core_dev* %76)
  br label %78

78:                                               ; preds = %65, %60, %55
  %79 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %4, align 8
  %80 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %79, i32 0, i32 2
  %81 = call i32 (...) @get_next_poll_jiffies()
  %82 = call i32 @mod_timer(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %17
  ret void
}

declare dso_local i64 @ioread32be(i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i64 @print_health_info(%struct.mlx5_core_dev*) #1

declare dso_local i64 @check_fatal_sensors(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_trigger_health_work(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @get_next_poll_jiffies(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
