; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kthread_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kthread_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.proc* }
%struct.proc = type { i32 }

@TDP_KTHREAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TDF_KTH_SUSP = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"suspkt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kthread_suspend(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 2
  %9 = load %struct.proc*, %struct.proc** %8, align 8
  store %struct.proc* %9, %struct.proc** %6, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TDP_KTHREAD, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.proc*, %struct.proc** %6, align 8
  %20 = call i32 @PROC_LOCK(%struct.proc* %19)
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = call i32 @thread_lock(%struct.thread* %21)
  %23 = load i32, i32* @TDF_KTH_SUSP, align 4
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = call i32 @thread_unlock(%struct.thread* %28)
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 1
  %32 = load %struct.proc*, %struct.proc** %6, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 0
  %34 = load i32, i32* @PPAUSE, align 4
  %35 = load i32, i32* @PDROP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @msleep(i32* %31, i32* %33, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %18, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
