; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_throw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_throw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.tdq = type { i32 }

@switchtime = common dso_local global i32 0, align 4
@switchticks = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@NOCPU = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid count\00", align 1
@sched = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_throw(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.tdq*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = icmp eq %struct.thread* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = call %struct.tdq* (...) @TDQ_SELF()
  store %struct.tdq* %8, %struct.tdq** %4, align 8
  %9 = load %struct.tdq*, %struct.tdq** %4, align 8
  %10 = call i32 @TDQ_LOCK(%struct.tdq* %9)
  %11 = call i32 (...) @spinlock_exit()
  %12 = load i32, i32* @switchtime, align 4
  %13 = call i32 (...) @cpu_ticks()
  %14 = call i32 @PCPU_SET(i32 %12, i32 %13)
  %15 = load i32, i32* @switchticks, align 4
  %16 = load i32, i32* @ticks, align 4
  %17 = call i32 @PCPU_SET(i32 %15, i32 %16)
  br label %43

18:                                               ; preds = %1
  %19 = call %struct.tdq* (...) @TDQ_SELF()
  store %struct.tdq* %19, %struct.tdq** %4, align 8
  %20 = load %struct.thread*, %struct.thread** %2, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.tdq*, %struct.tdq** %4, align 8
  %24 = call %struct.TYPE_6__* @TDQ_LOCKPTR(%struct.tdq* %23)
  %25 = icmp eq %struct.TYPE_6__* %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  %28 = load %struct.tdq*, %struct.tdq** %4, align 8
  %29 = load %struct.thread*, %struct.thread** %2, align 8
  %30 = call i32 @tdq_load_rem(%struct.tdq* %28, %struct.thread* %29)
  %31 = load %struct.tdq*, %struct.tdq** %4, align 8
  %32 = call %struct.TYPE_6__* @TDQ_LOCKPTR(%struct.tdq* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = call i32 @lock_profile_release_lock(i32* %33)
  %35 = load %struct.thread*, %struct.thread** %2, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.thread*, %struct.thread** %2, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @NOCPU, align 4
  %41 = load %struct.thread*, %struct.thread** %2, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %18, %7
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %51 = call %struct.thread* (...) @choosethread()
  store %struct.thread* %51, %struct.thread** %3, align 8
  %52 = load %struct.thread*, %struct.thread** %3, align 8
  %53 = ptrtoint %struct.thread* %52 to i64
  %54 = load %struct.tdq*, %struct.tdq** %4, align 8
  %55 = call %struct.TYPE_6__* @TDQ_LOCKPTR(%struct.tdq* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.thread*, %struct.thread** %2, align 8
  %58 = load %struct.thread*, %struct.thread** %3, align 8
  %59 = call i32 @cpu_throw(%struct.thread* %57, %struct.thread* %58)
  ret void
}

declare dso_local %struct.tdq* @TDQ_SELF(...) #1

declare dso_local i32 @TDQ_LOCK(%struct.tdq*) #1

declare dso_local i32 @spinlock_exit(...) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @cpu_ticks(...) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.TYPE_6__* @TDQ_LOCKPTR(%struct.tdq*) #1

declare dso_local i32 @tdq_load_rem(%struct.tdq*, %struct.thread*) #1

declare dso_local i32 @lock_profile_release_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.thread* @choosethread(...) #1

declare dso_local i32 @cpu_throw(%struct.thread*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
