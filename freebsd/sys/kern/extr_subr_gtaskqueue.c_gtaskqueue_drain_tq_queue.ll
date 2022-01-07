; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_drain_tq_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_drain_tq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtaskqueue = type { i32 }
%struct.gtask = type { i32 }

@USHRT_MAX = common dso_local global i32 0, align 4
@gtaskqueue_task_nop_fn = common dso_local global i32 0, align 4
@ta_link = common dso_local global i32 0, align 4
@TASK_ENQUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"gtq_qdrain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gtaskqueue*)* @gtaskqueue_drain_tq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtaskqueue_drain_tq_queue(%struct.gtaskqueue* %0) #0 {
  %2 = alloca %struct.gtaskqueue*, align 8
  %3 = alloca %struct.gtask, align 4
  store %struct.gtaskqueue* %0, %struct.gtaskqueue** %2, align 8
  %4 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %5 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %4, i32 0, i32 0
  %6 = call i64 @STAILQ_EMPTY(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %30

9:                                                ; preds = %1
  %10 = load i32, i32* @USHRT_MAX, align 4
  %11 = load i32, i32* @gtaskqueue_task_nop_fn, align 4
  %12 = call i32 @GTASK_INIT(%struct.gtask* %3, i32 0, i32 %10, i32 %11, %struct.gtask* %3)
  %13 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %14 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %13, i32 0, i32 0
  %15 = load i32, i32* @ta_link, align 4
  %16 = call i32 @STAILQ_INSERT_TAIL(i32* %14, %struct.gtask* %3, i32 %15)
  %17 = load i32, i32* @TASK_ENQUEUED, align 4
  %18 = getelementptr inbounds %struct.gtask, %struct.gtask* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %27, %9
  %22 = getelementptr inbounds %struct.gtask, %struct.gtask* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TASK_ENQUEUED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %29 = call i32 @TQ_SLEEP(%struct.gtaskqueue* %28, %struct.gtask* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %21

30:                                               ; preds = %8, %21
  ret void
}

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @GTASK_INIT(%struct.gtask*, i32, i32, i32, %struct.gtask*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.gtask*, i32) #1

declare dso_local i32 @TQ_SLEEP(%struct.gtaskqueue*, %struct.gtask*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
