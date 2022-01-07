; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_getres.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_getres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.timespec = type { i32, i32 }

@hz = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_clock_getres(%struct.thread* %0, i32 %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %8 = load %struct.timespec*, %struct.timespec** %7, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %41 [
    i32 136, label %11
    i32 135, label %11
    i32 134, label %11
    i32 141, label %11
    i32 140, label %11
    i32 139, label %11
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 128, label %17
    i32 137, label %17
    i32 133, label %22
    i32 132, label %27
    i32 138, label %27
  ]

11:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %12 = call i32 (...) @tc_getfrequency()
  %13 = sdiv i32 1000000000, %12
  %14 = add nsw i32 %13, 1
  %15 = load %struct.timespec*, %struct.timespec** %7, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %47

17:                                               ; preds = %3, %3
  %18 = load i32, i32* @hz, align 4
  %19 = call i32 @howmany(i32 1000000000, i32 %18)
  %20 = load %struct.timespec*, %struct.timespec** %7, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.timespec*, %struct.timespec** %7, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.timespec*, %struct.timespec** %7, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %47

27:                                               ; preds = %3, %3
  br label %28

28:                                               ; preds = %44, %27
  %29 = call i32 (...) @cpu_tickrate()
  %30 = sdiv i32 1000000, %29
  %31 = load %struct.timespec*, %struct.timespec** %7, align 8
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.timespec*, %struct.timespec** %7, align 8
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.timespec*, %struct.timespec** %7, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %38, i32 0, i32 1
  store i32 1000, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %28
  br label %47

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %28

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %40, %22, %17, %11
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @tc_getfrequency(...) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @cpu_tickrate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
