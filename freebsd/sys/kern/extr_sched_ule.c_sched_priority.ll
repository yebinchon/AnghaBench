; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@PRI_TIMESHARE = common dso_local global i64 0, align 8
@sched_interact = common dso_local global i32 0, align 4
@PRI_MIN_INTERACT = common dso_local global i32 0, align 4
@PRI_MAX_INTERACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"sched_priority: invalid interactive priority %d score %d\00", align 1
@SCHED_PRI_MIN = common dso_local global i32 0, align 4
@SCHED_PRI_RANGE = common dso_local global i64 0, align 8
@PRI_MIN_BATCH = common dso_local global i32 0, align 4
@PRI_MAX_BATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"sched_priority: invalid priority %d: nice %d, ticks %d ftick %d ltick %d tick pri %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @sched_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_priority(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @PRI_BASE(i32 %7)
  %9 = load i64, i64* @PRI_TIMESHARE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %119

12:                                               ; preds = %1
  %13 = load %struct.thread*, %struct.thread** %2, align 8
  %14 = call i64 @sched_interact_score(%struct.thread* %13)
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %14, %19
  %21 = call i32 @imax(i32 0, i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @sched_interact, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %12
  %26 = load i32, i32* @PRI_MIN_INTERACT, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @PRI_MAX_INTERACT, align 4
  %28 = load i32, i32* @PRI_MIN_INTERACT, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @sched_interact, align 4
  %32 = sdiv i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PRI_MIN_INTERACT, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @PRI_MAX_INTERACT, align 4
  %43 = icmp sle i32 %41, %42
  br label %44

44:                                               ; preds = %40, %25
  %45 = phi i1 [ false, %25 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @KASSERT(i32 %46, i8* %50)
  br label %115

52:                                               ; preds = %12
  %53 = load i32, i32* @SCHED_PRI_MIN, align 4
  store i32 %53, i32* %4, align 4
  %54 = load %struct.thread*, %struct.thread** %2, align 8
  %55 = call %struct.TYPE_5__* @td_get_sched(%struct.thread* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.thread*, %struct.thread** %2, align 8
  %61 = call %struct.TYPE_5__* @td_get_sched(%struct.thread* %60)
  %62 = call i32 @SCHED_PRI_TICKS(%struct.TYPE_5__* %61)
  %63 = load i64, i64* @SCHED_PRI_RANGE, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i64 @min(i32 %62, i64 %64)
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %59, %52
  %71 = load %struct.thread*, %struct.thread** %2, align 8
  %72 = getelementptr inbounds %struct.thread, %struct.thread* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @SCHED_PRI_NICE(i64 %75)
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @PRI_MIN_BATCH, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @PRI_MAX_BATCH, align 4
  %87 = icmp sle i32 %85, %86
  br label %88

88:                                               ; preds = %84, %70
  %89 = phi i1 [ false, %70 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.thread*, %struct.thread** %2, align 8
  %93 = getelementptr inbounds %struct.thread, %struct.thread* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.thread*, %struct.thread** %2, align 8
  %98 = call %struct.TYPE_5__* @td_get_sched(%struct.thread* %97)
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.thread*, %struct.thread** %2, align 8
  %102 = call %struct.TYPE_5__* @td_get_sched(%struct.thread* %101)
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.thread*, %struct.thread** %2, align 8
  %106 = call %struct.TYPE_5__* @td_get_sched(%struct.thread* %105)
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.thread*, %struct.thread** %2, align 8
  %110 = call %struct.TYPE_5__* @td_get_sched(%struct.thread* %109)
  %111 = call i32 @SCHED_PRI_TICKS(%struct.TYPE_5__* %110)
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @KASSERT(i32 %90, i8* %113)
  br label %115

115:                                              ; preds = %88, %44
  %116 = load %struct.thread*, %struct.thread** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @sched_user_prio(%struct.thread* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %11
  ret void
}

declare dso_local i64 @PRI_BASE(i32) #1

declare dso_local i32 @imax(i32, i64) #1

declare dso_local i64 @sched_interact_score(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @td_get_sched(%struct.thread*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @SCHED_PRI_TICKS(%struct.TYPE_5__*) #1

declare dso_local i64 @SCHED_PRI_NICE(i64) #1

declare dso_local i32 @sched_user_prio(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
