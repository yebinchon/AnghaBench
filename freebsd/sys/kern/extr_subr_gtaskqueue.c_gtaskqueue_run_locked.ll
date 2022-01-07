; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_run_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_run_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtaskqueue = type { i64, i32, i32 }
%struct.gtaskqueue_busy = type { i64, %struct.gtask* }
%struct.gtask = type { i32, i32 (i32)*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"tq is NULL\00", align 1
@tb_link = common dso_local global i32 0, align 4
@ta_link = common dso_local global i32 0, align 4
@TASK_ENQUEUED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"task->ta_func is NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gtaskqueue*)* @gtaskqueue_run_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtaskqueue_run_locked(%struct.gtaskqueue* %0) #0 {
  %2 = alloca %struct.gtaskqueue*, align 8
  %3 = alloca %struct.gtaskqueue_busy, align 8
  %4 = alloca %struct.gtask*, align 8
  store %struct.gtaskqueue* %0, %struct.gtaskqueue** %2, align 8
  %5 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %6 = icmp ne %struct.gtaskqueue* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %10 = call i32 @TQ_ASSERT_LOCKED(%struct.gtaskqueue* %9)
  %11 = getelementptr inbounds %struct.gtaskqueue_busy, %struct.gtaskqueue_busy* %3, i32 0, i32 1
  store %struct.gtask* null, %struct.gtask** %11, align 8
  %12 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %13 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %12, i32 0, i32 2
  %14 = load i32, i32* @tb_link, align 4
  %15 = call i32 @LIST_INSERT_HEAD(i32* %13, %struct.gtaskqueue_busy* %3, i32 %14)
  br label %16

16:                                               ; preds = %21, %1
  %17 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %18 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %17, i32 0, i32 1
  %19 = call %struct.gtask* @STAILQ_FIRST(i32* %18)
  store %struct.gtask* %19, %struct.gtask** %4, align 8
  %20 = icmp ne %struct.gtask* %19, null
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %23 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %22, i32 0, i32 1
  %24 = load i32, i32* @ta_link, align 4
  %25 = call i32 @STAILQ_REMOVE_HEAD(i32* %23, i32 %24)
  %26 = load i32, i32* @TASK_ENQUEUED, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.gtask*, %struct.gtask** %4, align 8
  %29 = getelementptr inbounds %struct.gtask, %struct.gtask* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.gtask*, %struct.gtask** %4, align 8
  %33 = getelementptr inbounds %struct.gtaskqueue_busy, %struct.gtaskqueue_busy* %3, i32 0, i32 1
  store %struct.gtask* %32, %struct.gtask** %33, align 8
  %34 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %35 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds %struct.gtaskqueue_busy, %struct.gtaskqueue_busy* %3, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %40 = call i32 @TQ_UNLOCK(%struct.gtaskqueue* %39)
  %41 = load %struct.gtask*, %struct.gtask** %4, align 8
  %42 = getelementptr inbounds %struct.gtask, %struct.gtask* %41, i32 0, i32 1
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = icmp ne i32 (i32)* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @KASSERT(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.gtask*, %struct.gtask** %4, align 8
  %48 = getelementptr inbounds %struct.gtask, %struct.gtask* %47, i32 0, i32 1
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = load %struct.gtask*, %struct.gtask** %4, align 8
  %51 = getelementptr inbounds %struct.gtask, %struct.gtask* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %49(i32 %52)
  %54 = load %struct.gtaskqueue*, %struct.gtaskqueue** %2, align 8
  %55 = call i32 @TQ_LOCK(%struct.gtaskqueue* %54)
  %56 = load %struct.gtask*, %struct.gtask** %4, align 8
  %57 = call i32 @wakeup(%struct.gtask* %56)
  br label %16

58:                                               ; preds = %16
  %59 = load i32, i32* @tb_link, align 4
  %60 = call i32 @LIST_REMOVE(%struct.gtaskqueue_busy* %3, i32 %59)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TQ_ASSERT_LOCKED(%struct.gtaskqueue*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.gtaskqueue_busy*, i32) #1

declare dso_local %struct.gtask* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @TQ_UNLOCK(%struct.gtaskqueue*) #1

declare dso_local i32 @TQ_LOCK(%struct.gtaskqueue*) #1

declare dso_local i32 @wakeup(%struct.gtask*) #1

declare dso_local i32 @LIST_REMOVE(%struct.gtaskqueue_busy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
