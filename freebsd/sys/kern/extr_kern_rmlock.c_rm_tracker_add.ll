; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_rm_tracker_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_rm_tracker_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.rm_queue }
%struct.rm_queue = type { %struct.rm_queue*, %struct.rm_queue* }
%struct.rm_priotracker = type { %struct.rm_queue }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcpu*, %struct.rm_priotracker*)* @rm_tracker_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm_tracker_add(%struct.pcpu* %0, %struct.rm_priotracker* %1) #0 {
  %3 = alloca %struct.pcpu*, align 8
  %4 = alloca %struct.rm_priotracker*, align 8
  %5 = alloca %struct.rm_queue*, align 8
  store %struct.pcpu* %0, %struct.pcpu** %3, align 8
  store %struct.rm_priotracker* %1, %struct.rm_priotracker** %4, align 8
  %6 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %7 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %6, i32 0, i32 0
  %8 = load %struct.rm_priotracker*, %struct.rm_priotracker** %4, align 8
  %9 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %9, i32 0, i32 1
  store %struct.rm_queue* %7, %struct.rm_queue** %10, align 8
  %11 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %12 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %12, i32 0, i32 0
  %14 = load %struct.rm_queue*, %struct.rm_queue** %13, align 8
  store %struct.rm_queue* %14, %struct.rm_queue** %5, align 8
  %15 = load %struct.rm_queue*, %struct.rm_queue** %5, align 8
  %16 = load %struct.rm_priotracker*, %struct.rm_priotracker** %4, align 8
  %17 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %17, i32 0, i32 0
  store %struct.rm_queue* %15, %struct.rm_queue** %18, align 8
  %19 = load %struct.rm_priotracker*, %struct.rm_priotracker** %4, align 8
  %20 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %19, i32 0, i32 0
  %21 = load %struct.rm_queue*, %struct.rm_queue** %5, align 8
  %22 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %21, i32 0, i32 1
  store %struct.rm_queue* %20, %struct.rm_queue** %22, align 8
  %23 = load %struct.rm_priotracker*, %struct.rm_priotracker** %4, align 8
  %24 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %23, i32 0, i32 0
  %25 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %26 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %26, i32 0, i32 0
  store %struct.rm_queue* %24, %struct.rm_queue** %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
