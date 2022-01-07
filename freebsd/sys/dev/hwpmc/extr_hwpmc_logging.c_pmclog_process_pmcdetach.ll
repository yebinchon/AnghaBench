; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_pmcdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_pmcdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc = type { i32, %struct.pmc_owner* }
%struct.pmc_owner = type { i32 }

@LOG = common dso_local global i32 0, align 4
@ATT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"!pm=%p pid=%d\00", align 1
@PMCDETACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmclog_process_pmcdetach(%struct.pmc* %0, i32 %1) #0 {
  %3 = alloca %struct.pmc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmc_owner*, align 8
  store %struct.pmc* %0, %struct.pmc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @LOG, align 4
  %7 = load i32, i32* @ATT, align 4
  %8 = load %struct.pmc*, %struct.pmc** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @PMCDBG2(i32 %6, i32 %7, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.pmc* %8, i32 %9)
  %11 = load %struct.pmc*, %struct.pmc** %3, align 8
  %12 = getelementptr inbounds %struct.pmc, %struct.pmc* %11, i32 0, i32 1
  %13 = load %struct.pmc_owner*, %struct.pmc_owner** %12, align 8
  store %struct.pmc_owner* %13, %struct.pmc_owner** %5, align 8
  %14 = load %struct.pmc_owner*, %struct.pmc_owner** %5, align 8
  %15 = load i32, i32* @PMCDETACH, align 4
  %16 = call i32 @PMCLOG_RESERVE(%struct.pmc_owner* %14, i32 %15, i32 4)
  %17 = load %struct.pmc*, %struct.pmc** %3, align 8
  %18 = getelementptr inbounds %struct.pmc, %struct.pmc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @PMCLOG_EMIT32(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @PMCLOG_EMIT32(i32 %21)
  %23 = load %struct.pmc_owner*, %struct.pmc_owner** %5, align 8
  %24 = call i32 @PMCLOG_DESPATCH_SYNC(%struct.pmc_owner* %23)
  ret void
}

declare dso_local i32 @PMCDBG2(i32, i32, i32, i8*, %struct.pmc*, i32) #1

declare dso_local i32 @PMCLOG_RESERVE(%struct.pmc_owner*, i32, i32) #1

declare dso_local i32 @PMCLOG_EMIT32(i32) #1

declare dso_local i32 @PMCLOG_DESPATCH_SYNC(%struct.pmc_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
