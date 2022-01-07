; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_try_fast_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_try_fast_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i64 }

@mlx5_fast_unload_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fast unload is disabled by user\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"force teardown firmware support=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"fast teardown firmware support=%d\0A\00", align 1
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Device in internal error state, giving up\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Firmware couldn't do fast unload error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5_try_fast_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_try_fast_unload(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %7 = load i32, i32* @mlx5_fast_unload_enabled, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %72

35:                                               ; preds = %29, %14
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %43 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %72

46:                                               ; preds = %35
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %48 = call i32 @mlx5_drain_health_wq(%struct.mlx5_core_dev* %47)
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %50 = call i32 @mlx5_stop_health_poll(%struct.mlx5_core_dev* %49, i32 0)
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %52 = call i32 @mlx5_cmd_fast_teardown_hca(%struct.mlx5_core_dev* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %69

56:                                               ; preds = %46
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %58 = call i32 @mlx5_cmd_force_teardown_hca(%struct.mlx5_core_dev* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %69

62:                                               ; preds = %56
  %63 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %67 = call i32 @mlx5_start_health_poll(%struct.mlx5_core_dev* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %72

69:                                               ; preds = %61, %55
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %71 = call i32 @mlx5_enter_error_state(%struct.mlx5_core_dev* %70, i32 1)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %62, %41, %32, %9
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_drain_health_wq(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_stop_health_poll(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_cmd_fast_teardown_hca(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cmd_force_teardown_hca(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_start_health_poll(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_enter_error_state(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
