; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_procexit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_procexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc = type { i32, %struct.pmc_owner* }
%struct.pmc_owner = type { i32 }
%struct.pmc_process = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@LOG = common dso_local global i32 0, align 4
@EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pm=%p pid=%d v=%jx\00", align 1
@PROCEXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmclog_process_procexit(%struct.pmc* %0, %struct.pmc_process* %1) #0 {
  %3 = alloca %struct.pmc*, align 8
  %4 = alloca %struct.pmc_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmc_owner*, align 8
  store %struct.pmc* %0, %struct.pmc** %3, align 8
  store %struct.pmc_process* %1, %struct.pmc_process** %4, align 8
  %7 = load %struct.pmc*, %struct.pmc** %3, align 8
  %8 = call i32 @PMC_TO_ROWINDEX(%struct.pmc* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @LOG, align 4
  %10 = load i32, i32* @EXT, align 4
  %11 = load %struct.pmc*, %struct.pmc** %3, align 8
  %12 = load %struct.pmc_process*, %struct.pmc_process** %4, align 8
  %13 = getelementptr inbounds %struct.pmc_process, %struct.pmc_process* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pmc_process*, %struct.pmc_process** %4, align 8
  %18 = getelementptr inbounds %struct.pmc_process, %struct.pmc_process* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PMCDBG3(i32 %9, i32 %10, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.pmc* %11, i32 %16, i32 %24)
  %26 = load %struct.pmc*, %struct.pmc** %3, align 8
  %27 = getelementptr inbounds %struct.pmc, %struct.pmc* %26, i32 0, i32 1
  %28 = load %struct.pmc_owner*, %struct.pmc_owner** %27, align 8
  store %struct.pmc_owner* %28, %struct.pmc_owner** %6, align 8
  %29 = load %struct.pmc_owner*, %struct.pmc_owner** %6, align 8
  %30 = load i32, i32* @PROCEXIT, align 4
  %31 = call i32 @PMCLOG_RESERVE(%struct.pmc_owner* %29, i32 %30, i32 4)
  %32 = load %struct.pmc*, %struct.pmc** %3, align 8
  %33 = getelementptr inbounds %struct.pmc, %struct.pmc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PMCLOG_EMIT32(i32 %34)
  %36 = load %struct.pmc_process*, %struct.pmc_process** %4, align 8
  %37 = getelementptr inbounds %struct.pmc_process, %struct.pmc_process* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PMCLOG_EMIT32(i32 %40)
  %42 = load %struct.pmc_process*, %struct.pmc_process** %4, align 8
  %43 = getelementptr inbounds %struct.pmc_process, %struct.pmc_process* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PMCLOG_EMIT64(i32 %49)
  %51 = load %struct.pmc_owner*, %struct.pmc_owner** %6, align 8
  %52 = call i32 @PMCLOG_DESPATCH(%struct.pmc_owner* %51)
  ret void
}

declare dso_local i32 @PMC_TO_ROWINDEX(%struct.pmc*) #1

declare dso_local i32 @PMCDBG3(i32, i32, i32, i8*, %struct.pmc*, i32, i32) #1

declare dso_local i32 @PMCLOG_RESERVE(%struct.pmc_owner*, i32, i32) #1

declare dso_local i32 @PMCLOG_EMIT32(i32) #1

declare dso_local i32 @PMCLOG_EMIT64(i32) #1

declare dso_local i32 @PMCLOG_DESPATCH(%struct.pmc_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
