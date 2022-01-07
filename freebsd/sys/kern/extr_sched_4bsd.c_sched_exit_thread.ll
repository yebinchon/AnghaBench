; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_exit_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_exit_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@KTR_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"prio:%d\00", align 1
@TDF_NOLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_exit_thread(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load i32, i32* @KTR_SCHED, align 4
  %6 = load %struct.thread*, %struct.thread** %4, align 8
  %7 = call i32 @sched_tdname(%struct.thread* %6)
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @KTR_STATE1(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = call i32 @thread_lock(%struct.thread* %12)
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = call %struct.TYPE_2__* @td_get_sched(%struct.thread* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = call %struct.TYPE_2__* @td_get_sched(%struct.thread* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = call i64 @ESTCPULIM(i64 %22)
  %24 = load %struct.thread*, %struct.thread** %3, align 8
  %25 = call %struct.TYPE_2__* @td_get_sched(%struct.thread* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = call i32 @thread_unlock(%struct.thread* %27)
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = call i32 @thread_lock(%struct.thread* %29)
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TDF_NOLOAD, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = call i32 (...) @sched_load_rem()
  br label %39

39:                                               ; preds = %37, %2
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = call i32 @thread_unlock(%struct.thread* %40)
  ret void
}

declare dso_local i32 @KTR_STATE1(i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @sched_tdname(%struct.thread*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i64 @ESTCPULIM(i64) #1

declare dso_local %struct.TYPE_2__* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @sched_load_rem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
