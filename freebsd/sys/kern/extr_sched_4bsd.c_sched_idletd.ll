; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_idletd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_idletd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpuidlestat = type { i32, i32 }

@idlestat = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@sched_lock = common dso_local global i32 0, align 4
@SW_VOL = common dso_local global i32 0, align 4
@SWT_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_idletd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pcpuidlestat*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @THREAD_NO_SLEEPING()
  %5 = load i32, i32* @idlestat, align 4
  %6 = call %struct.pcpuidlestat* @DPCPU_PTR(i32 %5)
  store %struct.pcpuidlestat* %6, %struct.pcpuidlestat** %3, align 8
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* @MA_NOTOWNED, align 4
  %9 = call i32 @mtx_assert(i32* @Giant, i32 %8)
  br label %10

10:                                               ; preds = %13, %7
  %11 = call i64 (...) @sched_runnable()
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.pcpuidlestat*, %struct.pcpuidlestat** %3, align 8
  %15 = getelementptr inbounds %struct.pcpuidlestat, %struct.pcpuidlestat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pcpuidlestat*, %struct.pcpuidlestat** %3, align 8
  %18 = getelementptr inbounds %struct.pcpuidlestat, %struct.pcpuidlestat* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = icmp sgt i32 %20, 64
  %22 = zext i1 %21 to i32
  %23 = call i32 @cpu_idle(i32 %22)
  %24 = load %struct.pcpuidlestat*, %struct.pcpuidlestat** %3, align 8
  %25 = getelementptr inbounds %struct.pcpuidlestat, %struct.pcpuidlestat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %10

28:                                               ; preds = %10
  %29 = call i32 @mtx_lock_spin(i32* @sched_lock)
  %30 = load i32, i32* @SW_VOL, align 4
  %31 = load i32, i32* @SWT_IDLE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @mi_switch(i32 %32, i32* null)
  %34 = call i32 @mtx_unlock_spin(i32* @sched_lock)
  br label %7
}

declare dso_local i32 @THREAD_NO_SLEEPING(...) #1

declare dso_local %struct.pcpuidlestat* @DPCPU_PTR(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @sched_runnable(...) #1

declare dso_local i32 @cpu_idle(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mi_switch(i32, i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
