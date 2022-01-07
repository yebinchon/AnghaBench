; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_poll.c_hardclock_device_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_poll.c_hardclock_device_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@hardclock_device_poll.prev_t = internal global %struct.timeval zeroinitializer, align 4
@hardclock_device_poll.t = internal global %struct.timeval zeroinitializer, align 4
@poll_handlers = common dso_local global i64 0, align 8
@poll_shutting_down = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@short_ticks = common dso_local global i32 0, align 4
@pending_polls = common dso_local global i32 0, align 4
@stalled = common dso_local global i32 0, align 4
@phase = common dso_local global i32 0, align 4
@suspect = common dso_local global i32 0, align 4
@netisr_poll_scheduled = common dso_local global i32 0, align 4
@netisr_pollmore_scheduled = common dso_local global i32 0, align 4
@lost_polls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hardclock_device_poll() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @poll_handlers, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @poll_shutting_down, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %50

8:                                                ; preds = %4
  %9 = call i32 @microuptime(%struct.timeval* @hardclock_device_poll.t)
  %10 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @hardclock_device_poll.t, i32 0, i32 0), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @hardclock_device_poll.prev_t, i32 0, i32 0), align 4
  %12 = sub nsw i32 %10, %11
  %13 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @hardclock_device_poll.t, i32 0, i32 1), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @hardclock_device_poll.prev_t, i32 0, i32 1), align 4
  %15 = sub nsw i32 %13, %14
  %16 = mul nsw i32 %15, 1000000
  %17 = add nsw i32 %12, %16
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @hz, align 4
  %20 = mul nsw i32 %18, %19
  %21 = icmp slt i32 %20, 500000
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load i32, i32* @short_ticks, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @short_ticks, align 4
  br label %26

25:                                               ; preds = %8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timeval* @hardclock_device_poll.prev_t to i8*), i8* align 4 bitcast (%struct.timeval* @hardclock_device_poll.t to i8*), i64 8, i1 false)
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* @pending_polls, align 4
  %28 = icmp sgt i32 %27, 100
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @stalled, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @stalled, align 4
  store i32 0, i32* @pending_polls, align 4
  store i32 0, i32* @phase, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @phase, align 4
  %34 = icmp sle i32 %33, 2
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* @phase, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @suspect, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @suspect, align 4
  br label %41

41:                                               ; preds = %38, %35
  store i32 1, i32* @phase, align 4
  store i32 1, i32* @netisr_poll_scheduled, align 4
  store i32 1, i32* @netisr_pollmore_scheduled, align 4
  %42 = call i32 (...) @netisr_sched_poll()
  store i32 2, i32* @phase, align 4
  br label %43

43:                                               ; preds = %41, %32
  %44 = load i32, i32* @pending_polls, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @pending_polls, align 4
  %46 = icmp sgt i32 %44, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @lost_polls, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @lost_polls, align 4
  br label %50

50:                                               ; preds = %7, %47, %43
  ret void
}

declare dso_local i32 @microuptime(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @netisr_sched_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
