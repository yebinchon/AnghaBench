; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_runq_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_runq_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdq = type { i32, i32, i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.td_sched = type { i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TSF_XFERABLE = common dso_local global i32 0, align 4
@PRI_MIN_BATCH = common dso_local global i32 0, align 4
@PRI_MAX_BATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid priority %d on timeshare runq\00", align 1
@SRQ_BORROWING = common dso_local global i32 0, align 4
@SRQ_PREEMPTED = common dso_local global i32 0, align 4
@RQ_NQS = common dso_local global i32 0, align 4
@PRI_BATCH_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tdq*, %struct.thread*, i32)* @tdq_runq_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tdq_runq_add(%struct.tdq* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca %struct.tdq*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.td_sched*, align 8
  %8 = alloca i32, align 4
  store %struct.tdq* %0, %struct.tdq** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tdq*, %struct.tdq** %4, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @TDQ_LOCK_ASSERT(%struct.tdq* %9, i32 %10)
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %12, i32 %13)
  %15 = load %struct.thread*, %struct.thread** %5, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = call %struct.td_sched* @td_get_sched(%struct.thread* %18)
  store %struct.td_sched* %19, %struct.td_sched** %7, align 8
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = call i32 @TD_SET_RUNQ(%struct.thread* %20)
  %22 = load %struct.thread*, %struct.thread** %5, align 8
  %23 = call i64 @THREAD_CAN_MIGRATE(%struct.thread* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.tdq*, %struct.tdq** %4, align 8
  %27 = getelementptr inbounds %struct.tdq, %struct.tdq* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @TSF_XFERABLE, align 4
  %31 = load %struct.td_sched*, %struct.td_sched** %7, align 8
  %32 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %25, %3
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PRI_MIN_BATCH, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.tdq*, %struct.tdq** %4, align 8
  %41 = getelementptr inbounds %struct.tdq, %struct.tdq* %40, i32 0, i32 4
  %42 = load %struct.td_sched*, %struct.td_sched** %7, align 8
  %43 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  br label %127

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PRI_MAX_BATCH, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %121

48:                                               ; preds = %44
  %49 = load %struct.tdq*, %struct.tdq** %4, align 8
  %50 = getelementptr inbounds %struct.tdq, %struct.tdq* %49, i32 0, i32 3
  %51 = load %struct.td_sched*, %struct.td_sched** %7, align 8
  %52 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PRI_MAX_BATCH, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PRI_MIN_BATCH, align 4
  %59 = icmp sge i32 %57, %58
  br label %60

60:                                               ; preds = %56, %48
  %61 = phi i1 [ false, %48 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @KASSERT(i32 %62, i8* %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SRQ_BORROWING, align 4
  %69 = load i32, i32* @SRQ_PREEMPTED, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %60
  %74 = load i32, i32* @RQ_NQS, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @PRI_MIN_BATCH, align 4
  %77 = sub nsw i32 %75, %76
  %78 = mul nsw i32 %74, %77
  %79 = load i32, i32* @PRI_BATCH_RANGE, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.tdq*, %struct.tdq** %4, align 8
  %83 = getelementptr inbounds %struct.tdq, %struct.tdq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* @RQ_NQS, align 4
  %87 = srem i32 %85, %86
  store i32 %87, i32* %8, align 4
  %88 = load %struct.tdq*, %struct.tdq** %4, align 8
  %89 = getelementptr inbounds %struct.tdq, %struct.tdq* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.tdq*, %struct.tdq** %4, align 8
  %92 = getelementptr inbounds %struct.tdq, %struct.tdq* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %73
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.tdq*, %struct.tdq** %4, align 8
  %98 = getelementptr inbounds %struct.tdq, %struct.tdq* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, 1
  %104 = trunc i32 %103 to i8
  %105 = zext i8 %104 to i32
  %106 = load i32, i32* @RQ_NQS, align 4
  %107 = srem i32 %105, %106
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %101, %95, %73
  br label %113

109:                                              ; preds = %60
  %110 = load %struct.tdq*, %struct.tdq** %4, align 8
  %111 = getelementptr inbounds %struct.tdq, %struct.tdq* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %109, %108
  %114 = load %struct.td_sched*, %struct.td_sched** %7, align 8
  %115 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.thread*, %struct.thread** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @runq_add_pri(i32* %116, %struct.thread* %117, i32 %118, i32 %119)
  br label %134

121:                                              ; preds = %44
  %122 = load %struct.tdq*, %struct.tdq** %4, align 8
  %123 = getelementptr inbounds %struct.tdq, %struct.tdq* %122, i32 0, i32 2
  %124 = load %struct.td_sched*, %struct.td_sched** %7, align 8
  %125 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %124, i32 0, i32 0
  store i32* %123, i32** %125, align 8
  br label %126

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %39
  %128 = load %struct.td_sched*, %struct.td_sched** %7, align 8
  %129 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.thread*, %struct.thread** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @runq_add(i32* %130, %struct.thread* %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %113
  ret void
}

declare dso_local i32 @TDQ_LOCK_ASSERT(%struct.tdq*, i32) #1

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @TD_SET_RUNQ(%struct.thread*) #1

declare dso_local i64 @THREAD_CAN_MIGRATE(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @runq_add_pri(i32*, %struct.thread*, i32, i32) #1

declare dso_local i32 @runq_add(i32*, %struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
