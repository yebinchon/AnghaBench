; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_poll.c_netisr_pollmore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_poll.c_netisr_pollmore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@poll_handlers = common dso_local global i64 0, align 8
@poll_mtx = common dso_local global i32 0, align 4
@netisr_pollmore_scheduled = common dso_local global i32 0, align 4
@phase = common dso_local global i32 0, align 4
@residual_burst = common dso_local global i64 0, align 8
@netisr_poll_scheduled = common dso_local global i32 0, align 4
@poll_start_t = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@hz = common dso_local global i32 0, align 4
@user_frac = common dso_local global i32 0, align 4
@poll_burst = common dso_local global i32 0, align 4
@poll_burst_max = common dso_local global i32 0, align 4
@pending_polls = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netisr_pollmore() #0 {
  %1 = alloca %struct.timeval, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @poll_handlers, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %71

6:                                                ; preds = %0
  %7 = call i32 @mtx_lock(i32* @poll_mtx)
  %8 = load i32, i32* @netisr_pollmore_scheduled, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = call i32 @mtx_unlock(i32* @poll_mtx)
  br label %71

12:                                               ; preds = %6
  store i32 0, i32* @netisr_pollmore_scheduled, align 4
  store i32 5, i32* @phase, align 4
  %13 = load i64, i64* @residual_burst, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  store i32 1, i32* @netisr_poll_scheduled, align 4
  store i32 1, i32* @netisr_pollmore_scheduled, align 4
  %16 = call i32 (...) @netisr_sched_poll()
  %17 = call i32 @mtx_unlock(i32* @poll_mtx)
  br label %71

18:                                               ; preds = %12
  %19 = call i32 @microuptime(%struct.timeval* %1)
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @poll_start_t, i32 0, i32 0), align 4
  %23 = sub nsw i32 %21, %22
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @poll_start_t, i32 0, i32 1), align 4
  %27 = sub nsw i32 %25, %26
  %28 = mul nsw i32 %27, 1000000
  %29 = add nsw i32 %23, %28
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @hz, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sdiv i32 %32, 10000
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @user_frac, align 4
  %36 = sub nsw i32 100, %35
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %18
  %39 = load i32, i32* @poll_burst, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @poll_burst, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @poll_burst, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %53

45:                                               ; preds = %18
  %46 = load i32, i32* @poll_burst, align 4
  %47 = load i32, i32* @poll_burst_max, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @poll_burst, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @poll_burst, align 4
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i64, i64* @pending_polls, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* @pending_polls, align 8
  %56 = load i64, i64* @pending_polls, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* @phase, align 4
  br label %69

59:                                               ; preds = %53
  %60 = load i32, i32* @poll_burst, align 4
  %61 = sdiv i32 %60, 8
  %62 = load i32, i32* @poll_burst, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* @poll_burst, align 4
  %64 = load i32, i32* @poll_burst, align 4
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* @poll_burst, align 4
  br label %67

67:                                               ; preds = %66, %59
  store i32 1, i32* @netisr_poll_scheduled, align 4
  store i32 1, i32* @netisr_pollmore_scheduled, align 4
  %68 = call i32 (...) @netisr_sched_poll()
  store i32 6, i32* @phase, align 4
  br label %69

69:                                               ; preds = %67, %58
  %70 = call i32 @mtx_unlock(i32* @poll_mtx)
  br label %71

71:                                               ; preds = %69, %15, %10, %5
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @netisr_sched_poll(...) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
