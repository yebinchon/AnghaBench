; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_catas.c_mlx4_handle_error_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_catas.c_mlx4_handle_error_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev_persistent = type { i32, i32, i32, i32 }

@MLX4_INTERFACE_STATE_UP = common dso_local global i32 0, align 4
@MLX4_INTERFACE_STATE_DELETION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mlx4_restart_one was ended, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev_persistent*)* @mlx4_handle_error_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_handle_error_state(%struct.mlx4_dev_persistent* %0) #0 {
  %2 = alloca %struct.mlx4_dev_persistent*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx4_dev_persistent* %0, %struct.mlx4_dev_persistent** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %5 = call i32 @mlx4_enter_error_state(%struct.mlx4_dev_persistent* %4)
  %6 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MLX4_INTERFACE_STATE_UP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MLX4_INTERFACE_STATE_DELETION, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlx4_restart_one(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %28 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @mlx4_info(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %22, %15, %1
  %33 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %34 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local i32 @mlx4_enter_error_state(%struct.mlx4_dev_persistent*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_restart_one(i32) #1

declare dso_local i32 @mlx4_info(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
