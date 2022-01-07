; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_cancel_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_cancel_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { i32 }
%struct.timeout_task = type { i32, i32, i32 }

@DT_CALLOUT_ARMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taskqueue_cancel_timeout(%struct.taskqueue* %0, %struct.timeout_task* %1, i32* %2) #0 {
  %4 = alloca %struct.taskqueue*, align 8
  %5 = alloca %struct.timeout_task*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.taskqueue* %0, %struct.taskqueue** %4, align 8
  store %struct.timeout_task* %1, %struct.timeout_task** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %11 = call i32 @TQ_LOCK(%struct.taskqueue* %10)
  %12 = load %struct.timeout_task*, %struct.timeout_task** %5, align 8
  %13 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %12, i32 0, i32 2
  %14 = call i64 @callout_stop(i32* %13)
  %15 = icmp sgt i64 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %20 = load %struct.timeout_task*, %struct.timeout_task** %5, align 8
  %21 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %20, i32 0, i32 1
  %22 = call i32 @taskqueue_cancel_locked(%struct.taskqueue* %19, i32* %21, i32* %8)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.timeout_task*, %struct.timeout_task** %5, align 8
  %24 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DT_CALLOUT_ARMED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load i32, i32* @DT_CALLOUT_ARMED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.timeout_task*, %struct.timeout_task** %5, align 8
  %33 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %37 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %29, %3
  %41 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %42 = call i32 @TQ_UNLOCK(%struct.taskqueue* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @TQ_LOCK(%struct.taskqueue*) #1

declare dso_local i64 @callout_stop(i32*) #1

declare dso_local i32 @taskqueue_cancel_locked(%struct.taskqueue*, i32*, i32*) #1

declare dso_local i32 @TQ_UNLOCK(%struct.taskqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
