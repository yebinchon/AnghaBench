; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kproc_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kproc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32 }

@P_KPROC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kproc_resume(%struct.proc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  %4 = load %struct.proc*, %struct.proc** %3, align 8
  %5 = call i32 @PROC_LOCK(%struct.proc* %4)
  %6 = load %struct.proc*, %struct.proc** %3, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @P_KPROC, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.proc*, %struct.proc** %3, align 8
  %14 = call i32 @PROC_UNLOCK(%struct.proc* %13)
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.proc*, %struct.proc** %3, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SIGSTOP, align 4
  %21 = call i32 @SIGDELSET(i32 %19, i32 %20)
  %22 = load %struct.proc*, %struct.proc** %3, align 8
  %23 = call i32 @PROC_UNLOCK(%struct.proc* %22)
  %24 = load %struct.proc*, %struct.proc** %3, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 1
  %26 = call i32 @wakeup(i32* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %16, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @SIGDELSET(i32, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
