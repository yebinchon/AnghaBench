; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.timespec = type { i32, i64 }
%struct.timeval = type { i32 }

@PRIV_CLOCK_SETTIME = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@allow_insane_settime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_clock_settime(%struct.thread* %0, i64 %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = load i32, i32* @PRIV_CLOCK_SETTIME, align 4
  %12 = call i32 @priv_check(%struct.thread* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %61

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @CLOCK_REALTIME, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %61

22:                                               ; preds = %16
  %23 = load %struct.timespec*, %struct.timespec** %7, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.timespec*, %struct.timespec** %7, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 1000000000
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.timespec*, %struct.timespec** %7, align 8
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27, %22
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %32
  %40 = load i32, i32* @allow_insane_settime, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = load %struct.timespec*, %struct.timespec** %7, align 8
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %45, 252288000000
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.timespec*, %struct.timespec** %7, align 8
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 (...) @utc_offset()
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %42
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %47, %39
  %56 = load %struct.timespec*, %struct.timespec** %7, align 8
  %57 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %8, %struct.timespec* %56)
  %58 = load %struct.thread*, %struct.thread** %5, align 8
  %59 = call i32 @settime(%struct.thread* %58, %struct.timeval* %8)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %53, %37, %20, %14
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i64 @utc_offset(...) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @settime(%struct.thread*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
