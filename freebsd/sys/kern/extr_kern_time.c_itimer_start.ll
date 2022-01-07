; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kclock = type { i32*, i32, i32, i32, i32 }

@realtimer_gettime = common dso_local global i32 0, align 4
@realtimer_settime = common dso_local global i32 0, align 4
@realtimer_delete = common dso_local global i32 0, align 4
@realtimer_create = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"itimer\00", align 1
@itimer_init = common dso_local global i32 0, align 4
@itimer_fini = common dso_local global i32 0, align 4
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@itimer_zone = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@CTL_P1003_1B_TIMERS = common dso_local global i32 0, align 4
@CTL_P1003_1B_DELAYTIMER_MAX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@CTL_P1003_1B_TIMER_MAX = common dso_local global i32 0, align 4
@TIMER_MAX = common dso_local global i64 0, align 8
@process_exit = common dso_local global i32 0, align 4
@itimers_event_hook_exit = common dso_local global i32 0, align 4
@ITIMER_EV_EXIT = common dso_local global i64 0, align 8
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@process_exec = common dso_local global i32 0, align 4
@itimers_event_hook_exec = common dso_local global i32 0, align 4
@ITIMER_EV_EXEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @itimer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itimer_start() #0 {
  %1 = alloca %struct.kclock, align 8
  %2 = getelementptr inbounds %struct.kclock, %struct.kclock* %1, i32 0, i32 0
  store i32* null, i32** %2, align 8
  %3 = getelementptr inbounds %struct.kclock, %struct.kclock* %1, i32 0, i32 1
  %4 = load i32, i32* @realtimer_gettime, align 4
  store i32 %4, i32* %3, align 8
  %5 = getelementptr inbounds %struct.kclock, %struct.kclock* %1, i32 0, i32 2
  %6 = load i32, i32* @realtimer_settime, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.kclock, %struct.kclock* %1, i32 0, i32 3
  %8 = load i32, i32* @realtimer_delete, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.kclock, %struct.kclock* %1, i32 0, i32 4
  %10 = load i32, i32* @realtimer_create, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @itimer_init, align 4
  %12 = load i32, i32* @itimer_fini, align 4
  %13 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %14 = call i32 @uma_zcreate(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32 %11, i32 %12, i32 %13, i32 0)
  store i32 %14, i32* @itimer_zone, align 4
  %15 = load i32, i32* @CLOCK_REALTIME, align 4
  %16 = call i32 @register_posix_clock(i32 %15, %struct.kclock* %1)
  %17 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %18 = call i32 @register_posix_clock(i32 %17, %struct.kclock* %1)
  %19 = load i32, i32* @CTL_P1003_1B_TIMERS, align 4
  %20 = call i32 @p31b_setcfg(i32 %19, i64 200112)
  %21 = load i32, i32* @CTL_P1003_1B_DELAYTIMER_MAX, align 4
  %22 = load i64, i64* @INT_MAX, align 8
  %23 = call i32 @p31b_setcfg(i32 %21, i64 %22)
  %24 = load i32, i32* @CTL_P1003_1B_TIMER_MAX, align 4
  %25 = load i64, i64* @TIMER_MAX, align 8
  %26 = call i32 @p31b_setcfg(i32 %24, i64 %25)
  %27 = load i32, i32* @process_exit, align 4
  %28 = load i32, i32* @itimers_event_hook_exit, align 4
  %29 = load i64, i64* @ITIMER_EV_EXIT, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %32 = call i32 @EVENTHANDLER_REGISTER(i32 %27, i32 %28, i8* %30, i32 %31)
  %33 = load i32, i32* @process_exec, align 4
  %34 = load i32, i32* @itimers_event_hook_exec, align 4
  %35 = load i64, i64* @ITIMER_EV_EXEC, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %38 = call i32 @EVENTHANDLER_REGISTER(i32 %33, i32 %34, i8* %36, i32 %37)
  ret void
}

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @register_posix_clock(i32, %struct.kclock*) #1

declare dso_local i32 @p31b_setcfg(i32, i64) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
