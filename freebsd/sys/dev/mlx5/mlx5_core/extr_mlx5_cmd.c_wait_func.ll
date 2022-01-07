; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_wait_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_wait_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_cmd_work_ent = type { i32, i64, i32, i32, i32, i64 }

@MLX5_CMD_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MLX5_CMD_MODE_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s(0x%x) timeout. Will cause a leak of a command resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"err %d, delivery status %s(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_cmd_work_ent*)* @wait_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_func(%struct.mlx5_core_dev* %0, %struct.mlx5_cmd_work_ent* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_cmd_work_ent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_cmd_work_ent* %1, %struct.mlx5_cmd_work_ent** %4, align 8
  %7 = load i32, i32* @MLX5_CMD_TIMEOUT_MSEC, align 4
  %8 = call i32 @msecs_to_jiffies(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %14, i32 0, i32 4
  %16 = call i32 @wait_for_completion(i32* %15)
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %18, i32 0, i32 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @wait_for_completion_timeout(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %29 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = shl i64 1, %31
  %33 = load i32, i32* @MLX5_CMD_MODE_EVENTS, align 4
  %34 = call i32 @mlx5_cmd_comp_handler(%struct.mlx5_core_dev* %28, i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %23, %17
  br label %36

36:                                               ; preds = %35, %13
  %37 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %46 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @msg_to_opcode(i32 %48)
  %50 = call i32 @mlx5_command_str(i32 %49)
  %51 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @msg_to_opcode(i32 %53)
  %55 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %45, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %44, %36
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %60 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @deliv_status_to_str(i32 %61)
  %63 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %62, i32 %65)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @mlx5_cmd_comp_handler(%struct.mlx5_core_dev*, i64, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_command_str(i32) #1

declare dso_local i32 @msg_to_opcode(i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @deliv_status_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
