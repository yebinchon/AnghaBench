; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kproc_suspend_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kproc_suspend_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32 }

@SIGSTOP = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kpsusp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kproc_suspend_check(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %3 = load %struct.proc*, %struct.proc** %2, align 8
  %4 = call i32 @PROC_LOCK(%struct.proc* %3)
  br label %5

5:                                                ; preds = %12, %1
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SIGSTOP, align 4
  %10 = call i64 @SIGISMEMBER(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = load %struct.proc*, %struct.proc** %2, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 1
  %15 = call i32 @wakeup(i32* %14)
  %16 = load %struct.proc*, %struct.proc** %2, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 1
  %18 = load %struct.proc*, %struct.proc** %2, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load i32, i32* @PPAUSE, align 4
  %21 = call i32 @msleep(i32* %17, i32* %19, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %5

22:                                               ; preds = %5
  %23 = load %struct.proc*, %struct.proc** %2, align 8
  %24 = call i32 @PROC_UNLOCK(%struct.proc* %23)
  ret void
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
