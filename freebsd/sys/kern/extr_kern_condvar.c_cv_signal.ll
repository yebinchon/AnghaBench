; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c_cv_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c_cv_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cv = type { i64 }

@CV_WAITERS_BOUND = common dso_local global i64 0, align 8
@SLEEPQ_CONDVAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cv_signal(%struct.cv* %0) #0 {
  %2 = alloca %struct.cv*, align 8
  %3 = alloca i32, align 4
  store %struct.cv* %0, %struct.cv** %2, align 8
  %4 = load %struct.cv*, %struct.cv** %2, align 8
  %5 = getelementptr inbounds %struct.cv, %struct.cv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  %10 = load %struct.cv*, %struct.cv** %2, align 8
  %11 = call i32 @sleepq_lock(%struct.cv* %10)
  %12 = load %struct.cv*, %struct.cv** %2, align 8
  %13 = getelementptr inbounds %struct.cv, %struct.cv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %9
  %17 = load %struct.cv*, %struct.cv** %2, align 8
  %18 = getelementptr inbounds %struct.cv, %struct.cv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CV_WAITERS_BOUND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.cv*, %struct.cv** %2, align 8
  %24 = call i32* @sleepq_lookup(%struct.cv* %23)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.cv*, %struct.cv** %2, align 8
  %28 = getelementptr inbounds %struct.cv, %struct.cv* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %44

29:                                               ; preds = %22, %16
  %30 = load %struct.cv*, %struct.cv** %2, align 8
  %31 = getelementptr inbounds %struct.cv, %struct.cv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CV_WAITERS_BOUND, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.cv*, %struct.cv** %2, align 8
  %37 = getelementptr inbounds %struct.cv, %struct.cv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.cv*, %struct.cv** %2, align 8
  %42 = load i32, i32* @SLEEPQ_CONDVAR, align 4
  %43 = call i32 @sleepq_signal(%struct.cv* %41, i32 %42, i32 0, i32 0)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %26
  br label %45

45:                                               ; preds = %44, %9
  %46 = load %struct.cv*, %struct.cv** %2, align 8
  %47 = call i32 @sleepq_release(%struct.cv* %46)
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (...) @kick_proc0()
  br label %52

52:                                               ; preds = %8, %50, %45
  ret void
}

declare dso_local i32 @sleepq_lock(%struct.cv*) #1

declare dso_local i32* @sleepq_lookup(%struct.cv*) #1

declare dso_local i32 @sleepq_signal(%struct.cv*, i32, i32, i32) #1

declare dso_local i32 @sleepq_release(%struct.cv*) #1

declare dso_local i32 @kick_proc0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
