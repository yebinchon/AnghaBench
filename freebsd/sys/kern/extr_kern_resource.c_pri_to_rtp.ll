; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_pri_to_rtp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_pri_to_rtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i64 }
%struct.rtprio = type { i32, i64 }

@PRI_MIN_REALTIME = common dso_local global i64 0, align 8
@PRI_MIN_TIMESHARE = common dso_local global i64 0, align 8
@PRI_MIN_IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pri_to_rtp(%struct.thread* %0, %struct.rtprio* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.rtprio*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.rtprio* %1, %struct.rtprio** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = call i32 @thread_lock(%struct.thread* %5)
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @PRI_BASE(i32 %9)
  switch i32 %10, label %35 [
    i32 129, label %11
    i32 128, label %19
    i32 130, label %27
  ]

11:                                               ; preds = %2
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PRI_MIN_REALTIME, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %18 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PRI_MIN_TIMESHARE, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %26 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PRI_MIN_IDLE, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %34 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %27, %19, %11
  %37 = load %struct.thread*, %struct.thread** %3, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rtprio*, %struct.rtprio** %4, align 8
  %41 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.thread*, %struct.thread** %3, align 8
  %43 = call i32 @thread_unlock(%struct.thread* %42)
  ret void
}

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @PRI_BASE(i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
