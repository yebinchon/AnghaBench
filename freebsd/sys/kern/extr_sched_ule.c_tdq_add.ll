; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdq = type { i64 }
%struct.thread = type { i64, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"sched_add: trying to run inhibited thread\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"sched_add: bad thread state\00", align 1
@TDF_INMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"sched_add: thread swapped out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tdq_add(%struct.tdq* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca %struct.tdq*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  store %struct.tdq* %0, %struct.tdq** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tdq*, %struct.tdq** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @TDQ_LOCK_ASSERT(%struct.tdq* %7, i32 %8)
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = call i64 @TD_CAN_RUN(%struct.thread* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = call i64 @TD_IS_RUNNING(%struct.thread* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i1 [ true, %3 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TDF_INMEM, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.thread*, %struct.thread** %5, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.tdq*, %struct.tdq** %4, align 8
  %37 = getelementptr inbounds %struct.tdq, %struct.tdq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load %struct.thread*, %struct.thread** %5, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tdq*, %struct.tdq** %4, align 8
  %45 = getelementptr inbounds %struct.tdq, %struct.tdq* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %23
  %47 = load %struct.tdq*, %struct.tdq** %4, align 8
  %48 = load %struct.thread*, %struct.thread** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @tdq_runq_add(%struct.tdq* %47, %struct.thread* %48, i32 %49)
  %51 = load %struct.tdq*, %struct.tdq** %4, align 8
  %52 = load %struct.thread*, %struct.thread** %5, align 8
  %53 = call i32 @tdq_load_add(%struct.tdq* %51, %struct.thread* %52)
  ret void
}

declare dso_local i32 @TDQ_LOCK_ASSERT(%struct.tdq*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @TD_CAN_RUN(%struct.thread*) #1

declare dso_local i64 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i32 @tdq_runq_add(%struct.tdq*, %struct.thread*, i32) #1

declare dso_local i32 @tdq_load_add(%struct.tdq*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
