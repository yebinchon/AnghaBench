; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c_kern_yield.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c_kern_yield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@PRI_USER = common dso_local global i32 0, align 4
@SW_VOL = common dso_local global i32 0, align 4
@SWT_RELINQUISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kern_yield(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %4, %struct.thread** %3, align 8
  %5 = call i32 (...) @DROP_GIANT()
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = call i32 @thread_lock(%struct.thread* %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @PRI_USER, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %2, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @sched_prio(%struct.thread* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @SW_VOL, align 4
  %24 = load i32, i32* @SWT_RELINQUISH, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @mi_switch(i32 %25, i32* null)
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = call i32 @thread_unlock(%struct.thread* %27)
  %29 = call i32 (...) @PICKUP_GIANT()
  ret void
}

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_prio(%struct.thread*, i32) #1

declare dso_local i32 @mi_switch(i32, i32*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
