; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_rm_cleanIPI.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_rm_cleanIPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.rm_queue }
%struct.rm_queue = type { %struct.rm_queue* }
%struct.rmlock = type { i32 }
%struct.rm_priotracker = type { i64, %struct.rmlock* }

@RMPF_ONQUEUE = common dso_local global i64 0, align 8
@rm_spinlock = common dso_local global i32 0, align 4
@rmp_qentry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rm_cleanIPI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm_cleanIPI(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pcpu*, align 8
  %4 = alloca %struct.rmlock*, align 8
  %5 = alloca %struct.rm_priotracker*, align 8
  %6 = alloca %struct.rm_queue*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.rmlock*
  store %struct.rmlock* %8, %struct.rmlock** %4, align 8
  %9 = call %struct.pcpu* (...) @get_pcpu()
  store %struct.pcpu* %9, %struct.pcpu** %3, align 8
  %10 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %11 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %11, i32 0, i32 0
  %13 = load %struct.rm_queue*, %struct.rm_queue** %12, align 8
  store %struct.rm_queue* %13, %struct.rm_queue** %6, align 8
  br label %14

14:                                               ; preds = %44, %1
  %15 = load %struct.rm_queue*, %struct.rm_queue** %6, align 8
  %16 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %17 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %16, i32 0, i32 0
  %18 = icmp ne %struct.rm_queue* %15, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %14
  %20 = load %struct.rm_queue*, %struct.rm_queue** %6, align 8
  %21 = bitcast %struct.rm_queue* %20 to %struct.rm_priotracker*
  store %struct.rm_priotracker* %21, %struct.rm_priotracker** %5, align 8
  %22 = load %struct.rm_priotracker*, %struct.rm_priotracker** %5, align 8
  %23 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %22, i32 0, i32 1
  %24 = load %struct.rmlock*, %struct.rmlock** %23, align 8
  %25 = load %struct.rmlock*, %struct.rmlock** %4, align 8
  %26 = icmp eq %struct.rmlock* %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.rm_priotracker*, %struct.rm_priotracker** %5, align 8
  %29 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i64, i64* @RMPF_ONQUEUE, align 8
  %34 = load %struct.rm_priotracker*, %struct.rm_priotracker** %5, align 8
  %35 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = call i32 @mtx_lock_spin(i32* @rm_spinlock)
  %37 = load %struct.rmlock*, %struct.rmlock** %4, align 8
  %38 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %37, i32 0, i32 0
  %39 = load %struct.rm_priotracker*, %struct.rm_priotracker** %5, align 8
  %40 = load i32, i32* @rmp_qentry, align 4
  %41 = call i32 @LIST_INSERT_HEAD(i32* %38, %struct.rm_priotracker* %39, i32 %40)
  %42 = call i32 @mtx_unlock_spin(i32* @rm_spinlock)
  br label %43

43:                                               ; preds = %32, %27, %19
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.rm_queue*, %struct.rm_queue** %6, align 8
  %46 = getelementptr inbounds %struct.rm_queue, %struct.rm_queue* %45, i32 0, i32 0
  %47 = load %struct.rm_queue*, %struct.rm_queue** %46, align 8
  store %struct.rm_queue* %47, %struct.rm_queue** %6, align 8
  br label %14

48:                                               ; preds = %14
  ret void
}

declare dso_local %struct.pcpu* @get_pcpu(...) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.rm_priotracker*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
