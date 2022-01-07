; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_run_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_run_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { i64, %struct.task*, i32, i32 }
%struct.task = type { i32, i32, i32 (i32, i32)* }
%struct.taskqueue_busy = type { i64, %struct.task* }

@.str = private unnamed_addr constant [11 x i8] c"tq is NULL\00", align 1
@tb_link = common dso_local global i32 0, align 4
@ta_link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"task->ta_func is NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.taskqueue*)* @taskqueue_run_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taskqueue_run_locked(%struct.taskqueue* %0) #0 {
  %2 = alloca %struct.taskqueue*, align 8
  %3 = alloca %struct.taskqueue_busy, align 8
  %4 = alloca %struct.task*, align 8
  %5 = alloca i32, align 4
  store %struct.taskqueue* %0, %struct.taskqueue** %2, align 8
  %6 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %7 = icmp ne %struct.taskqueue* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %11 = call i32 @TQ_ASSERT_LOCKED(%struct.taskqueue* %10)
  %12 = getelementptr inbounds %struct.taskqueue_busy, %struct.taskqueue_busy* %3, i32 0, i32 1
  store %struct.task* null, %struct.task** %12, align 8
  %13 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %14 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %13, i32 0, i32 3
  %15 = load i32, i32* @tb_link, align 4
  %16 = call i32 @LIST_INSERT_HEAD(i32* %14, %struct.taskqueue_busy* %3, i32 %15)
  br label %17

17:                                               ; preds = %35, %1
  %18 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %19 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %18, i32 0, i32 2
  %20 = call %struct.task* @STAILQ_FIRST(i32* %19)
  store %struct.task* %20, %struct.task** %4, align 8
  %21 = icmp ne %struct.task* %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %17
  %23 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %24 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %23, i32 0, i32 2
  %25 = load i32, i32* @ta_link, align 4
  %26 = call i32 @STAILQ_REMOVE_HEAD(i32* %24, i32 %25)
  %27 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %28 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %27, i32 0, i32 1
  %29 = load %struct.task*, %struct.task** %28, align 8
  %30 = load %struct.task*, %struct.task** %4, align 8
  %31 = icmp eq %struct.task* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %34 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %33, i32 0, i32 1
  store %struct.task* null, %struct.task** %34, align 8
  br label %35

35:                                               ; preds = %32, %22
  %36 = load %struct.task*, %struct.task** %4, align 8
  %37 = getelementptr inbounds %struct.task, %struct.task* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %5, align 4
  %39 = load %struct.task*, %struct.task** %4, align 8
  %40 = getelementptr inbounds %struct.task, %struct.task* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.task*, %struct.task** %4, align 8
  %42 = getelementptr inbounds %struct.taskqueue_busy, %struct.taskqueue_busy* %3, i32 0, i32 1
  store %struct.task* %41, %struct.task** %42, align 8
  %43 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %44 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds %struct.taskqueue_busy, %struct.taskqueue_busy* %3, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %49 = call i32 @TQ_UNLOCK(%struct.taskqueue* %48)
  %50 = load %struct.task*, %struct.task** %4, align 8
  %51 = getelementptr inbounds %struct.task, %struct.task* %50, i32 0, i32 2
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = icmp ne i32 (i32, i32)* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.task*, %struct.task** %4, align 8
  %57 = getelementptr inbounds %struct.task, %struct.task* %56, i32 0, i32 2
  %58 = load i32 (i32, i32)*, i32 (i32, i32)** %57, align 8
  %59 = load %struct.task*, %struct.task** %4, align 8
  %60 = getelementptr inbounds %struct.task, %struct.task* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 %58(i32 %61, i32 %62)
  %64 = load %struct.taskqueue*, %struct.taskqueue** %2, align 8
  %65 = call i32 @TQ_LOCK(%struct.taskqueue* %64)
  %66 = load %struct.task*, %struct.task** %4, align 8
  %67 = call i32 @wakeup(%struct.task* %66)
  br label %17

68:                                               ; preds = %17
  %69 = load i32, i32* @tb_link, align 4
  %70 = call i32 @LIST_REMOVE(%struct.taskqueue_busy* %3, i32 %69)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TQ_ASSERT_LOCKED(%struct.taskqueue*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.taskqueue_busy*, i32) #1

declare dso_local %struct.task* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @TQ_UNLOCK(%struct.taskqueue*) #1

declare dso_local i32 @TQ_LOCK(%struct.taskqueue*) #1

declare dso_local i32 @wakeup(%struct.task*) #1

declare dso_local i32 @LIST_REMOVE(%struct.taskqueue_busy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
