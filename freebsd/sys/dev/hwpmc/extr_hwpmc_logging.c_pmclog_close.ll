; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_owner = type { i32 }

@LOG = common dso_local global i32 0, align 4
@CLO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"po=%p\00", align 1
@pmc_kthread_mtx = common dso_local global i32 0, align 4
@PMC_PO_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmclog_close(%struct.pmc_owner* %0) #0 {
  %2 = alloca %struct.pmc_owner*, align 8
  store %struct.pmc_owner* %0, %struct.pmc_owner** %2, align 8
  %3 = load i32, i32* @LOG, align 4
  %4 = load i32, i32* @CLO, align 4
  %5 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %6 = call i32 @PMCDBG1(i32 %3, i32 %4, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.pmc_owner* %5)
  %7 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %8 = call i32 @pmclog_process_closelog(%struct.pmc_owner* %7)
  %9 = call i32 @mtx_lock(i32* @pmc_kthread_mtx)
  %10 = load i32, i32* @PMC_PO_SHUTDOWN, align 4
  %11 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %12 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = call i32 @DELAY(i32 50)
  %16 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %17 = call i32 @pmclog_schedule_all(%struct.pmc_owner* %16)
  %18 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %19 = call i32 @wakeup_one(%struct.pmc_owner* %18)
  %20 = call i32 @mtx_unlock(i32* @pmc_kthread_mtx)
  ret i32 0
}

declare dso_local i32 @PMCDBG1(i32, i32, i32, i8*, %struct.pmc_owner*) #1

declare dso_local i32 @pmclog_process_closelog(%struct.pmc_owner*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @pmclog_schedule_all(%struct.pmc_owner*) #1

declare dso_local i32 @wakeup_one(%struct.pmc_owner*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
