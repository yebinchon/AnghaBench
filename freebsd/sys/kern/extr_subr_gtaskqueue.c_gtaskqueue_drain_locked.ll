; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_drain_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_drain_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtaskqueue = type { i32 }
%struct.gtask = type { i32 }

@TASK_ENQUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gtq_drain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gtaskqueue*, %struct.gtask*)* @gtaskqueue_drain_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtaskqueue_drain_locked(%struct.gtaskqueue* %0, %struct.gtask* %1) #0 {
  %3 = alloca %struct.gtaskqueue*, align 8
  %4 = alloca %struct.gtask*, align 8
  store %struct.gtaskqueue* %0, %struct.gtaskqueue** %3, align 8
  store %struct.gtask* %1, %struct.gtask** %4, align 8
  br label %5

5:                                                ; preds = %19, %2
  %6 = load %struct.gtask*, %struct.gtask** %4, align 8
  %7 = getelementptr inbounds %struct.gtask, %struct.gtask* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TASK_ENQUEUED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = load %struct.gtaskqueue*, %struct.gtaskqueue** %3, align 8
  %14 = load %struct.gtask*, %struct.gtask** %4, align 8
  %15 = call i64 @task_is_running(%struct.gtaskqueue* %13, %struct.gtask* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %5
  %18 = phi i1 [ true, %5 ], [ %16, %12 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load %struct.gtaskqueue*, %struct.gtaskqueue** %3, align 8
  %21 = load %struct.gtask*, %struct.gtask** %4, align 8
  %22 = call i32 @TQ_SLEEP(%struct.gtaskqueue* %20, %struct.gtask* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %5

23:                                               ; preds = %17
  ret void
}

declare dso_local i64 @task_is_running(%struct.gtaskqueue*, %struct.gtask*) #1

declare dso_local i32 @TQ_SLEEP(%struct.gtaskqueue*, %struct.gtask*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
