; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_rm_trackers_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_rm_trackers_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.rm_queue }
%struct.rm_queue = type { %struct.rm_queue* }
%struct.rmlock = type { i32 }
%struct.thread = type { i32 }
%struct.rm_priotracker = type { %struct.thread*, %struct.rmlock* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcpu*, %struct.rmlock*, %struct.thread*)* @rm_trackers_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_trackers_present(%struct.pcpu* %0, %struct.rmlock* %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.pcpu*, align 8
  %5 = alloca %struct.rmlock*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.rm_queue*, align 8
  %8 = alloca %struct.rm_priotracker*, align 8
  %9 = alloca i32, align 4
  store %struct.pcpu* %0, %struct.pcpu** %4, align 8
  store %struct.rmlock* %1, %struct.rmlock** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %11 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %11, i32 0, i32 0
  %13 = load %struct.rm_queue*, %struct.rm_queue** %12, align 8
  store %struct.rm_queue* %13, %struct.rm_queue** %7, align 8
  br label %14

14:                                               ; preds = %37, %3
  %15 = load %struct.rm_queue*, %struct.rm_queue** %7, align 8
  %16 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %17 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %16, i32 0, i32 0
  %18 = icmp ne %struct.rm_queue* %15, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.rm_queue*, %struct.rm_queue** %7, align 8
  %21 = bitcast %struct.rm_queue* %20 to %struct.rm_priotracker*
  store %struct.rm_priotracker* %21, %struct.rm_priotracker** %8, align 8
  %22 = load %struct.rm_priotracker*, %struct.rm_priotracker** %8, align 8
  %23 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %22, i32 0, i32 1
  %24 = load %struct.rmlock*, %struct.rmlock** %23, align 8
  %25 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %26 = icmp eq %struct.rmlock* %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.rm_priotracker*, %struct.rm_priotracker** %8, align 8
  %29 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %28, i32 0, i32 0
  %30 = load %struct.thread*, %struct.thread** %29, align 8
  %31 = load %struct.thread*, %struct.thread** %6, align 8
  %32 = icmp eq %struct.thread* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %27, %19
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.rm_queue*, %struct.rm_queue** %7, align 8
  %39 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %38, i32 0, i32 0
  %40 = load %struct.rm_queue*, %struct.rm_queue** %39, align 8
  store %struct.rm_queue* %40, %struct.rm_queue** %7, align 8
  br label %14

41:                                               ; preds = %14
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
