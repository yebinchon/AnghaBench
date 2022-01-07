; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i8*, i32, %struct.proc* }
%struct.proc = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thread*)* }
%struct.trapframe = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@PRS_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"executing process is still new\00", align 1
@KTR_PROC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"fork_exit: new thread %p (td_sched %p, pid %d, %s)\00", align 1
@deadthread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"NULL callout in fork_exit\00", align 1
@P_KPROC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Kernel thread \22%s\22 (pid %d) exited prematurely.\0A\00", align 1
@Giant = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@TDP_FORKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fork_exit(void (i8*, %struct.trapframe*)* %0, i8* %1, %struct.trapframe* %2) #0 {
  %4 = alloca void (i8*, %struct.trapframe*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.thread*, align 8
  store void (i8*, %struct.trapframe*)* %0, void (i8*, %struct.trapframe*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.trapframe* %2, %struct.trapframe** %6, align 8
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %8, align 8
  %11 = load %struct.thread*, %struct.thread** %8, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 2
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %7, align 8
  %14 = load %struct.proc*, %struct.proc** %7, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PRS_NORMAL, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @KTR_PROC, align 4
  %22 = load %struct.thread*, %struct.thread** %8, align 8
  %23 = load %struct.thread*, %struct.thread** %8, align 8
  %24 = call i32 @td_get_sched(%struct.thread* %23)
  %25 = load %struct.proc*, %struct.proc** %7, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.thread*, %struct.thread** %8, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @CTR4(i32 %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.thread* %22, i32 %24, i32 %27, i8* %30)
  %32 = load %struct.thread*, %struct.thread** %8, align 8
  %33 = call i32 @sched_fork_exit(%struct.thread* %32)
  %34 = load i32, i32* @deadthread, align 4
  %35 = call %struct.thread* @PCPU_GET(i32 %34)
  store %struct.thread* %35, %struct.thread** %9, align 8
  %36 = icmp ne %struct.thread* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load i32, i32* @deadthread, align 4
  %39 = call i32 @PCPU_SET(i32 %38, i32* null)
  %40 = load %struct.thread*, %struct.thread** %9, align 8
  %41 = call i32 @thread_stash(%struct.thread* %40)
  br label %42

42:                                               ; preds = %37, %3
  %43 = load %struct.thread*, %struct.thread** %8, align 8
  %44 = call i32 @thread_unlock(%struct.thread* %43)
  %45 = load void (i8*, %struct.trapframe*)*, void (i8*, %struct.trapframe*)** %4, align 8
  %46 = icmp ne void (i8*, %struct.trapframe*)* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %49 = load void (i8*, %struct.trapframe*)*, void (i8*, %struct.trapframe*)** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  call void %49(i8* %50, %struct.trapframe* %51)
  %52 = load %struct.proc*, %struct.proc** %7, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @P_KPROC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %42
  %59 = load %struct.thread*, %struct.thread** %8, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.proc*, %struct.proc** %7, align 8
  %63 = getelementptr inbounds %struct.proc, %struct.proc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %61, i32 %64)
  %66 = call i32 (...) @kthread_exit()
  br label %67

67:                                               ; preds = %58, %42
  %68 = load i32, i32* @MA_NOTOWNED, align 4
  %69 = call i32 @mtx_assert(i32* @Giant, i32 %68)
  %70 = load %struct.proc*, %struct.proc** %7, align 8
  %71 = getelementptr inbounds %struct.proc, %struct.proc* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.thread*)*, i32 (%struct.thread*)** %73, align 8
  %75 = icmp ne i32 (%struct.thread*)* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.proc*, %struct.proc** %7, align 8
  %78 = getelementptr inbounds %struct.proc, %struct.proc* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.thread*)*, i32 (%struct.thread*)** %80, align 8
  %82 = load %struct.thread*, %struct.thread** %8, align 8
  %83 = call i32 %81(%struct.thread* %82)
  br label %84

84:                                               ; preds = %76, %67
  %85 = load i32, i32* @TDP_FORKING, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.thread*, %struct.thread** %8, align 8
  %88 = getelementptr inbounds %struct.thread, %struct.thread* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CTR4(i32, i8*, %struct.thread*, i32, i32, i8*) #1

declare dso_local i32 @td_get_sched(%struct.thread*) #1

declare dso_local i32 @sched_fork_exit(%struct.thread*) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @PCPU_SET(i32, i32*) #1

declare dso_local i32 @thread_stash(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @kthread_exit(...) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
