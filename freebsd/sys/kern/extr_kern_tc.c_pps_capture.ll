; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_capture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehands = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.pps_state = type { i64, i32, i32, %struct.timehands* }

@.str = private unnamed_addr constant [32 x i8] c"NULL pps pointer in pps_capture\00", align 1
@timehands = common dso_local global %struct.timehands* null, align 8
@fftimehands = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pps_capture(%struct.pps_state* %0) #0 {
  %2 = alloca %struct.pps_state*, align 8
  %3 = alloca %struct.timehands*, align 8
  store %struct.pps_state* %0, %struct.pps_state** %2, align 8
  %4 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %5 = icmp ne %struct.pps_state* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.timehands*, %struct.timehands** @timehands, align 8
  store %struct.timehands* %8, %struct.timehands** %3, align 8
  %9 = load %struct.timehands*, %struct.timehands** %3, align 8
  %10 = getelementptr inbounds %struct.timehands, %struct.timehands* %9, i32 0, i32 0
  %11 = call i64 @atomic_load_acq_int(i64* %10)
  %12 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %13 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.timehands*, %struct.timehands** %3, align 8
  %15 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %16 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %15, i32 0, i32 3
  store %struct.timehands* %14, %struct.timehands** %16, align 8
  %17 = load %struct.timehands*, %struct.timehands** %3, align 8
  %18 = getelementptr inbounds %struct.timehands, %struct.timehands* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %20, align 8
  %22 = load %struct.timehands*, %struct.timehands** %3, align 8
  %23 = getelementptr inbounds %struct.timehands, %struct.timehands* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 %21(%struct.TYPE_2__* %24)
  %26 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %27 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = call i32 (...) @atomic_thread_fence_acq()
  %29 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %30 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.timehands*, %struct.timehands** %3, align 8
  %33 = getelementptr inbounds %struct.timehands, %struct.timehands* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.pps_state*, %struct.pps_state** %2, align 8
  %38 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_load_acq_int(i64*) #1

declare dso_local i32 @atomic_thread_fence_acq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
