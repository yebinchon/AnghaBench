; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_ald_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_ald_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alq = type { i32 }

@ald_proc = common dso_local global i32 0, align 4
@ald_thread = common dso_local global i32 0, align 4
@shutdown_pre_sync = common dso_local global i32 0, align 4
@ald_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_FIRST = common dso_local global i32 0, align 4
@alq_eventhandler_tag = common dso_local global i32 0, align 4
@ald_active = common dso_local global i32 0, align 4
@ald_shutingdown = common dso_local global i64 0, align 8
@ald_mtx = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"aldslp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ald_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ald_daemon() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.alq*, align 8
  %3 = load i32, i32* @ald_proc, align 4
  %4 = call i32 @FIRST_THREAD_IN_PROC(i32 %3)
  store i32 %4, i32* @ald_thread, align 4
  %5 = load i32, i32* @shutdown_pre_sync, align 4
  %6 = load i32, i32* @ald_shutdown, align 4
  %7 = load i32, i32* @SHUTDOWN_PRI_FIRST, align 4
  %8 = call i32 @EVENTHANDLER_REGISTER(i32 %5, i32 %6, i32* null, i32 %7)
  store i32 %8, i32* @alq_eventhandler_tag, align 4
  %9 = call i32 (...) @ALD_LOCK()
  br label %10

10:                                               ; preds = %46, %0
  br label %11

11:                                               ; preds = %20, %10
  %12 = call %struct.alq* @LIST_FIRST(i32* @ald_active)
  store %struct.alq* %12, %struct.alq** %2, align 8
  %13 = icmp eq %struct.alq* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* @ald_shutingdown, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32, i32* @PWAIT, align 4
  %22 = call i32 @mtx_sleep(i32* @ald_active, i32* @ald_mtx, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %11

23:                                               ; preds = %18
  %24 = load i64, i64* @ald_shutingdown, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.alq*, %struct.alq** %2, align 8
  %28 = icmp eq %struct.alq* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @ALD_UNLOCK()
  br label %48

31:                                               ; preds = %26, %23
  %32 = load %struct.alq*, %struct.alq** %2, align 8
  %33 = call i32 @ALQ_LOCK(%struct.alq* %32)
  %34 = load %struct.alq*, %struct.alq** %2, align 8
  %35 = call i32 @ald_deactivate(%struct.alq* %34)
  %36 = call i32 (...) @ALD_UNLOCK()
  %37 = load %struct.alq*, %struct.alq** %2, align 8
  %38 = call i32 @alq_doio(%struct.alq* %37)
  store i32 %38, i32* %1, align 4
  %39 = load %struct.alq*, %struct.alq** %2, align 8
  %40 = call i32 @ALQ_UNLOCK(%struct.alq* %39)
  %41 = load i32, i32* %1, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load %struct.alq*, %struct.alq** %2, align 8
  %45 = call i32 @wakeup_one(%struct.alq* %44)
  br label %46

46:                                               ; preds = %43, %31
  %47 = call i32 (...) @ALD_LOCK()
  br label %10

48:                                               ; preds = %29
  %49 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @FIRST_THREAD_IN_PROC(i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @ALD_LOCK(...) #1

declare dso_local %struct.alq* @LIST_FIRST(i32*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @ALD_UNLOCK(...) #1

declare dso_local i32 @ALQ_LOCK(%struct.alq*) #1

declare dso_local i32 @ald_deactivate(%struct.alq*) #1

declare dso_local i32 @alq_doio(%struct.alq*) #1

declare dso_local i32 @ALQ_UNLOCK(%struct.alq*) #1

declare dso_local i32 @wakeup_one(%struct.alq*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
