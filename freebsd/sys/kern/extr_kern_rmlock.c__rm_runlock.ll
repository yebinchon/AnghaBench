; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c__rm_runlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c__rm_runlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32 }
%struct.rmlock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rm_priotracker = type { i32, %struct.thread* }
%struct.thread = type { i64, i32, i32 }

@cpuid_to_pcpu = common dso_local global %struct.pcpu** null, align 8
@LO_SLEEPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rm_runlock(%struct.rmlock* %0, %struct.rm_priotracker* %1) #0 {
  %3 = alloca %struct.rmlock*, align 8
  %4 = alloca %struct.rm_priotracker*, align 8
  %5 = alloca %struct.pcpu*, align 8
  %6 = alloca %struct.thread*, align 8
  store %struct.rmlock* %0, %struct.rmlock** %3, align 8
  store %struct.rm_priotracker* %1, %struct.rm_priotracker** %4, align 8
  %7 = load %struct.rm_priotracker*, %struct.rm_priotracker** %4, align 8
  %8 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %7, i32 0, i32 1
  %9 = load %struct.thread*, %struct.thread** %8, align 8
  store %struct.thread* %9, %struct.thread** %6, align 8
  %10 = call i64 (...) @SCHEDULER_STOPPED()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.thread*, %struct.thread** %6, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.pcpu**, %struct.pcpu*** @cpuid_to_pcpu, align 8
  %19 = load %struct.thread*, %struct.thread** %6, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.pcpu*, %struct.pcpu** %18, i64 %21
  %23 = load %struct.pcpu*, %struct.pcpu** %22, align 8
  store %struct.pcpu* %23, %struct.pcpu** %5, align 8
  %24 = load %struct.pcpu*, %struct.pcpu** %5, align 8
  %25 = load %struct.rm_priotracker*, %struct.rm_priotracker** %4, align 8
  %26 = call i32 @rm_tracker_remove(%struct.pcpu* %24, %struct.rm_priotracker* %25)
  %27 = load %struct.thread*, %struct.thread** %6, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = call i32 (...) @sched_unpin()
  %32 = load %struct.rmlock*, %struct.rmlock** %3, align 8
  %33 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LO_SLEEPABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %13
  %40 = call i32 (...) @THREAD_SLEEPING_OK()
  br label %41

41:                                               ; preds = %39, %13
  %42 = load %struct.thread*, %struct.thread** %6, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rm_priotracker*, %struct.rm_priotracker** %4, align 8
  %46 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %44, %47
  %49 = icmp eq i32 0, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @__predict_true(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %58

54:                                               ; preds = %41
  %55 = load %struct.thread*, %struct.thread** %6, align 8
  %56 = load %struct.rm_priotracker*, %struct.rm_priotracker** %4, align 8
  %57 = call i32 @_rm_unlock_hard(%struct.thread* %55, %struct.rm_priotracker* %56)
  br label %58

58:                                               ; preds = %54, %53, %12
  ret void
}

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @rm_tracker_remove(%struct.pcpu*, %struct.rm_priotracker*) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @THREAD_SLEEPING_OK(...) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @_rm_unlock_hard(%struct.thread*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
