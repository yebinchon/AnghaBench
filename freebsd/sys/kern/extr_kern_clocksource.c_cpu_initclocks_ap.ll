; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_cpu_initclocks_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_cpu_initclocks_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pcpu_state = type { i32 }

@timerstate = common dso_local global i32 0, align 4
@curcpu = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_initclocks_ap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pcpu_state*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = load i32, i32* @timerstate, align 4
  %5 = call %struct.pcpu_state* @DPCPU_PTR(i32 %4)
  store %struct.pcpu_state* %5, %struct.pcpu_state** %2, align 8
  %6 = call i32 (...) @sbinuptime()
  store i32 %6, i32* %1, align 4
  %7 = load %struct.pcpu_state*, %struct.pcpu_state** %2, align 8
  %8 = call i32 @ET_HW_LOCK(%struct.pcpu_state* %7)
  %9 = load i32, i32* %1, align 4
  %10 = load %struct.pcpu_state*, %struct.pcpu_state** %2, align 8
  %11 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @curcpu, align 4
  %13 = call i32 @hardclock_sync(i32 %12)
  %14 = call i32 (...) @spinlock_enter()
  %15 = load %struct.pcpu_state*, %struct.pcpu_state** %2, align 8
  %16 = call i32 @ET_HW_UNLOCK(%struct.pcpu_state* %15)
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %3, align 8
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.pcpu_state*, %struct.pcpu_state** %2, align 8
  %23 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @handleevents(i32 %24, i32 2)
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = call i32 (...) @spinlock_exit()
  ret void
}

declare dso_local %struct.pcpu_state* @DPCPU_PTR(i32) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @ET_HW_LOCK(%struct.pcpu_state*) #1

declare dso_local i32 @hardclock_sync(i32) #1

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @ET_HW_UNLOCK(%struct.pcpu_state*) #1

declare dso_local i32 @handleevents(i32, i32) #1

declare dso_local i32 @spinlock_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
