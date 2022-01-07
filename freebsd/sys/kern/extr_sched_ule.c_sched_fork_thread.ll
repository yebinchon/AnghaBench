; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_fork_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_fork_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.td_sched = type { i32, i64, i32, i32, i32, i32, i32, i64, i32 }
%struct.tdq = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NOCPU = common dso_local global i8* null, align 8
@sched_slice_min = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_fork_thread(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.td_sched*, align 8
  %6 = alloca %struct.td_sched*, align 8
  %7 = alloca %struct.tdq*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %8 = call %struct.tdq* (...) @TDQ_SELF()
  store %struct.tdq* %8, %struct.tdq** %7, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %9, i32 %10)
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = call %struct.td_sched* @td_get_sched(%struct.thread* %12)
  store %struct.td_sched* %13, %struct.td_sched** %5, align 8
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = call %struct.td_sched* @td_get_sched(%struct.thread* %14)
  store %struct.td_sched* %15, %struct.td_sched** %6, align 8
  %16 = load i8*, i8** @NOCPU, align 8
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @NOCPU, align 8
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load %struct.tdq*, %struct.tdq** %7, align 8
  %23 = call i32 @TDQ_LOCKPTR(%struct.tdq* %22)
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call %struct.TYPE_5__* @cpuset_ref(%struct.TYPE_5__* %28)
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 2
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %41 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %44 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %46 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %48 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %51 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %53 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %56 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %58 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %61 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.thread*, %struct.thread** %4, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %68 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %71 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %73 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %76 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.tdq*, %struct.tdq** %7, align 8
  %78 = call i64 @tdq_slice(%struct.tdq* %77)
  %79 = load i64, i64* @sched_slice_min, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %82 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  ret void
}

declare dso_local %struct.tdq* @TDQ_SELF(...) #1

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @TDQ_LOCKPTR(%struct.tdq*) #1

declare dso_local %struct.TYPE_5__* @cpuset_ref(%struct.TYPE_5__*) #1

declare dso_local i64 @tdq_slice(%struct.tdq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
