; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.usb_process = type { i32, i32, i32, i32*, i32, i64, i32, i64, %struct.thread*, i32 }
%struct.usb_proc_msg = type { %struct.TYPE_2__, i32 (%struct.usb_proc_msg*)* }
%struct.TYPE_2__ = type { i32* }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Message pm=%p, cb=%p (enter)\0A\00", align 1
@pm_qentry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Message pm=%p (leave)\0A\00", align 1
@usb_pcount = common dso_local global i64 0, align 8
@usbproc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usb_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_process*, align 8
  %4 = alloca %struct.usb_proc_msg*, align 8
  %5 = alloca %struct.thread*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.usb_process*
  store %struct.usb_process* %7, %struct.usb_process** %3, align 8
  %8 = call i32 (...) @USB_THREAD_SUSPEND_CHECK()
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = call i32 @thread_lock(%struct.thread* %10)
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %14 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sched_prio(%struct.thread* %12, i32 %15)
  %17 = load %struct.thread*, %struct.thread** %5, align 8
  %18 = call i32 @thread_unlock(%struct.thread* %17)
  %19 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %20 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @USB_MTX_LOCK(i32 %21)
  %23 = load %struct.thread*, %struct.thread** %5, align 8
  %24 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %25 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %24, i32 0, i32 8
  store %struct.thread* %23, %struct.thread** %25, align 8
  br label %26

26:                                               ; preds = %1, %63, %77
  %27 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %28 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %86

32:                                               ; preds = %26
  %33 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %34 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %33, i32 0, i32 6
  %35 = call %struct.usb_proc_msg* @TAILQ_FIRST(i32* %34)
  store %struct.usb_proc_msg* %35, %struct.usb_proc_msg** %4, align 8
  %36 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %4, align 8
  %37 = icmp ne %struct.usb_proc_msg* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %4, align 8
  %40 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %4, align 8
  %41 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %40, i32 0, i32 1
  %42 = load i32 (%struct.usb_proc_msg*)*, i32 (%struct.usb_proc_msg*)** %41, align 8
  %43 = call i32 (i8*, %struct.usb_proc_msg*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.usb_proc_msg* %39, i32 (%struct.usb_proc_msg*)* %42)
  %44 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %4, align 8
  %45 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %44, i32 0, i32 1
  %46 = load i32 (%struct.usb_proc_msg*)*, i32 (%struct.usb_proc_msg*)** %45, align 8
  %47 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %4, align 8
  %48 = call i32 %46(%struct.usb_proc_msg* %47)
  %49 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %4, align 8
  %50 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %51 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %50, i32 0, i32 6
  %52 = call %struct.usb_proc_msg* @TAILQ_FIRST(i32* %51)
  %53 = icmp eq %struct.usb_proc_msg* %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %38
  %55 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %56 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %55, i32 0, i32 6
  %57 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %4, align 8
  %58 = load i32, i32* @pm_qentry, align 4
  %59 = call i32 @TAILQ_REMOVE(i32* %56, %struct.usb_proc_msg* %57, i32 %58)
  %60 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %4, align 8
  %61 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %54, %38
  %64 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %4, align 8
  %65 = call i32 (i8*, %struct.usb_proc_msg*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.usb_proc_msg* %64)
  br label %26

66:                                               ; preds = %32
  %67 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %68 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %73 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %75 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %74, i32 0, i32 4
  %76 = call i32 @cv_broadcast(i32* %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %79 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %81 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %80, i32 0, i32 2
  %82 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %83 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cv_wait(i32* %81, i32 %84)
  br label %26

86:                                               ; preds = %31
  %87 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %88 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %87, i32 0, i32 3
  store i32* null, i32** %88, align 8
  %89 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %90 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %89, i32 0, i32 2
  %91 = call i32 @cv_signal(i32* %90)
  %92 = load %struct.usb_process*, %struct.usb_process** %3, align 8
  %93 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @USB_MTX_UNLOCK(i32 %94)
  %96 = call i32 @USB_THREAD_EXIT(i32 0)
  ret void
}

declare dso_local i32 @USB_THREAD_SUSPEND_CHECK(...) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_prio(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @USB_MTX_LOCK(i32) #1

declare dso_local %struct.usb_proc_msg* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @DPRINTF(i8*, %struct.usb_proc_msg*, ...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.usb_proc_msg*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @USB_MTX_UNLOCK(i32) #1

declare dso_local i32 @USB_THREAD_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
