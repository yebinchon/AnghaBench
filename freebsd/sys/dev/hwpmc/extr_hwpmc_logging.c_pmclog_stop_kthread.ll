; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_stop_kthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_stop_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_owner = type { i32*, i32 }

@pmc_kthread_mtx = common dso_local global i32 0, align 4
@PMC_PO_OWNS_LOGFILE = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pmckstp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmc_owner*)* @pmclog_stop_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmclog_stop_kthread(%struct.pmc_owner* %0) #0 {
  %2 = alloca %struct.pmc_owner*, align 8
  store %struct.pmc_owner* %0, %struct.pmc_owner** %2, align 8
  %3 = call i32 @mtx_lock(i32* @pmc_kthread_mtx)
  %4 = load i32, i32* @PMC_PO_OWNS_LOGFILE, align 4
  %5 = xor i32 %4, -1
  %6 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %7 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %11 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %16 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @PROC_LOCK(i32* %17)
  %19 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %20 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @SIGHUP, align 4
  %23 = call i32 @kern_psignal(i32* %21, i32 %22)
  %24 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %25 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @PROC_UNLOCK(i32* %26)
  br label %28

28:                                               ; preds = %14, %1
  %29 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %30 = call i32 @wakeup_one(%struct.pmc_owner* %29)
  br label %31

31:                                               ; preds = %36, %28
  %32 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %33 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %38 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @PPAUSE, align 4
  %41 = call i32 @msleep(i32* %39, i32* @pmc_kthread_mtx, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %31

42:                                               ; preds = %31
  %43 = call i32 @mtx_unlock(i32* @pmc_kthread_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @PROC_LOCK(i32*) #1

declare dso_local i32 @kern_psignal(i32*, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32*) #1

declare dso_local i32 @wakeup_one(%struct.pmc_owner*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
