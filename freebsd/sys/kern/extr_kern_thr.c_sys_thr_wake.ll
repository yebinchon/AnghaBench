; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_sys_thr_wake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_sys_thr_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32, %struct.proc*, i32 }
%struct.proc = type { i32 }
%struct.thr_wake_args = type { i64 }

@TDP_WAKEUP = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@TDF_THRWAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_thr_wake(%struct.thread* %0, %struct.thr_wake_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thr_wake_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.thr_wake_args* %1, %struct.thr_wake_args** %5, align 8
  %8 = load %struct.thr_wake_args*, %struct.thr_wake_args** %5, align 8
  %9 = getelementptr inbounds %struct.thr_wake_args, %struct.thr_wake_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @TDP_WAKEUP, align 4
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  store i32 0, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 2
  %24 = load %struct.proc*, %struct.proc** %23, align 8
  store %struct.proc* %24, %struct.proc** %6, align 8
  %25 = load %struct.thr_wake_args*, %struct.thr_wake_args** %5, align 8
  %26 = getelementptr inbounds %struct.thr_wake_args, %struct.thr_wake_args* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.proc*, %struct.proc** %6, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.thread* @tdfind(i32 %28, i32 %31)
  store %struct.thread* %32, %struct.thread** %7, align 8
  %33 = load %struct.thread*, %struct.thread** %7, align 8
  %34 = icmp eq %struct.thread* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* @ESRCH, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %21
  %38 = load %struct.thread*, %struct.thread** %7, align 8
  %39 = call i32 @thread_lock(%struct.thread* %38)
  %40 = load i32, i32* @TDF_THRWAKEUP, align 4
  %41 = load %struct.thread*, %struct.thread** %7, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.thread*, %struct.thread** %7, align 8
  %46 = call i32 @thread_unlock(%struct.thread* %45)
  %47 = load %struct.thread*, %struct.thread** %7, align 8
  %48 = bitcast %struct.thread* %47 to i8*
  %49 = call i32 @wakeup(i8* %48)
  %50 = load %struct.proc*, %struct.proc** %6, align 8
  %51 = call i32 @PROC_UNLOCK(%struct.proc* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %37, %35, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.thread* @tdfind(i32, i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @wakeup(i8*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
