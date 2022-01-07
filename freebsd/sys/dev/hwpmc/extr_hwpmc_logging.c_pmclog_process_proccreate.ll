; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_proccreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_proccreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_owner = type { i32 }
%struct.proc = type { i32, i32, i32 }

@PROC_CREATE = common dso_local global i32 0, align 4
@MAXCOMLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmclog_process_proccreate(%struct.pmc_owner* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca %struct.pmc_owner*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  store %struct.pmc_owner* %0, %struct.pmc_owner** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %11 = load i32, i32* @PROC_CREATE, align 4
  %12 = call i32 @PMCLOG_RESERVE(%struct.pmc_owner* %10, i32 %11, i32 4)
  %13 = load %struct.proc*, %struct.proc** %5, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PMCLOG_EMIT32(i32 %15)
  %17 = load %struct.proc*, %struct.proc** %5, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PMCLOG_EMIT32(i32 %19)
  %21 = load %struct.proc*, %struct.proc** %5, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @MAXCOMLEN, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @PMCLOG_EMITSTRING(i32 %23, i64 %25)
  %27 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %28 = call i32 @PMCLOG_DESPATCH_SYNC(%struct.pmc_owner* %27)
  br label %49

29:                                               ; preds = %3
  %30 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %31 = load i32, i32* @PROC_CREATE, align 4
  %32 = call i32 @PMCLOG_RESERVE(%struct.pmc_owner* %30, i32 %31, i32 4)
  %33 = load %struct.proc*, %struct.proc** %5, align 8
  %34 = getelementptr inbounds %struct.proc, %struct.proc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PMCLOG_EMIT32(i32 %35)
  %37 = load %struct.proc*, %struct.proc** %5, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PMCLOG_EMIT32(i32 %39)
  %41 = load %struct.proc*, %struct.proc** %5, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @MAXCOMLEN, align 8
  %45 = add nsw i64 %44, 1
  %46 = call i32 @PMCLOG_EMITSTRING(i32 %43, i64 %45)
  %47 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %48 = call i32 @PMCLOG_DESPATCH(%struct.pmc_owner* %47)
  br label %49

49:                                               ; preds = %29, %9
  ret void
}

declare dso_local i32 @PMCLOG_RESERVE(%struct.pmc_owner*, i32, i32) #1

declare dso_local i32 @PMCLOG_EMIT32(i32) #1

declare dso_local i32 @PMCLOG_EMITSTRING(i32, i64) #1

declare dso_local i32 @PMCLOG_DESPATCH_SYNC(%struct.pmc_owner*) #1

declare dso_local i32 @PMCLOG_DESPATCH(%struct.pmc_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
