; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_ktimer_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_ktimer_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ktimer_settime_args = type { i32*, i32, i32, i32 }
%struct.itimerspec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ktimer_settime(%struct.thread* %0, %struct.ktimer_settime_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ktimer_settime_args*, align 8
  %6 = alloca %struct.itimerspec, align 4
  %7 = alloca %struct.itimerspec, align 4
  %8 = alloca %struct.itimerspec*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ktimer_settime_args* %1, %struct.ktimer_settime_args** %5, align 8
  %10 = load %struct.ktimer_settime_args*, %struct.ktimer_settime_args** %5, align 8
  %11 = getelementptr inbounds %struct.ktimer_settime_args, %struct.ktimer_settime_args* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @copyin(i32 %12, %struct.itimerspec* %6, i32 4)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.ktimer_settime_args*, %struct.ktimer_settime_args** %5, align 8
  %20 = getelementptr inbounds %struct.ktimer_settime_args, %struct.ktimer_settime_args* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi %struct.itimerspec* [ %7, %23 ], [ null, %24 ]
  store %struct.itimerspec* %26, %struct.itimerspec** %8, align 8
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = load %struct.ktimer_settime_args*, %struct.ktimer_settime_args** %5, align 8
  %29 = getelementptr inbounds %struct.ktimer_settime_args, %struct.ktimer_settime_args* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ktimer_settime_args*, %struct.ktimer_settime_args** %5, align 8
  %32 = getelementptr inbounds %struct.ktimer_settime_args, %struct.ktimer_settime_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %35 = call i32 @kern_ktimer_settime(%struct.thread* %27, i32 %30, i32 %33, %struct.itimerspec* %6, %struct.itimerspec* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %25
  %39 = load %struct.ktimer_settime_args*, %struct.ktimer_settime_args** %5, align 8
  %40 = getelementptr inbounds %struct.ktimer_settime_args, %struct.ktimer_settime_args* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %45 = load %struct.ktimer_settime_args*, %struct.ktimer_settime_args** %5, align 8
  %46 = getelementptr inbounds %struct.ktimer_settime_args, %struct.ktimer_settime_args* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @copyout(%struct.itimerspec* %44, i32* %47, i32 4)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %43, %38, %25
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @copyin(i32, %struct.itimerspec*, i32) #1

declare dso_local i32 @kern_ktimer_settime(%struct.thread*, i32, i32, %struct.itimerspec*, %struct.itimerspec*) #1

declare dso_local i32 @copyout(%struct.itimerspec*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
