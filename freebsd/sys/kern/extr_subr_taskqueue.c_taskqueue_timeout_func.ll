; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_timeout_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_timeout_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { i32 }
%struct.timeout_task = type { i32, i32, %struct.taskqueue* }

@DT_CALLOUT_ARMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Stray timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @taskqueue_timeout_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taskqueue_timeout_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.taskqueue*, align 8
  %4 = alloca %struct.timeout_task*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.timeout_task*
  store %struct.timeout_task* %6, %struct.timeout_task** %4, align 8
  %7 = load %struct.timeout_task*, %struct.timeout_task** %4, align 8
  %8 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %7, i32 0, i32 2
  %9 = load %struct.taskqueue*, %struct.taskqueue** %8, align 8
  store %struct.taskqueue* %9, %struct.taskqueue** %3, align 8
  %10 = load %struct.timeout_task*, %struct.timeout_task** %4, align 8
  %11 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DT_CALLOUT_ARMED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @DT_CALLOUT_ARMED, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.timeout_task*, %struct.timeout_task** %4, align 8
  %21 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.taskqueue*, %struct.taskqueue** %3, align 8
  %25 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.timeout_task*, %struct.timeout_task** %4, align 8
  %29 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %28, i32 0, i32 2
  %30 = load %struct.taskqueue*, %struct.taskqueue** %29, align 8
  %31 = load %struct.timeout_task*, %struct.timeout_task** %4, align 8
  %32 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %31, i32 0, i32 1
  %33 = call i32 @taskqueue_enqueue_locked(%struct.taskqueue* %30, i32* %32)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @taskqueue_enqueue_locked(%struct.taskqueue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
