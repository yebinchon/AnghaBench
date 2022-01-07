; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_claim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, %struct.TYPE_2__*, %struct.turnstile* }
%struct.TYPE_2__ = type { i64 }
%struct.turnstile = type { i32, i32 }
%struct.turnstile_chain = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@td_contested_lock = common dso_local global i32 0, align 4
@P_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnstile_claim(%struct.turnstile* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.turnstile_chain*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %2, align 8
  %6 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %7 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %6, i32 0, i32 0
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %11 = load %struct.thread*, %struct.thread** @curthread, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 2
  %13 = load %struct.turnstile*, %struct.turnstile** %12, align 8
  %14 = icmp ne %struct.turnstile* %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %4, align 8
  %18 = call i32 @mtx_lock_spin(i32* @td_contested_lock)
  %19 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = call i32 @turnstile_setowner(%struct.turnstile* %19, %struct.thread* %20)
  %22 = call i32 @mtx_unlock_spin(i32* @td_contested_lock)
  %23 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %24 = call %struct.thread* @turnstile_first_waiter(%struct.turnstile* %23)
  store %struct.thread* %24, %struct.thread** %3, align 8
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = icmp ne %struct.thread* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @MPASS(i32 %27)
  %29 = load %struct.thread*, %struct.thread** %3, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @P_MAGIC, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @MPASS(i32 %36)
  %38 = load %struct.thread*, %struct.thread** %3, align 8
  %39 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %40 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %39, i32 0, i32 0
  %41 = call i32 @THREAD_LOCKPTR_ASSERT(%struct.thread* %38, i32* %40)
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = call i32 @thread_lock(%struct.thread* %42)
  %44 = load %struct.thread*, %struct.thread** %3, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.thread*, %struct.thread** %4, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %1
  %52 = load %struct.thread*, %struct.thread** %4, align 8
  %53 = load %struct.thread*, %struct.thread** %3, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @sched_lend_prio(%struct.thread* %52, i64 %55)
  br label %57

57:                                               ; preds = %51, %1
  %58 = load %struct.thread*, %struct.thread** %4, align 8
  %59 = call i32 @thread_unlock(%struct.thread* %58)
  %60 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %61 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.turnstile_chain* @TC_LOOKUP(i32 %62)
  store %struct.turnstile_chain* %63, %struct.turnstile_chain** %5, align 8
  %64 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %65 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %64, i32 0, i32 0
  %66 = call i32 @mtx_unlock_spin(i32* %65)
  %67 = load %struct.turnstile_chain*, %struct.turnstile_chain** %5, align 8
  %68 = getelementptr inbounds %struct.turnstile_chain, %struct.turnstile_chain* %67, i32 0, i32 0
  %69 = call i32 @mtx_unlock_spin(i32* %68)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @turnstile_setowner(%struct.turnstile*, %struct.thread*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local %struct.thread* @turnstile_first_waiter(%struct.turnstile*) #1

declare dso_local i32 @THREAD_LOCKPTR_ASSERT(%struct.thread*, i32*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_lend_prio(%struct.thread*, i64) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local %struct.turnstile_chain* @TC_LOOKUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
