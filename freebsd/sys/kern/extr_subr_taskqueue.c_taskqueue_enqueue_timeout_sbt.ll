; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_enqueue_timeout_sbt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_enqueue_timeout_sbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { i32, i32 }
%struct.timeout_task = type { i32, i32, %struct.TYPE_2__, %struct.taskqueue* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Migrated queue\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Timeout for spin-queue\00", align 1
@DT_DRAIN_IN_PROGRESS = common dso_local global i32 0, align 4
@DT_CALLOUT_ARMED = common dso_local global i32 0, align 4
@taskqueue_timeout_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taskqueue_enqueue_timeout_sbt(%struct.taskqueue* %0, %struct.timeout_task* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.taskqueue*, align 8
  %7 = alloca %struct.timeout_task*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.taskqueue* %0, %struct.taskqueue** %6, align 8
  store %struct.timeout_task* %1, %struct.timeout_task** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %13 = call i32 @TQ_LOCK(%struct.taskqueue* %12)
  %14 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %15 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %14, i32 0, i32 3
  %16 = load %struct.taskqueue*, %struct.taskqueue** %15, align 8
  %17 = icmp eq %struct.taskqueue* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %20 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %19, i32 0, i32 3
  %21 = load %struct.taskqueue*, %struct.taskqueue** %20, align 8
  %22 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %23 = icmp eq %struct.taskqueue* %21, %22
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i1 [ true, %5 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %29 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %36 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %37 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %36, i32 0, i32 3
  store %struct.taskqueue* %35, %struct.taskqueue** %37, align 8
  %38 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %39 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %43 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DT_DRAIN_IN_PROGRESS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %24
  %49 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %50 = call i32 @TQ_UNLOCK(%struct.taskqueue* %49)
  store i32 -1, i32* %11, align 4
  br label %101

51:                                               ; preds = %24
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %56 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %57 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %56, i32 0, i32 2
  %58 = call i32 @taskqueue_enqueue_locked(%struct.taskqueue* %55, %struct.TYPE_2__* %57)
  br label %100

59:                                               ; preds = %51
  %60 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %61 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DT_CALLOUT_ARMED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %85

69:                                               ; preds = %59
  %70 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %71 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @DT_CALLOUT_ARMED, align 4
  %75 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %76 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %81, %69
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %90 = getelementptr inbounds %struct.timeout_task, %struct.timeout_task* %89, i32 0, i32 1
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @taskqueue_timeout_func, align 4
  %94 = load %struct.timeout_task*, %struct.timeout_task** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @callout_reset_sbt(i32* %90, i32 %91, i32 %92, i32 %93, %struct.timeout_task* %94, i32 %95)
  br label %97

97:                                               ; preds = %88, %85
  %98 = load %struct.taskqueue*, %struct.taskqueue** %6, align 8
  %99 = call i32 @TQ_UNLOCK(%struct.taskqueue* %98)
  br label %100

100:                                              ; preds = %97, %54
  br label %101

101:                                              ; preds = %100, %48
  %102 = load i32, i32* %11, align 4
  ret i32 %102
}

declare dso_local i32 @TQ_LOCK(%struct.taskqueue*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TQ_UNLOCK(%struct.taskqueue*) #1

declare dso_local i32 @taskqueue_enqueue_locked(%struct.taskqueue*, %struct.TYPE_2__*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.timeout_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
