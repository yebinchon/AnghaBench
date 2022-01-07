; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c__timeout_task_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c__timeout_task_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { i32 }
%struct.timeout_task = type { i64, %struct.taskqueue*, i32, i32 }

@CALLOUT_RETURNUNLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_timeout_task_init(%struct.taskqueue* %0, %struct.timeout_task* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.taskqueue*, align 8
  %7 = alloca %struct.timeout_task*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.taskqueue* %0, %struct.taskqueue** %6, align 8
  store %struct.timeout_task* %1, %struct.timeout_task** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %12 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %11, i32 0, i32 3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @TASK_INIT(i32* %12, i32 %13, i32 %14, i8* %15)
  %17 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %18 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %17, i32 0, i32 2
  %19 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %20 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %19, i32 0, i32 0
  %21 = load i32, i32* @CALLOUT_RETURNUNLOCKED, align 4
  %22 = call i32 @callout_init_mtx(i32* %18, i32* %20, i32 %21)
  %23 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %24 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %25 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %24, i32 0, i32 1
  store %struct.taskqueue* %23, %struct.taskqueue** %25, align 8
  %26 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %27 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  ret void
}

declare dso_local i32 @TASK_INIT(i32*, i32, i32, i8*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
