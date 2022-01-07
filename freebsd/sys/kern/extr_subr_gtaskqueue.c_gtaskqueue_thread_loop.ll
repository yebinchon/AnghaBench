; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_thread_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_thread_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtaskqueue = type { i32, i32, i32 }

@TASKQUEUE_CALLBACK_TYPE_INIT = common dso_local global i32 0, align 4
@TQ_FLAGS_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@TASKQUEUE_CALLBACK_TYPE_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gtaskqueue_thread_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtaskqueue_thread_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gtaskqueue**, align 8
  %4 = alloca %struct.gtaskqueue*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.gtaskqueue**
  store %struct.gtaskqueue** %6, %struct.gtaskqueue*** %3, align 8
  %7 = load %struct.gtaskqueue**, %struct.gtaskqueue*** %3, align 8
  %8 = load %struct.gtaskqueue*, %struct.gtaskqueue** %7, align 8
  store %struct.gtaskqueue* %8, %struct.gtaskqueue** %4, align 8
  %9 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %10 = load i32, i32* @TASKQUEUE_CALLBACK_TYPE_INIT, align 4
  %11 = call i32 @gtaskqueue_run_callback(%struct.gtaskqueue* %9, i32 %10)
  %12 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %13 = call i32 @TQ_LOCK(%struct.gtaskqueue* %12)
  br label %14

14:                                               ; preds = %31, %1
  %15 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %16 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TQ_FLAGS_ACTIVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %23 = call i32 @gtaskqueue_run_locked(%struct.gtaskqueue* %22)
  %24 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %25 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TQ_FLAGS_ACTIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %33 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %34 = call i32 @TQ_SLEEP(%struct.gtaskqueue* %32, %struct.gtaskqueue* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %14

35:                                               ; preds = %30, %14
  %36 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %37 = call i32 @gtaskqueue_run_locked(%struct.gtaskqueue* %36)
  %38 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %39 = call i32 @TQ_UNLOCK(%struct.gtaskqueue* %38)
  %40 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %41 = load i32, i32* @TASKQUEUE_CALLBACK_TYPE_SHUTDOWN, align 4
  %42 = call i32 @gtaskqueue_run_callback(%struct.gtaskqueue* %40, i32 %41)
  %43 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %44 = call i32 @TQ_LOCK(%struct.gtaskqueue* %43)
  %45 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %46 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %50 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wakeup_one(i32 %51)
  %53 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %54 = call i32 @TQ_UNLOCK(%struct.gtaskqueue* %53)
  %55 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @gtaskqueue_run_callback(%struct.gtaskqueue*, i32) #1

declare dso_local i32 @TQ_LOCK(%struct.gtaskqueue*) #1

declare dso_local i32 @gtaskqueue_run_locked(%struct.gtaskqueue*) #1

declare dso_local i32 @TQ_SLEEP(%struct.gtaskqueue*, %struct.gtaskqueue*, i8*) #1

declare dso_local i32 @TQ_UNLOCK(%struct.gtaskqueue*) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
