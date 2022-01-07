; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_power.c_power_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_power.c_power_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@power_pm_fn = common dso_local global i32* null, align 8
@POWER_SLEEP_STATE_STANDBY = common dso_local global i32 0, align 4
@POWER_SLEEP_STATE_SUSPEND = common dso_local global i32 0, align 4
@POWER_SLEEP_STATE_HIBERNATE = common dso_local global i32 0, align 4
@power_pm_task = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@taskqueue_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @power_pm_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @power_pm_fn, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @POWER_SLEEP_STATE_STANDBY, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @POWER_SLEEP_STATE_SUSPEND, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @POWER_SLEEP_STATE_HIBERNATE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %25

19:                                               ; preds = %14, %10, %6
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @power_pm_task, i32 0, i32 0), align 8
  %23 = load i32, i32* @taskqueue_thread, align 4
  %24 = call i32 @taskqueue_enqueue(i32 %23, %struct.TYPE_3__* @power_pm_task)
  br label %25

25:                                               ; preds = %19, %18, %5
  ret void
}

declare dso_local i32 @taskqueue_enqueue(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
