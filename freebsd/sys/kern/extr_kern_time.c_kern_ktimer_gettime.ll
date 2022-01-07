; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_ktimer_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_ktimer_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.itimerspec = type { i32 }
%struct.itimer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@timer_gettime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_ktimer_gettime(%struct.thread* %0, i32 %1, %struct.itimerspec* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimerspec*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.itimer*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.itimerspec* %2, %struct.itimerspec** %6, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %7, align 8
  %13 = load %struct.proc*, %struct.proc** %7, align 8
  %14 = call i32 @PROC_LOCK(%struct.proc* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.proc*, %struct.proc** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.itimer* @itimer_find(%struct.proc* %18, i32 %19)
  store %struct.itimer* %20, %struct.itimer** %8, align 8
  %21 = icmp eq %struct.itimer* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %3
  %23 = load %struct.proc*, %struct.proc** %7, align 8
  %24 = call i32 @PROC_UNLOCK(%struct.proc* %23)
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %9, align 4
  br label %43

26:                                               ; preds = %17
  %27 = load %struct.proc*, %struct.proc** %7, align 8
  %28 = call i32 @PROC_UNLOCK(%struct.proc* %27)
  %29 = load %struct.itimer*, %struct.itimer** %8, align 8
  %30 = call i32 @itimer_enter(%struct.itimer* %29)
  %31 = load %struct.itimer*, %struct.itimer** %8, align 8
  %32 = getelementptr inbounds %struct.itimer, %struct.itimer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @timer_gettime, align 4
  %35 = load %struct.itimer*, %struct.itimer** %8, align 8
  %36 = load %struct.itimerspec*, %struct.itimerspec** %6, align 8
  %37 = bitcast %struct.itimerspec* %36 to %struct.itimer*
  %38 = call i32 @CLOCK_CALL(i32 %33, i32 %34, %struct.itimer* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.itimer*, %struct.itimer** %8, align 8
  %40 = call i32 @itimer_leave(%struct.itimer* %39)
  %41 = load %struct.itimer*, %struct.itimer** %8, align 8
  %42 = call i32 @ITIMER_UNLOCK(%struct.itimer* %41)
  br label %43

43:                                               ; preds = %26, %22
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.itimer* @itimer_find(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @itimer_enter(%struct.itimer*) #1

declare dso_local i32 @CLOCK_CALL(i32, i32, %struct.itimer*) #1

declare dso_local i32 @itimer_leave(%struct.itimer*) #1

declare dso_local i32 @ITIMER_UNLOCK(%struct.itimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
