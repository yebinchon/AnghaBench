; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32 }
%struct.td_sched = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TDF_CANSWAP = common dso_local global i32 0, align 4
@sched_slice = common dso_local global i32 0, align 4
@SRQ_BORING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_wakeup(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.td_sched*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %4, i32 %5)
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = call %struct.td_sched* @td_get_sched(%struct.thread* %7)
  store %struct.td_sched* %8, %struct.td_sched** %3, align 8
  %9 = load i32, i32* @TDF_CANSWAP, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %16 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.thread*, %struct.thread** %2, align 8
  %21 = call i32 @updatepri(%struct.thread* %20)
  %22 = load %struct.thread*, %struct.thread** %2, align 8
  %23 = call i32 @resetpriority(%struct.thread* %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.thread*, %struct.thread** %2, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %28 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @sched_slice, align 4
  %30 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %31 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.thread*, %struct.thread** %2, align 8
  %33 = load i32, i32* @SRQ_BORING, align 4
  %34 = call i32 @sched_add(%struct.thread* %32, i32 %33)
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @updatepri(%struct.thread*) #1

declare dso_local i32 @resetpriority(%struct.thread*) #1

declare dso_local i32 @sched_add(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
