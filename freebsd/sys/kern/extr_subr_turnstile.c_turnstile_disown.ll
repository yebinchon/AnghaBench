; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_disown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_disown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.turnstile = type { i32, %struct.thread*, i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@TS_EXCLUSIVE_QUEUE = common dso_local global i64 0, align 8
@TS_SHARED_QUEUE = common dso_local global i64 0, align 8
@td_contested_lock = common dso_local global i32 0, align 4
@ts_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnstile_disown(%struct.turnstile* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  store %struct.turnstile* %0, %struct.turnstile** %2, align 8
  %5 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %6 = icmp ne %struct.turnstile* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @MPASS(i32 %7)
  %9 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %10 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %9, i32 0, i32 0
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %14 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %13, i32 0, i32 1
  %15 = load %struct.thread*, %struct.thread** %14, align 8
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  %17 = icmp eq %struct.thread* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %21 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %20, i32 0, i32 3
  %22 = call i32 @TAILQ_EMPTY(i32* %21)
  %23 = call i32 @MPASS(i32 %22)
  %24 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %25 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @TS_EXCLUSIVE_QUEUE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @TAILQ_EMPTY(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %33 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @TS_SHARED_QUEUE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @TAILQ_EMPTY(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %31, %1
  %41 = phi i1 [ true, %1 ], [ %39, %31 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @MPASS(i32 %42)
  %44 = call i32 @mtx_lock_spin(i32* @td_contested_lock)
  %45 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %46 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %45, i32 0, i32 1
  store %struct.thread* null, %struct.thread** %46, align 8
  %47 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %48 = load i32, i32* @ts_link, align 4
  %49 = call i32 @LIST_REMOVE(%struct.turnstile* %47, i32 %48)
  %50 = call i32 @mtx_unlock_spin(i32* @td_contested_lock)
  %51 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %51, %struct.thread** %3, align 8
  %52 = load %struct.thread*, %struct.thread** %3, align 8
  %53 = call i32 @thread_lock(%struct.thread* %52)
  %54 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %55 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %54, i32 0, i32 0
  %56 = call i32 @mtx_unlock_spin(i32* %55)
  %57 = call i32 @mtx_lock_spin(i32* @td_contested_lock)
  %58 = load %struct.thread*, %struct.thread** %3, align 8
  %59 = call i32 @turnstile_calc_unlend_prio_locked(%struct.thread* %58)
  store i32 %59, i32* %4, align 4
  %60 = call i32 @mtx_unlock_spin(i32* @td_contested_lock)
  %61 = load %struct.thread*, %struct.thread** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @sched_unlend_prio(%struct.thread* %61, i32 %62)
  %64 = load %struct.thread*, %struct.thread** %3, align 8
  %65 = call i32 @thread_unlock(%struct.thread* %64)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.turnstile*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @turnstile_calc_unlend_prio_locked(%struct.thread*) #1

declare dso_local i32 @sched_unlend_prio(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
