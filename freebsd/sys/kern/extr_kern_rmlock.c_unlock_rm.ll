; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_unlock_rm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_unlock_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.lock_object = type { i32 }
%struct.pcpu = type { %struct.rm_queue }
%struct.rm_queue = type { %struct.rm_queue* }
%struct.rmlock = type { i32 }
%struct.rm_priotracker = type { %struct.thread*, %struct.rmlock* }

@RA_LOCKED = common dso_local global i32 0, align 4
@RA_NOTRECURSED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"rm_priotracker is non-NULL when lock held in read mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lock_object*)* @unlock_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unlock_rm(%struct.lock_object* %0) #0 {
  %2 = alloca %struct.lock_object*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.pcpu*, align 8
  %5 = alloca %struct.rmlock*, align 8
  %6 = alloca %struct.rm_queue*, align 8
  %7 = alloca %struct.rm_priotracker*, align 8
  %8 = alloca i64, align 8
  store %struct.lock_object* %0, %struct.lock_object** %2, align 8
  %9 = load %struct.lock_object*, %struct.lock_object** %2, align 8
  %10 = bitcast %struct.lock_object* %9 to %struct.rmlock*
  store %struct.rmlock* %10, %struct.rmlock** %5, align 8
  store %struct.rm_priotracker* null, %struct.rm_priotracker** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %12 = load i32, i32* @RA_LOCKED, align 4
  %13 = load i32, i32* @RA_NOTRECURSED, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @rm_assert(%struct.rmlock* %11, i32 %14)
  %16 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %17 = call i64 @rm_wowned(%struct.rmlock* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %21 = call i32 @rm_wunlock(%struct.rmlock* %20)
  br label %66

22:                                               ; preds = %1
  %23 = call i32 (...) @critical_enter()
  %24 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %24, %struct.thread** %3, align 8
  %25 = call %struct.pcpu* (...) @get_pcpu()
  store %struct.pcpu* %25, %struct.pcpu** %4, align 8
  %26 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %27 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %27, i32 0, i32 0
  %29 = load %struct.rm_queue*, %struct.rm_queue** %28, align 8
  store %struct.rm_queue* %29, %struct.rm_queue** %6, align 8
  br label %30

30:                                               ; preds = %53, %22
  %31 = load %struct.rm_queue*, %struct.rm_queue** %6, align 8
  %32 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %33 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %32, i32 0, i32 0
  %34 = icmp ne %struct.rm_queue* %31, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.rm_queue*, %struct.rm_queue** %6, align 8
  %37 = bitcast %struct.rm_queue* %36 to %struct.rm_priotracker*
  store %struct.rm_priotracker* %37, %struct.rm_priotracker** %7, align 8
  %38 = load %struct.rm_priotracker*, %struct.rm_priotracker** %7, align 8
  %39 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %38, i32 0, i32 1
  %40 = load %struct.rmlock*, %struct.rmlock** %39, align 8
  %41 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %42 = icmp eq %struct.rmlock* %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.rm_priotracker*, %struct.rm_priotracker** %7, align 8
  %45 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %44, i32 0, i32 0
  %46 = load %struct.thread*, %struct.thread** %45, align 8
  %47 = load %struct.thread*, %struct.thread** %3, align 8
  %48 = icmp eq %struct.thread* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.rm_priotracker*, %struct.rm_priotracker** %7, align 8
  %51 = ptrtoint %struct.rm_priotracker* %50 to i64
  store i64 %51, i64* %8, align 8
  br label %57

52:                                               ; preds = %43, %35
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.rm_queue*, %struct.rm_queue** %6, align 8
  %55 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %54, i32 0, i32 0
  %56 = load %struct.rm_queue*, %struct.rm_queue** %55, align 8
  store %struct.rm_queue* %56, %struct.rm_queue** %6, align 8
  br label %30

57:                                               ; preds = %49, %30
  %58 = load %struct.rm_priotracker*, %struct.rm_priotracker** %7, align 8
  %59 = icmp ne %struct.rm_priotracker* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 (...) @critical_exit()
  %63 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %64 = load %struct.rm_priotracker*, %struct.rm_priotracker** %7, align 8
  %65 = call i32 @rm_runlock(%struct.rmlock* %63, %struct.rm_priotracker* %64)
  br label %66

66:                                               ; preds = %57, %19
  %67 = load i64, i64* %8, align 8
  ret i64 %67
}

declare dso_local i32 @rm_assert(%struct.rmlock*, i32) #1

declare dso_local i64 @rm_wowned(%struct.rmlock*) #1

declare dso_local i32 @rm_wunlock(%struct.rmlock*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.pcpu* @get_pcpu(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @rm_runlock(%struct.rmlock*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
