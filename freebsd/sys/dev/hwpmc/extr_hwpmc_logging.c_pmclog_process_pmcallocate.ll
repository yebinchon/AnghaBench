; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_pmcallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_pmcallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc = type { %struct.TYPE_4__, i32, i32, i32, %struct.pmc_owner* }
%struct.TYPE_4__ = type { i32 }
%struct.pmc_owner = type { i32 }
%struct.pmc_soft = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LOG = common dso_local global i32 0, align 4
@ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pm=%p\00", align 1
@PMC_CLASS_SOFT = common dso_local global i64 0, align 8
@PMCALLOCATEDYN = common dso_local global i32 0, align 4
@PMC_NAME_MAX = common dso_local global i32 0, align 4
@PMCALLOCATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmclog_process_pmcallocate(%struct.pmc* %0) #0 {
  %2 = alloca %struct.pmc*, align 8
  %3 = alloca %struct.pmc_owner*, align 8
  %4 = alloca %struct.pmc_soft*, align 8
  store %struct.pmc* %0, %struct.pmc** %2, align 8
  %5 = load %struct.pmc*, %struct.pmc** %2, align 8
  %6 = getelementptr inbounds %struct.pmc, %struct.pmc* %5, i32 0, i32 4
  %7 = load %struct.pmc_owner*, %struct.pmc_owner** %6, align 8
  store %struct.pmc_owner* %7, %struct.pmc_owner** %3, align 8
  %8 = load i32, i32* @LOG, align 4
  %9 = load i32, i32* @ALL, align 4
  %10 = load %struct.pmc*, %struct.pmc** %2, align 8
  %11 = call i32 @PMCDBG1(i32 %8, i32 %9, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.pmc* %10)
  %12 = load %struct.pmc*, %struct.pmc** %2, align 8
  %13 = call i64 @PMC_TO_CLASS(%struct.pmc* %12)
  %14 = load i64, i64* @PMC_CLASS_SOFT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %1
  %17 = load %struct.pmc_owner*, %struct.pmc_owner** %3, align 8
  %18 = load i32, i32* @PMCALLOCATEDYN, align 4
  %19 = call i32 @PMCLOG_RESERVE(%struct.pmc_owner* %17, i32 %18, i32 4)
  %20 = load %struct.pmc*, %struct.pmc** %2, align 8
  %21 = getelementptr inbounds %struct.pmc, %struct.pmc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PMCLOG_EMIT32(i32 %22)
  %24 = load %struct.pmc*, %struct.pmc** %2, align 8
  %25 = getelementptr inbounds %struct.pmc, %struct.pmc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @PMCLOG_EMIT32(i32 %26)
  %28 = load %struct.pmc*, %struct.pmc** %2, align 8
  %29 = getelementptr inbounds %struct.pmc, %struct.pmc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PMCLOG_EMIT32(i32 %30)
  %32 = call i32 @PMCLOG_EMIT32(i32 0)
  %33 = load %struct.pmc*, %struct.pmc** %2, align 8
  %34 = getelementptr inbounds %struct.pmc, %struct.pmc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PMCLOG_EMIT64(i32 %36)
  %38 = load %struct.pmc*, %struct.pmc** %2, align 8
  %39 = getelementptr inbounds %struct.pmc, %struct.pmc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.pmc_soft* @pmc_soft_ev_acquire(i32 %40)
  store %struct.pmc_soft* %41, %struct.pmc_soft** %4, align 8
  %42 = load %struct.pmc_soft*, %struct.pmc_soft** %4, align 8
  %43 = icmp ne %struct.pmc_soft* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %16
  %45 = load %struct.pmc_soft*, %struct.pmc_soft** %4, align 8
  %46 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PMC_NAME_MAX, align 4
  %50 = call i32 @PMCLOG_EMITSTRING(i32 %48, i32 %49)
  br label %54

51:                                               ; preds = %16
  %52 = load i32, i32* @PMC_NAME_MAX, align 4
  %53 = call i32 @PMCLOG_EMITNULLSTRING(i32 %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.pmc_soft*, %struct.pmc_soft** %4, align 8
  %56 = call i32 @pmc_soft_ev_release(%struct.pmc_soft* %55)
  %57 = load %struct.pmc_owner*, %struct.pmc_owner** %3, align 8
  %58 = call i32 @PMCLOG_DESPATCH_SYNC(%struct.pmc_owner* %57)
  br label %83

59:                                               ; preds = %1
  %60 = load %struct.pmc_owner*, %struct.pmc_owner** %3, align 8
  %61 = load i32, i32* @PMCALLOCATE, align 4
  %62 = call i32 @PMCLOG_RESERVE(%struct.pmc_owner* %60, i32 %61, i32 4)
  %63 = load %struct.pmc*, %struct.pmc** %2, align 8
  %64 = getelementptr inbounds %struct.pmc, %struct.pmc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PMCLOG_EMIT32(i32 %65)
  %67 = load %struct.pmc*, %struct.pmc** %2, align 8
  %68 = getelementptr inbounds %struct.pmc, %struct.pmc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PMCLOG_EMIT32(i32 %69)
  %71 = load %struct.pmc*, %struct.pmc** %2, align 8
  %72 = getelementptr inbounds %struct.pmc, %struct.pmc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PMCLOG_EMIT32(i32 %73)
  %75 = call i32 @PMCLOG_EMIT32(i32 0)
  %76 = load %struct.pmc*, %struct.pmc** %2, align 8
  %77 = getelementptr inbounds %struct.pmc, %struct.pmc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PMCLOG_EMIT64(i32 %79)
  %81 = load %struct.pmc_owner*, %struct.pmc_owner** %3, align 8
  %82 = call i32 @PMCLOG_DESPATCH_SYNC(%struct.pmc_owner* %81)
  br label %83

83:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @PMCDBG1(i32, i32, i32, i8*, %struct.pmc*) #1

declare dso_local i64 @PMC_TO_CLASS(%struct.pmc*) #1

declare dso_local i32 @PMCLOG_RESERVE(%struct.pmc_owner*, i32, i32) #1

declare dso_local i32 @PMCLOG_EMIT32(i32) #1

declare dso_local i32 @PMCLOG_EMIT64(i32) #1

declare dso_local %struct.pmc_soft* @pmc_soft_ev_acquire(i32) #1

declare dso_local i32 @PMCLOG_EMITSTRING(i32, i32) #1

declare dso_local i32 @PMCLOG_EMITNULLSTRING(i32) #1

declare dso_local i32 @pmc_soft_ev_release(%struct.pmc_soft*) #1

declare dso_local i32 @PMCLOG_DESPATCH_SYNC(%struct.pmc_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
