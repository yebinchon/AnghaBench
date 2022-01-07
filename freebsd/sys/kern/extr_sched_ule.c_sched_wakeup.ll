; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.td_sched = type { i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@TDF_CANSWAP = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@SCHED_TICK_SHIFT = common dso_local global i32 0, align 4
@SRQ_BORING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_wakeup(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.td_sched*, align 8
  %4 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %5, i32 %6)
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = call %struct.td_sched* @td_get_sched(%struct.thread* %8)
  store %struct.td_sched* %9, %struct.td_sched** %3, align 8
  %10 = load i32, i32* @TDF_CANSWAP, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.thread*, %struct.thread** %2, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.thread*, %struct.thread** %2, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.thread*, %struct.thread** %2, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ticks, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i32, i32* @ticks, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @SCHED_TICK_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %34 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.thread*, %struct.thread** %2, align 8
  %38 = call i32 @sched_interact_update(%struct.thread* %37)
  %39 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %40 = call i32 @sched_pctcpu_update(%struct.td_sched* %39, i32 0)
  br label %41

41:                                               ; preds = %27, %23, %1
  %42 = load %struct.td_sched*, %struct.td_sched** %3, align 8
  %43 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.thread*, %struct.thread** %2, align 8
  %45 = load i32, i32* @SRQ_BORING, align 4
  %46 = call i32 @sched_add(%struct.thread* %44, i32 %45)
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @sched_interact_update(%struct.thread*) #1

declare dso_local i32 @sched_pctcpu_update(%struct.td_sched*, i32) #1

declare dso_local i32 @sched_add(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
