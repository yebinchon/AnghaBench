; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_enqueue_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_enqueue_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { i32 }
%struct.timeout_task = type { i32 }

@tick_sbt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taskqueue_enqueue_timeout(%struct.taskqueue* %0, %struct.timeout_task* %1, i32 %2) #0 {
  %4 = alloca %struct.taskqueue*, align 8
  %5 = alloca %struct.timeout_task*, align 8
  %6 = alloca i32, align 4
  store %struct.taskqueue* %0, %struct.taskqueue** %4, align 8
  store %struct.timeout_task* %1, %struct.timeout_task** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %8 = load %struct.timeout_task*, %struct.timeout_task** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @tick_sbt, align 4
  %11 = mul nsw i32 %9, %10
  %12 = call i32 @taskqueue_enqueue_timeout_sbt(%struct.taskqueue* %7, %struct.timeout_task* %8, i32 %11, i32 0, i32 0)
  ret i32 %12
}

declare dso_local i32 @taskqueue_enqueue_timeout_sbt(%struct.taskqueue*, %struct.timeout_task*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
