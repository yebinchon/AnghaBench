; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.thread = type { i32 }

@KTR_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"proc exit\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"prio:%d\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_exit(%struct.proc* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thread*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load i32, i32* @KTR_SCHED, align 4
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = call i32 @sched_tdname(%struct.thread* %7)
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @KTR_STATE1(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load %struct.proc*, %struct.proc** %3, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %13, i32 %14)
  %16 = load %struct.proc*, %struct.proc** %3, align 8
  %17 = call %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc* %16)
  store %struct.thread* %17, %struct.thread** %5, align 8
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = call i32 @sched_exit_thread(%struct.thread* %18, %struct.thread* %19)
  ret void
}

declare dso_local i32 @KTR_STATE1(i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @sched_tdname(%struct.thread*) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc*) #1

declare dso_local i32 @sched_exit_thread(%struct.thread*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
