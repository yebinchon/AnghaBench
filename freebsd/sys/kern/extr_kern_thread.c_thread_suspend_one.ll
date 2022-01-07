; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_suspend_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_suspend_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"already suspended\00", align 1
@TDF_NEEDSUSPCHK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_suspend_one(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 1
  %6 = load %struct.proc*, %struct.proc** %5, align 8
  store %struct.proc* %6, %struct.proc** %3, align 8
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PROC_SLOCK_ASSERT(%struct.proc* %7, i32 %8)
  %10 = load %struct.thread*, %struct.thread** %2, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %10, i32 %11)
  %13 = load %struct.thread*, %struct.thread** %2, align 8
  %14 = call i32 @TD_IS_SUSPENDED(%struct.thread* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.proc*, %struct.proc** %3, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @TDF_NEEDSUSPCHK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.thread*, %struct.thread** %2, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.thread*, %struct.thread** %2, align 8
  %30 = call i32 @TD_SET_SUSPENDED(%struct.thread* %29)
  %31 = load %struct.thread*, %struct.thread** %2, align 8
  %32 = call i32 @sched_sleep(%struct.thread* %31, i32 0)
  ret void
}

declare dso_local i32 @PROC_SLOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TD_IS_SUSPENDED(%struct.thread*) #1

declare dso_local i32 @TD_SET_SUSPENDED(%struct.thread*) #1

declare dso_local i32 @sched_sleep(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
