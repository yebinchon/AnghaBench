; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_reap_kill_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_reap_kill_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }
%struct.procctl_reaper_kill = type { i32, i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.proc*, i32*, %struct.procctl_reaper_kill*, i32*)* @reap_kill_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reap_kill_proc(%struct.thread* %0, %struct.proc* %1, i32* %2, %struct.procctl_reaper_kill* %3, i32* %4) #0 {
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.procctl_reaper_kill*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.proc* %1, %struct.proc** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.procctl_reaper_kill* %3, %struct.procctl_reaper_kill** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.proc*, %struct.proc** %7, align 8
  %13 = call i32 @PROC_LOCK(%struct.proc* %12)
  %14 = load %struct.thread*, %struct.thread** %6, align 8
  %15 = load %struct.proc*, %struct.proc** %7, align 8
  %16 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %9, align 8
  %17 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @p_cansignal(%struct.thread* %14, %struct.proc* %15, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load %struct.proc*, %struct.proc** %7, align 8
  %24 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %9, align 8
  %25 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @pksignal(%struct.proc* %23, i32 %26, i32* %27)
  %29 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %9, align 8
  %30 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  br label %49

35:                                               ; preds = %5
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ESRCH, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.proc*, %struct.proc** %7, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %9, align 8
  %45 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %35
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.proc*, %struct.proc** %7, align 8
  %51 = call i32 @PROC_UNLOCK(%struct.proc* %50)
  ret void
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @p_cansignal(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @pksignal(%struct.proc*, i32, i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
