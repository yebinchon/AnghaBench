; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i64 }
%struct.thread = type { i32, i32* }

@Giant = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"multiple threads in thread_wait()\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"p_exitthreads leaking\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_wait(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.thread*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load i32, i32* @MA_NOTOWNED, align 4
  %5 = call i32 @mtx_assert(i32* @Giant, i32 %4)
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.proc*, %struct.proc** %2, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.proc*, %struct.proc** %2, align 8
  %19 = call %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc* %18)
  store %struct.thread* %19, %struct.thread** %3, align 8
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = call i32 @thread_lock(%struct.thread* %20)
  %22 = load %struct.thread*, %struct.thread** %3, align 8
  %23 = call i32 @thread_unlock(%struct.thread* %22)
  %24 = load %struct.thread*, %struct.thread** %3, align 8
  %25 = call i32 @lock_profile_thread_exit(%struct.thread* %24)
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @cpuset_rel(i32* %28)
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = call i32 @cpu_thread_clean(%struct.thread* %32)
  %34 = load %struct.thread*, %struct.thread** %3, align 8
  %35 = call i32 @thread_cow_free(%struct.thread* %34)
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = call i32 @callout_drain(i32* %37)
  %39 = call i32 (...) @thread_reap()
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @lock_profile_thread_exit(%struct.thread*) #1

declare dso_local i32 @cpuset_rel(i32*) #1

declare dso_local i32 @cpu_thread_clean(%struct.thread*) #1

declare dso_local i32 @thread_cow_free(%struct.thread*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @thread_reap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
