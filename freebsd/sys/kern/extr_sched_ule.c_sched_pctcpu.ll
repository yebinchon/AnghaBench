; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_pctcpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_pctcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.td_sched = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@SCHED_TICK_SECS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@FSCALE = common dso_local global i32 0, align 4
@FSHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sched_pctcpu(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.td_sched*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = call %struct.td_sched* @td_get_sched(%struct.thread* %6)
  store %struct.td_sched* %7, %struct.td_sched** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %8, i32 %9)
  %11 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %12 = load %struct.thread*, %struct.thread** %2, align 8
  %13 = call i32 @TD_IS_RUNNING(%struct.thread* %12)
  %14 = call i32 @sched_pctcpu_update(%struct.td_sched* %11, i32 %13)
  %15 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %16 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %21 = call i32 @SCHED_TICK_HZ(%struct.td_sched* %20)
  %22 = load i32, i32* @SCHED_TICK_SECS, align 4
  %23 = sdiv i32 %21, %22
  %24 = load i32, i32* @hz, align 4
  %25 = call i32 @min(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @FSCALE, align 4
  %27 = load i32, i32* @FSCALE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* @hz, align 4
  %31 = sdiv i32 %29, %30
  %32 = mul nsw i32 %26, %31
  %33 = load i32, i32* @FSHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %19, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @sched_pctcpu_update(%struct.td_sched*, i32) #1

declare dso_local i32 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @SCHED_TICK_HZ(%struct.td_sched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
