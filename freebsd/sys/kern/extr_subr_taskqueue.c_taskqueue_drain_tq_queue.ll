; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_drain_tq_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_drain_tq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { %struct.task*, i32 }
%struct.task = type { i32 }

@USHRT_MAX = common dso_local global i32 0, align 4
@taskqueue_task_nop_fn = common dso_local global i32 0, align 4
@ta_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tq_qdrain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.taskqueue*)* @taskqueue_drain_tq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taskqueue_drain_tq_queue(%struct.taskqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.taskqueue*, align 8
  %4 = alloca %struct.task, align 4
  store %struct.taskqueue* %0, %struct.taskqueue** %3, align 8
  %5 = load %struct.taskqueue*, %struct.taskqueue** %3, align 8
  %6 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %5, i32 0, i32 1
  %7 = call i64 @STAILQ_EMPTY(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* @USHRT_MAX, align 4
  %12 = load i32, i32* @taskqueue_task_nop_fn, align 4
  %13 = call i32 @TASK_INIT(%struct.task* %4, i32 %11, i32 %12, %struct.task* %4)
  %14 = load %struct.taskqueue*, %struct.taskqueue** %3, align 8
  %15 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %14, i32 0, i32 1
  %16 = load i32, i32* @ta_link, align 4
  %17 = call i32 @STAILQ_INSERT_TAIL(i32* %15, %struct.task* %4, i32 %16)
  %18 = load %struct.taskqueue*, %struct.taskqueue** %3, align 8
  %19 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %18, i32 0, i32 0
  store %struct.task* %4, %struct.task** %19, align 8
  %20 = getelementptr inbounds %struct.task, %struct.task* %4, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %25, %10
  %22 = getelementptr inbounds %struct.task, %struct.task* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.taskqueue*, %struct.taskqueue** %3, align 8
  %27 = call i32 @TQ_SLEEP(%struct.taskqueue* %26, %struct.task* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %21

28:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @TASK_INIT(%struct.task*, i32, i32, %struct.task*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.task*, i32) #1

declare dso_local i32 @TQ_SLEEP(%struct.taskqueue*, %struct.task*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
