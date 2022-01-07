; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_fsm.c_mlxfw_fsm_state_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_fsm.c_mlxfw_fsm_state_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxfw_dev*, i32, i32*, i32*)* }

@MLXFW_FSM_STATE_WAIT_ROUNDS = common dso_local global i32 0, align 4
@MLXFW_FSM_STATE_ERR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Firmware flash failed: %s\0A\00", align 1
@mlxfw_fsm_state_err_str = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Timeout reached on FSM state change\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MLXFW_FSM_STATE_WAIT_CYCLE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxfw_dev*, i32, i32)* @mlxfw_fsm_state_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxfw_fsm_state_wait(%struct.mlxfw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxfw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxfw_dev* %0, %struct.mlxfw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @MLXFW_FSM_STATE_WAIT_ROUNDS, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %51, %3
  %14 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %15 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.mlxfw_dev*, i32, i32*, i32*)*, i32 (%struct.mlxfw_dev*, i32, i32*, i32*)** %17, align 8
  %19 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 %18(%struct.mlxfw_dev* %19, i32 %20, i32* %9, i32* %8)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %55

26:                                               ; preds = %13
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MLXFW_FSM_STATE_ERR_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32*, i32** @mlxfw_fsm_state_err_str, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %55

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @MLXFW_FSM_STATE_WAIT_CYCLE_MS, align 4
  %53 = call i32 @msleep(i32 %52)
  br label %13

54:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %47, %30, %24
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
