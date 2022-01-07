; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_shutdown_nice.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_shutdown_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@initproc = common dso_local global i32* null, align 8
@shutdown_nice_task = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@taskqueue_fast = common dso_local global i32 0, align 4
@RB_NOSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shutdown_nice(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @initproc, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = call i32 (...) @SCHEDULER_STOPPED()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shutdown_nice_task, i32 0, i32 0), align 8
  %12 = load i32, i32* @taskqueue_fast, align 4
  %13 = call i32 @taskqueue_enqueue(i32 %12, %struct.TYPE_3__* @shutdown_nice_task)
  br label %19

14:                                               ; preds = %5, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @RB_NOSYNC, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @kern_reboot(i32 %17)
  br label %19

19:                                               ; preds = %14, %8
  ret void
}

declare dso_local i32 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @taskqueue_enqueue(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @kern_reboot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
