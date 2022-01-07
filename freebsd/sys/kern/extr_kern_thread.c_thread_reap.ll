; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_reap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@zombie_threads = common dso_local global i32 0, align 4
@zombie_lock = common dso_local global i32 0, align 4
@td_slpq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_reap() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = alloca %struct.thread*, align 8
  %3 = call i32 @TAILQ_EMPTY(i32* @zombie_threads)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %0
  %6 = call i32 @mtx_lock_spin(i32* @zombie_lock)
  %7 = call %struct.thread* @TAILQ_FIRST(i32* @zombie_threads)
  store %struct.thread* %7, %struct.thread** %1, align 8
  %8 = load %struct.thread*, %struct.thread** %1, align 8
  %9 = icmp ne %struct.thread* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 @TAILQ_INIT(i32* @zombie_threads)
  br label %12

12:                                               ; preds = %10, %5
  %13 = call i32 @mtx_unlock_spin(i32* @zombie_lock)
  br label %14

14:                                               ; preds = %17, %12
  %15 = load %struct.thread*, %struct.thread** %1, align 8
  %16 = icmp ne %struct.thread* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.thread*, %struct.thread** %1, align 8
  %19 = load i32, i32* @td_slpq, align 4
  %20 = call %struct.thread* @TAILQ_NEXT(%struct.thread* %18, i32 %19)
  store %struct.thread* %20, %struct.thread** %2, align 8
  %21 = load %struct.thread*, %struct.thread** %1, align 8
  %22 = call i32 @thread_cow_free(%struct.thread* %21)
  %23 = load %struct.thread*, %struct.thread** %1, align 8
  %24 = call i32 @thread_free(%struct.thread* %23)
  %25 = load %struct.thread*, %struct.thread** %2, align 8
  store %struct.thread* %25, %struct.thread** %1, align 8
  br label %14

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %0
  ret void
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local %struct.thread* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local %struct.thread* @TAILQ_NEXT(%struct.thread*, i32) #1

declare dso_local i32 @thread_cow_free(%struct.thread*) #1

declare dso_local i32 @thread_free(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
