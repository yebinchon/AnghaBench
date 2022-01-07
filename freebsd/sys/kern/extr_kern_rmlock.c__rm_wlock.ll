; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c__rm_wlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c__rm_wlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmlock = type { %struct.TYPE_2__, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rm_priotracker = type { i32, i32 }
%struct.turnstile = type { i32 }

@LO_SLEEPABLE = common dso_local global i32 0, align 4
@all_cpus = common dso_local global i8* null, align 8
@rm_spinlock = common dso_local global i32 0, align 4
@RMPF_ONQUEUE = common dso_local global i32 0, align 4
@RMPF_SIGNAL = common dso_local global i32 0, align 4
@TS_EXCLUSIVE_QUEUE = common dso_local global i32 0, align 4
@smp_no_rendezvous_barrier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rm_wlock(%struct.rmlock* %0) #0 {
  %2 = alloca %struct.rmlock*, align 8
  %3 = alloca %struct.rm_priotracker*, align 8
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca i8*, align 8
  store %struct.rmlock* %0, %struct.rmlock** %2, align 8
  %6 = call i64 (...) @SCHEDULER_STOPPED()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %65

9:                                                ; preds = %1
  %10 = load %struct.rmlock*, %struct.rmlock** %2, align 8
  %11 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LO_SLEEPABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.rmlock*, %struct.rmlock** %2, align 8
  %19 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %18, i32 0, i32 4
  %20 = call i32 @sx_xlock(i32* %19)
  br label %25

21:                                               ; preds = %9
  %22 = load %struct.rmlock*, %struct.rmlock** %2, align 8
  %23 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %22, i32 0, i32 3
  %24 = call i32 @mtx_lock(i32* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.rmlock*, %struct.rmlock** %2, align 8
  %27 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %26, i32 0, i32 2
  %28 = call i64 @CPU_CMP(i8** %27, i8** @all_cpus)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  %31 = load i8*, i8** @all_cpus, align 8
  store i8* %31, i8** %5, align 8
  %32 = load %struct.rmlock*, %struct.rmlock** %2, align 8
  %33 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %32, i32 0, i32 2
  %34 = call i32 @CPU_NAND(i8** %5, i8** %33)
  %35 = load i8*, i8** @all_cpus, align 8
  %36 = load %struct.rmlock*, %struct.rmlock** %2, align 8
  %37 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.rmlock*, %struct.rmlock** %2, align 8
  %39 = call i32 @rm_cleanIPI(%struct.rmlock* %38)
  %40 = call i32 @mtx_lock_spin(i32* @rm_spinlock)
  br label %41

41:                                               ; preds = %46, %30
  %42 = load %struct.rmlock*, %struct.rmlock** %2, align 8
  %43 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %42, i32 0, i32 1
  %44 = call %struct.rm_priotracker* @LIST_FIRST(i32* %43)
  store %struct.rm_priotracker* %44, %struct.rm_priotracker** %3, align 8
  %45 = icmp ne %struct.rm_priotracker* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load %struct.rmlock*, %struct.rmlock** %2, align 8
  %48 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %47, i32 0, i32 0
  %49 = call %struct.turnstile* @turnstile_trywait(%struct.TYPE_2__* %48)
  store %struct.turnstile* %49, %struct.turnstile** %4, align 8
  %50 = load i32, i32* @RMPF_ONQUEUE, align 4
  %51 = load i32, i32* @RMPF_SIGNAL, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.rm_priotracker*, %struct.rm_priotracker** %3, align 8
  %54 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = call i32 @mtx_unlock_spin(i32* @rm_spinlock)
  %56 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %57 = load %struct.rm_priotracker*, %struct.rm_priotracker** %3, align 8
  %58 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TS_EXCLUSIVE_QUEUE, align 4
  %61 = call i32 @turnstile_wait(%struct.turnstile* %56, i32 %59, i32 %60)
  %62 = call i32 @mtx_lock_spin(i32* @rm_spinlock)
  br label %41

63:                                               ; preds = %41
  %64 = call i32 @mtx_unlock_spin(i32* @rm_spinlock)
  br label %65

65:                                               ; preds = %8, %63, %25
  ret void
}

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @CPU_CMP(i8**, i8**) #1

declare dso_local i32 @CPU_NAND(i8**, i8**) #1

declare dso_local i32 @rm_cleanIPI(%struct.rmlock*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local %struct.rm_priotracker* @LIST_FIRST(i32*) #1

declare dso_local %struct.turnstile* @turnstile_trywait(%struct.TYPE_2__*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @turnstile_wait(%struct.turnstile*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
