; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_fork_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_fork_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.td_sched = type { i32, i32, i32 }

@NOCPU = common dso_local global i8* null, align 8
@sched_lock = common dso_local global i32 0, align 4
@TSF_AFFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_fork_thread(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.td_sched*, align 8
  %6 = alloca %struct.td_sched*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %7 = load i8*, i8** @NOCPU, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 6
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** @NOCPU, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 4
  store i32* @sched_lock, i32** %14, align 8
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call %struct.TYPE_5__* @cpuset_ref(%struct.TYPE_5__* %17)
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 2
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %20, align 8
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = call %struct.td_sched* @td_get_sched(%struct.thread* %34)
  store %struct.td_sched* %35, %struct.td_sched** %5, align 8
  %36 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %37 = call i32 @bzero(%struct.td_sched* %36, i32 12)
  %38 = load %struct.thread*, %struct.thread** %3, align 8
  %39 = call %struct.td_sched* @td_get_sched(%struct.thread* %38)
  store %struct.td_sched* %39, %struct.td_sched** %6, align 8
  %40 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %41 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %44 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.td_sched*, %struct.td_sched** %6, align 8
  %46 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TSF_AFFINITY, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %51 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.td_sched*, %struct.td_sched** %5, align 8
  %55 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  ret void
}

declare dso_local %struct.TYPE_5__* @cpuset_ref(%struct.TYPE_5__*) #1

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @bzero(%struct.td_sched*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
