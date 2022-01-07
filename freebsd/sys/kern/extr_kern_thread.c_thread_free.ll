; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32, i32* }

@thread_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_free(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %3 = load %struct.thread*, %struct.thread** %2, align 8
  %4 = call i32 @lock_profile_thread_exit(%struct.thread* %3)
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.thread*, %struct.thread** %2, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @cpuset_rel(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.thread*, %struct.thread** %2, align 8
  %18 = call i32 @cpu_thread_free(%struct.thread* %17)
  %19 = load %struct.thread*, %struct.thread** %2, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.thread*, %struct.thread** %2, align 8
  %25 = call i32 @vm_thread_dispose(%struct.thread* %24)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.thread*, %struct.thread** %2, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 1
  %29 = call i32 @callout_drain(i32* %28)
  %30 = load i32, i32* @thread_zone, align 4
  %31 = load %struct.thread*, %struct.thread** %2, align 8
  %32 = call i32 @uma_zfree(i32 %30, %struct.thread* %31)
  ret void
}

declare dso_local i32 @lock_profile_thread_exit(%struct.thread*) #1

declare dso_local i32 @cpuset_rel(i32*) #1

declare dso_local i32 @cpu_thread_free(%struct.thread*) #1

declare dso_local i32 @vm_thread_dispose(%struct.thread*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
