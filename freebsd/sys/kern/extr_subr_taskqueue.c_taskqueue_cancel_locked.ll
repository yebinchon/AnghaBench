; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_cancel_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_cancel_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { %struct.task*, i32 }
%struct.task = type { i64 }

@ta_link = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.taskqueue*, %struct.task*, i64*)* @taskqueue_cancel_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taskqueue_cancel_locked(%struct.taskqueue* %0, %struct.task* %1, i64* %2) #0 {
  %4 = alloca %struct.taskqueue*, align 8
  %5 = alloca %struct.task*, align 8
  %6 = alloca i64*, align 8
  store %struct.taskqueue* %0, %struct.taskqueue** %4, align 8
  store %struct.task* %1, %struct.task** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.task*, %struct.task** %5, align 8
  %8 = getelementptr inbounds %struct.task, %struct.task* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %13 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %12, i32 0, i32 1
  %14 = load %struct.task*, %struct.task** %5, align 8
  %15 = load %struct.task*, %struct.task** %5, align 8
  %16 = load i32, i32* @ta_link, align 4
  %17 = call i32 @STAILQ_REMOVE(i32* %13, %struct.task* %14, %struct.task* %15, i32 %16)
  %18 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %19 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %18, i32 0, i32 0
  %20 = load %struct.task*, %struct.task** %19, align 8
  %21 = load %struct.task*, %struct.task** %5, align 8
  %22 = icmp eq %struct.task* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %25 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %24, i32 0, i32 0
  store %struct.task* null, %struct.task** %25, align 8
  br label %26

26:                                               ; preds = %23, %11
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i64*, i64** %6, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.task*, %struct.task** %5, align 8
  %32 = getelementptr inbounds %struct.task, %struct.task* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %27
  %36 = load %struct.task*, %struct.task** %5, align 8
  %37 = getelementptr inbounds %struct.task, %struct.task* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %39 = load %struct.task*, %struct.task** %5, align 8
  %40 = call i64 @task_is_running(%struct.taskqueue* %38, %struct.task* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EBUSY, align 4
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  ret i32 %46
}

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.task*, %struct.task*, i32) #1

declare dso_local i64 @task_is_running(%struct.taskqueue*, %struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
