; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_ktimer_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_ktimer_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.itimerspec = type { i32 }
%struct.itimer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@timer_settime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_ktimer_settime(%struct.thread* %0, i32 %1, i32 %2, %struct.itimerspec* %3, %struct.itimerspec* %4) #0 {
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.itimerspec*, align 8
  %10 = alloca %struct.itimerspec*, align 8
  %11 = alloca %struct.proc*, align 8
  %12 = alloca %struct.itimer*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.itimerspec* %3, %struct.itimerspec** %9, align 8
  store %struct.itimerspec* %4, %struct.itimerspec** %10, align 8
  %14 = load %struct.thread*, %struct.thread** %6, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %11, align 8
  %17 = load %struct.proc*, %struct.proc** %11, align 8
  %18 = call i32 @PROC_LOCK(%struct.proc* %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load %struct.proc*, %struct.proc** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.itimer* @itimer_find(%struct.proc* %22, i32 %23)
  store %struct.itimer* %24, %struct.itimer** %12, align 8
  %25 = icmp eq %struct.itimer* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %5
  %27 = load %struct.proc*, %struct.proc** %11, align 8
  %28 = call i32 @PROC_UNLOCK(%struct.proc* %27)
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %13, align 4
  br label %49

30:                                               ; preds = %21
  %31 = load %struct.proc*, %struct.proc** %11, align 8
  %32 = call i32 @PROC_UNLOCK(%struct.proc* %31)
  %33 = load %struct.itimer*, %struct.itimer** %12, align 8
  %34 = call i32 @itimer_enter(%struct.itimer* %33)
  %35 = load %struct.itimer*, %struct.itimer** %12, align 8
  %36 = getelementptr inbounds %struct.itimer, %struct.itimer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @timer_settime, align 4
  %39 = load %struct.itimer*, %struct.itimer** %12, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %42 = load %struct.itimerspec*, %struct.itimerspec** %10, align 8
  %43 = bitcast %struct.itimerspec* %42 to %struct.itimer*
  %44 = call i32 @CLOCK_CALL(i32 %37, i32 %38, %struct.itimer* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.itimer*, %struct.itimer** %12, align 8
  %46 = call i32 @itimer_leave(%struct.itimer* %45)
  %47 = load %struct.itimer*, %struct.itimer** %12, align 8
  %48 = call i32 @ITIMER_UNLOCK(%struct.itimer* %47)
  br label %49

49:                                               ; preds = %30, %26
  %50 = load i32, i32* %13, align 4
  ret i32 %50
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
