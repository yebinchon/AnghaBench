; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_suspend_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_suspend_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"already suspended\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@TDF_NEEDSUSPCHK = common dso_local global i32 0, align 4
@SW_VOL = common dso_local global i32 0, align 4
@SWT_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_suspend_switch(%struct.thread* %0, %struct.proc* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.proc* %1, %struct.proc** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = call i32 @TD_IS_SUSPENDED(%struct.thread* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.proc*, %struct.proc** %4, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %11, i32 %12)
  %14 = load %struct.proc*, %struct.proc** %4, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PROC_SLOCK_ASSERT(%struct.proc* %14, i32 %15)
  %17 = load %struct.proc*, %struct.proc** %4, align 8
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 1
  %20 = load %struct.proc*, %struct.proc** %19, align 8
  %21 = icmp eq %struct.proc* %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.proc*, %struct.proc** %4, align 8
  %24 = call i32 @thread_stopped(%struct.proc* %23)
  %25 = load %struct.proc*, %struct.proc** %4, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.proc*, %struct.proc** %4, align 8
  %31 = call i32 @PROC_UNLOCK(%struct.proc* %30)
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = call i32 @thread_lock(%struct.thread* %32)
  %34 = load i32, i32* @TDF_NEEDSUSPCHK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.thread*, %struct.thread** %3, align 8
  %41 = call i32 @TD_SET_SUSPENDED(%struct.thread* %40)
  %42 = load %struct.thread*, %struct.thread** %3, align 8
  %43 = call i32 @sched_sleep(%struct.thread* %42, i32 0)
  %44 = load %struct.proc*, %struct.proc** %4, align 8
  %45 = call i32 @PROC_SUNLOCK(%struct.proc* %44)
  %46 = call i32 (...) @DROP_GIANT()
  %47 = load i32, i32* @SW_VOL, align 4
  %48 = load i32, i32* @SWT_SUSPEND, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @mi_switch(i32 %49, i32* null)
  %51 = load %struct.thread*, %struct.thread** %3, align 8
  %52 = call i32 @thread_unlock(%struct.thread* %51)
  %53 = call i32 (...) @PICKUP_GIANT()
  %54 = load %struct.proc*, %struct.proc** %4, align 8
  %55 = call i32 @PROC_LOCK(%struct.proc* %54)
  %56 = load %struct.proc*, %struct.proc** %4, align 8
  %57 = call i32 @PROC_SLOCK(%struct.proc* %56)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TD_IS_SUSPENDED(%struct.thread*) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_SLOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @thread_stopped(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @TD_SET_SUSPENDED(%struct.thread*) #1

declare dso_local i32 @sched_sleep(%struct.thread*, i32) #1

declare dso_local i32 @PROC_SUNLOCK(%struct.proc*) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @mi_switch(i32, i32*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_SLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
