; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_check_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_check_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@TDF_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sleepq_check_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sleepq_check_timeout() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %3, %struct.thread** %1, align 8
  %4 = load %struct.thread*, %struct.thread** %1, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %4, i32 %5)
  store i32 0, i32* %2, align 4
  %7 = load %struct.thread*, %struct.thread** %1, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %0
  %12 = load %struct.thread*, %struct.thread** %1, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 (...) @sbinuptime()
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.thread*, %struct.thread** %1, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %0
  %23 = load %struct.thread*, %struct.thread** %1, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TDF_TIMEOUT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* @TDF_TIMEOUT, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.thread*, %struct.thread** %1, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %40

36:                                               ; preds = %22
  %37 = load %struct.thread*, %struct.thread** %1, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 2
  %39 = call i32 @callout_stop(i32* %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i64 @sbinuptime(...) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
