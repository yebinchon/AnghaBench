; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_user_clock_nanosleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_user_clock_nanosleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.timespec = type { i32 }

@TIMER_ABSTIME = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32, %struct.timespec*, %struct.timespec*)* @user_clock_nanosleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_clock_nanosleep(%struct.thread* %0, i32 %1, i32 %2, %struct.timespec* %3, %struct.timespec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca %struct.timespec*, align 8
  %12 = alloca %struct.timespec, align 4
  %13 = alloca %struct.timespec, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.timespec* %3, %struct.timespec** %10, align 8
  store %struct.timespec* %4, %struct.timespec** %11, align 8
  %16 = load %struct.timespec*, %struct.timespec** %10, align 8
  %17 = call i32 @copyin(%struct.timespec* %16, %struct.timespec* %13, i32 4)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %6, align 4
  br label %63

22:                                               ; preds = %5
  %23 = load %struct.timespec*, %struct.timespec** %11, align 8
  %24 = icmp ne %struct.timespec* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @TIMER_ABSTIME, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.timespec*, %struct.timespec** %11, align 8
  %32 = load i32, i32* @VM_PROT_WRITE, align 4
  %33 = call i32 @useracc(%struct.timespec* %31, i32 4, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EFAULT, align 4
  store i32 %36, i32* %6, align 4
  br label %63

37:                                               ; preds = %30, %25, %22
  %38 = load %struct.thread*, %struct.thread** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @kern_clock_nanosleep(%struct.thread* %38, i32 %39, i32 %40, %struct.timespec* %13, %struct.timespec* %12)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @EINTR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load %struct.timespec*, %struct.timespec** %11, align 8
  %47 = icmp ne %struct.timespec* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @TIMER_ABSTIME, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.timespec*, %struct.timespec** %11, align 8
  %55 = call i32 @copyout(%struct.timespec* %12, %struct.timespec* %54, i32 4)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %58, %53
  br label %61

61:                                               ; preds = %60, %48, %45, %37
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %35, %20
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @copyin(%struct.timespec*, %struct.timespec*, i32) #1

declare dso_local i32 @useracc(%struct.timespec*, i32, i32) #1

declare dso_local i32 @kern_clock_nanosleep(%struct.thread*, i32, i32, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @copyout(%struct.timespec*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
