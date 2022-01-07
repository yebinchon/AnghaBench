; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kproc_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kthread.c_kproc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, i32 }

@P_KPROC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"suspkp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kproc_suspend(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.proc*, %struct.proc** %4, align 8
  %7 = call i32 @PROC_LOCK(%struct.proc* %6)
  %8 = load %struct.proc*, %struct.proc** %4, align 8
  %9 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @P_KPROC, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.proc*, %struct.proc** %4, align 8
  %16 = call i32 @PROC_UNLOCK(%struct.proc* %15)
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.proc*, %struct.proc** %4, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SIGSTOP, align 4
  %23 = call i32 @SIGADDSET(i32 %21, i32 %22)
  %24 = load %struct.proc*, %struct.proc** %4, align 8
  %25 = call i32 @wakeup(%struct.proc* %24)
  %26 = load %struct.proc*, %struct.proc** %4, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 2
  %28 = load %struct.proc*, %struct.proc** %4, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 1
  %30 = load i32, i32* @PPAUSE, align 4
  %31 = load i32, i32* @PDROP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @msleep(i32* %27, i32* %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %18, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @SIGADDSET(i32, i32) #1

declare dso_local i32 @wakeup(%struct.proc*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
