; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kthread_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kthread_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@tidhash_lock = common dso_local global i32 0, align 4
@td_hash = common dso_local global i32 0, align 4
@PMC_FN_THR_EXIT_LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kthread_exit() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = alloca %struct.thread*, align 8
  %3 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %3, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = load %struct.proc*, %struct.proc** %5, align 8
  store %struct.proc* %6, %struct.proc** %1, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = call i32 @wakeup(%struct.thread* %7)
  %9 = call i32 @rw_wlock(i32* @tidhash_lock)
  %10 = load %struct.proc*, %struct.proc** %1, align 8
  %11 = call i32 @PROC_LOCK(%struct.proc* %10)
  %12 = load %struct.proc*, %struct.proc** %1, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %0
  %17 = load %struct.proc*, %struct.proc** %1, align 8
  %18 = call i32 @PROC_UNLOCK(%struct.proc* %17)
  %19 = call i32 @rw_wunlock(i32* @tidhash_lock)
  %20 = call i32 @kproc_exit(i32 0)
  br label %21

21:                                               ; preds = %16, %0
  %22 = load %struct.thread*, %struct.thread** %2, align 8
  %23 = load i32, i32* @td_hash, align 4
  %24 = call i32 @LIST_REMOVE(%struct.thread* %22, i32 %23)
  %25 = call i32 @rw_wunlock(i32* @tidhash_lock)
  %26 = load %struct.thread*, %struct.thread** %2, align 8
  %27 = call i32 @umtx_thread_exit(%struct.thread* %26)
  %28 = load %struct.thread*, %struct.thread** %2, align 8
  %29 = call i32 @tdsigcleanup(%struct.thread* %28)
  %30 = load %struct.proc*, %struct.proc** %1, align 8
  %31 = call i32 @PROC_SLOCK(%struct.proc* %30)
  %32 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local i32 @wakeup(%struct.thread*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.thread*, i32) #1

declare dso_local i32 @umtx_thread_exit(%struct.thread*) #1

declare dso_local i32 @tdsigcleanup(%struct.thread*) #1

declare dso_local i32 @PROC_SLOCK(%struct.proc*) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
