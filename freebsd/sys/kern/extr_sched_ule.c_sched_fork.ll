; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@tickincr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_fork(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %5, i32 %6)
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = call %struct.TYPE_3__* @td_get_sched(%struct.thread* %8)
  %10 = call i32 @sched_pctcpu_update(%struct.TYPE_3__* %9, i32 1)
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = call i32 @sched_fork_thread(%struct.thread* %11, %struct.thread* %12)
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = call i32 @sched_interact_fork(%struct.thread* %14)
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = call i32 @sched_priority(%struct.thread* %16)
  %18 = load i64, i64* @tickincr, align 8
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = call %struct.TYPE_3__* @td_get_sched(%struct.thread* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %18
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = call i32 @sched_interact_update(%struct.thread* %26)
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = call i32 @sched_priority(%struct.thread* %28)
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @sched_pctcpu_update(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_3__* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @sched_fork_thread(%struct.thread*, %struct.thread*) #1

declare dso_local i32 @sched_interact_fork(%struct.thread*) #1

declare dso_local i32 @sched_priority(%struct.thread*) #1

declare dso_local i32 @sched_interact_update(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
