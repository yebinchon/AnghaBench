; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_get_thread_cputime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_get_thread_cputime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.thread = type { i64 }
%struct.timespec = type { i32 }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.timespec*)* @get_thread_cputime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_thread_cputime(%struct.thread* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = icmp eq %struct.thread* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = call i32 (...) @critical_enter()
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @PCPU_GET(i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = call i64 (...) @cpu_ticks()
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = call i32 (...) @critical_exit()
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %5, align 8
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = call i32 @thread_lock(%struct.thread* %25)
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = call i32 @thread_unlock(%struct.thread* %30)
  br label %32

32:                                               ; preds = %24, %10
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.timespec*, %struct.timespec** %4, align 8
  %35 = call i32 @cputick2timespec(i64 %33, %struct.timespec* %34)
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @PCPU_GET(i64) #1

declare dso_local i64 @cpu_ticks(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @cputick2timespec(i64, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
