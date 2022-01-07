; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_throw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_throw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.thread = type { i32, i32, %struct.TYPE_7__* }

@sched_lock = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@switchtime = common dso_local global i32 0, align 4
@switchticks = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@NOCPU = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid count\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_throw(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %3 = load %struct.thread*, %struct.thread** %2, align 8
  %4 = icmp eq %struct.thread* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = call i32 @mtx_lock_spin(%struct.TYPE_7__* @sched_lock)
  %7 = call i32 (...) @spinlock_exit()
  %8 = load i32, i32* @switchtime, align 4
  %9 = call i32 (...) @cpu_ticks()
  %10 = call i32 @PCPU_SET(i32 %8, i32 %9)
  %11 = load i32, i32* @switchticks, align 4
  %12 = load i32, i32* @ticks, align 4
  %13 = call i32 @PCPU_SET(i32 %11, i32 %12)
  br label %30

14:                                               ; preds = %1
  %15 = call i32 @lock_profile_release_lock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sched_lock, i32 0, i32 0))
  %16 = load %struct.thread*, %struct.thread** %2, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, @sched_lock
  %20 = zext i1 %19 to i32
  %21 = call i32 @MPASS(i32 %20)
  %22 = load %struct.thread*, %struct.thread** %2, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.thread*, %struct.thread** %2, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @NOCPU, align 4
  %28 = load %struct.thread*, %struct.thread** %2, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %14, %5
  %31 = load i32, i32* @MA_OWNED, align 4
  %32 = call i32 @mtx_assert(%struct.TYPE_7__* @sched_lock, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.thread*, %struct.thread** %2, align 8
  %41 = call i32 (...) @choosethread()
  %42 = call i32 @cpu_throw(%struct.thread* %40, i32 %41)
  ret void
}

declare dso_local i32 @mtx_lock_spin(%struct.TYPE_7__*) #1

declare dso_local i32 @spinlock_exit(...) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @cpu_ticks(...) #1

declare dso_local i32 @lock_profile_release_lock(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_assert(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cpu_throw(%struct.thread*, i32) #1

declare dso_local i32 @choosethread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
