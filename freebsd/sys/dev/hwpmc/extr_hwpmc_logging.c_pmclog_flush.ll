; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_owner = type { i32, i32 }

@LOG = common dso_local global i32 0, align 4
@FLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"po=%p\00", align 1
@pmc_kthread_mtx = common dso_local global i32 0, align 4
@PMC_PO_OWNS_LOGFILE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmclog_flush(%struct.pmc_owner* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmc_owner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pmc_owner* %0, %struct.pmc_owner** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @LOG, align 4
  %8 = load i32, i32* @FLS, align 4
  %9 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %10 = call i32 @PMCDBG1(i32 %7, i32 %8, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.pmc_owner* %9)
  %11 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %12 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %17 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %20 = call i32 @mtx_lock(i32* @pmc_kthread_mtx)
  %21 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %22 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PMC_PO_OWNS_LOGFILE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %32

29:                                               ; preds = %19
  %30 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %31 = call i32 @pmclog_schedule_all(%struct.pmc_owner* %30)
  br label %32

32:                                               ; preds = %29, %27
  %33 = call i32 @mtx_unlock(i32* @pmc_kthread_mtx)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @PMCDBG1(i32, i32, i32, i8*, %struct.pmc_owner*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pmclog_schedule_all(%struct.pmc_owner*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
