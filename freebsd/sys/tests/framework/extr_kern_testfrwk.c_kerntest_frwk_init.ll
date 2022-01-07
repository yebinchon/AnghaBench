; ModuleID = '/home/carl/AnghaBench/freebsd/sys/tests/framework/extr_kern_testfrwk.c_kerntest_frwk_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/tests/framework/extr_kern_testfrwk.c_kerntest_frwk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32, i32, i32 }

@mp_ncpus = common dso_local global i64 0, align 8
@MAXCPU = common dso_local global i64 0, align 8
@kfrwk = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@kfrwk_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sbtls_task\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Can't start taskqueue for Kernel Test Framework\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Taskqueue init fails for kfrwk\00", align 1
@PI_NET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"[kt_frwk task]\00", align 1
@ktest_frwk_inited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kerntest_frwk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kerntest_frwk_init() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @mp_ncpus, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i64, i64* @mp_ncpus, align 8
  br label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @MAXCPU, align 8
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %5, %4 ], [ %7, %6 ]
  store i64 %9, i64* %1, align 8
  %10 = call i32 (...) @KTFRWK_MUTEX_INIT()
  %11 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kfrwk, i32 0, i32 4))
  %12 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kfrwk, i32 0, i32 3))
  %13 = load i32, i32* @kfrwk_task, align 4
  %14 = call i32 @TASK_INIT(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kfrwk, i32 0, i32 2), i32 0, i32 %13, %struct.TYPE_3__* @kfrwk)
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %17 = call i32* @taskqueue_create_fast(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kfrwk, i32 0, i32 1))
  store i32* %17, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kfrwk, i32 0, i32 1), align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kfrwk, i32 0, i32 1), align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %8
  %24 = load i64, i64* %1, align 8
  %25 = load i32, i32* @PI_NET, align 4
  %26 = call i32 @taskqueue_start_threads(i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kfrwk, i32 0, i32 1), i64 %24, i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i64, i64* %1, align 8
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kfrwk, i32 0, i32 0), align 8
  store i32 1, i32* @ktest_frwk_inited, align 4
  ret i32 0
}

declare dso_local i32 @KTFRWK_MUTEX_INIT(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32* @taskqueue_create_fast(i8*, i32, i32, i32**) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
