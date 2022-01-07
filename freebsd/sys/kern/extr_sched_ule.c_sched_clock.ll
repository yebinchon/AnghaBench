; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdq = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.thread = type { i32, i32 }
%struct.td_sched = type { i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@RQ_NQS = common dso_local global i32 0, align 4
@PRI_FIFO_BIT = common dso_local global i32 0, align 4
@PRI_TIMESHARE = common dso_local global i64 0, align 8
@tickincr = common dso_local global i64 0, align 8
@TDF_NEEDRESCHED = common dso_local global i32 0, align 4
@TDF_SLICEEND = common dso_local global i32 0, align 4
@balance_tdq = common dso_local global %struct.tdq* null, align 8
@balance_ticks = common dso_local global i64 0, align 8
@rebalance = common dso_local global i64 0, align 8
@smp_started = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_clock(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.tdq*, align 8
  %4 = alloca %struct.td_sched*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %5, i32 %6)
  %8 = call %struct.tdq* (...) @TDQ_SELF()
  store %struct.tdq* %8, %struct.tdq** %3, align 8
  %9 = load %struct.tdq*, %struct.tdq** %3, align 8
  %10 = getelementptr inbounds %struct.tdq, %struct.tdq* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tdq*, %struct.tdq** %3, align 8
  %13 = getelementptr inbounds %struct.tdq, %struct.tdq* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.tdq*, %struct.tdq** %3, align 8
  %15 = getelementptr inbounds %struct.tdq, %struct.tdq* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tdq*, %struct.tdq** %3, align 8
  %18 = getelementptr inbounds %struct.tdq, %struct.tdq* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tdq*, %struct.tdq** %3, align 8
  %20 = getelementptr inbounds %struct.tdq, %struct.tdq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tdq*, %struct.tdq** %3, align 8
  %23 = getelementptr inbounds %struct.tdq, %struct.tdq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %1
  %27 = load %struct.tdq*, %struct.tdq** %3, align 8
  %28 = getelementptr inbounds %struct.tdq, %struct.tdq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @RQ_NQS, align 4
  %32 = srem i32 %30, %31
  %33 = load %struct.tdq*, %struct.tdq** %3, align 8
  %34 = getelementptr inbounds %struct.tdq, %struct.tdq* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tdq*, %struct.tdq** %3, align 8
  %36 = getelementptr inbounds %struct.tdq, %struct.tdq* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.tdq*, %struct.tdq** %3, align 8
  %40 = getelementptr inbounds %struct.tdq, %struct.tdq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = call i64 @TAILQ_EMPTY(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %26
  %47 = load %struct.tdq*, %struct.tdq** %3, align 8
  %48 = getelementptr inbounds %struct.tdq, %struct.tdq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.tdq*, %struct.tdq** %3, align 8
  %51 = getelementptr inbounds %struct.tdq, %struct.tdq* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %26
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.thread*, %struct.thread** %2, align 8
  %55 = call %struct.td_sched* @td_get_sched(%struct.thread* %54)
  store %struct.td_sched* %55, %struct.td_sched** %4, align 8
  %56 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %57 = call i32 @sched_pctcpu_update(%struct.td_sched* %56, i32 1)
  %58 = load %struct.thread*, %struct.thread** %2, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PRI_FIFO_BIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %107

65:                                               ; preds = %53
  %66 = load %struct.thread*, %struct.thread** %2, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @PRI_BASE(i32 %68)
  %70 = load i64, i64* @PRI_TIMESHARE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load i64, i64* @tickincr, align 8
  %74 = load %struct.thread*, %struct.thread** %2, align 8
  %75 = call %struct.td_sched* @td_get_sched(%struct.thread* %74)
  %76 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %73
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  %81 = load %struct.thread*, %struct.thread** %2, align 8
  %82 = call i32 @sched_interact_update(%struct.thread* %81)
  %83 = load %struct.thread*, %struct.thread** %2, align 8
  %84 = call i32 @sched_priority(%struct.thread* %83)
  br label %85

85:                                               ; preds = %72, %65
  %86 = load %struct.thread*, %struct.thread** %2, align 8
  %87 = call i32 @TD_IS_IDLETHREAD(%struct.thread* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %85
  %90 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %91 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.tdq*, %struct.tdq** %3, align 8
  %95 = call i64 @tdq_slice(%struct.tdq* %94)
  %96 = icmp sge i64 %93, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %89
  %98 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %99 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* @TDF_NEEDRESCHED, align 4
  %101 = load i32, i32* @TDF_SLICEEND, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.thread*, %struct.thread** %2, align 8
  %104 = getelementptr inbounds %struct.thread, %struct.thread* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %64, %97, %89, %85
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local %struct.tdq* @TDQ_SELF(...) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @sched_pctcpu_update(%struct.td_sched*, i32) #1

declare dso_local i64 @PRI_BASE(i32) #1

declare dso_local i32 @sched_interact_update(%struct.thread*) #1

declare dso_local i32 @sched_priority(%struct.thread*) #1

declare dso_local i32 @TD_IS_IDLETHREAD(%struct.thread*) #1

declare dso_local i64 @tdq_slice(%struct.tdq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
