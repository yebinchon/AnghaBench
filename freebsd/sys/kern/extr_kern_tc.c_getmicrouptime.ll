; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_getmicrouptime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_getmicrouptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehands = type { i64, i32 }
%struct.timeval = type { i32 }

@timehands = common dso_local global %struct.timehands* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getmicrouptime(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca %struct.timehands*, align 8
  %4 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load %struct.timehands*, %struct.timehands** @timehands, align 8
  store %struct.timehands* %6, %struct.timehands** %3, align 8
  %7 = load %struct.timehands*, %struct.timehands** %3, align 8
  %8 = getelementptr inbounds %struct.timehands, %struct.timehands* %7, i32 0, i32 0
  %9 = call i64 @atomic_load_acq_int(i64* %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.timehands*, %struct.timehands** %3, align 8
  %11 = getelementptr inbounds %struct.timehands, %struct.timehands* %10, i32 0, i32 1
  %12 = load %struct.timeval*, %struct.timeval** %2, align 8
  %13 = call i32 @bintime2timeval(i32* %11, %struct.timeval* %12)
  %14 = call i32 (...) @atomic_thread_fence_acq()
  br label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.timehands*, %struct.timehands** %3, align 8
  %21 = getelementptr inbounds %struct.timehands, %struct.timehands* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i1 [ true, %15 ], [ %23, %18 ]
  br i1 %25, label %5, label %26

26:                                               ; preds = %24
  ret void
}

declare dso_local i64 @atomic_load_acq_int(i64*) #1

declare dso_local i32 @bintime2timeval(i32*, %struct.timeval*) #1

declare dso_local i32 @atomic_thread_fence_acq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
