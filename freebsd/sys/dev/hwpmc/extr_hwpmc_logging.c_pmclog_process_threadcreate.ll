; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_threadcreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_threadcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_owner = type { i32 }
%struct.thread = type { i32, i32, %struct.proc* }
%struct.proc = type { i32, i32 }

@THR_CREATE = common dso_local global i32 0, align 4
@MAXCOMLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmclog_process_threadcreate(%struct.pmc_owner* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca %struct.pmc_owner*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  store %struct.pmc_owner* %0, %struct.pmc_owner** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.thread*, %struct.thread** %5, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 2
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %15 = load i32, i32* @THR_CREATE, align 4
  %16 = call i32 @PMCLOG_RESERVE(%struct.pmc_owner* %14, i32 %15, i32 4)
  %17 = load %struct.thread*, %struct.thread** %5, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PMCLOG_EMIT32(i32 %19)
  %21 = load %struct.proc*, %struct.proc** %7, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PMCLOG_EMIT32(i32 %23)
  %25 = load %struct.proc*, %struct.proc** %7, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PMCLOG_EMIT32(i32 %27)
  %29 = call i32 @PMCLOG_EMIT32(i32 0)
  %30 = load %struct.thread*, %struct.thread** %5, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @MAXCOMLEN, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i32 @PMCLOG_EMITSTRING(i32 %32, i64 %34)
  %36 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %37 = call i32 @PMCLOG_DESPATCH_SYNC(%struct.pmc_owner* %36)
  br label %63

38:                                               ; preds = %3
  %39 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %40 = load i32, i32* @THR_CREATE, align 4
  %41 = call i32 @PMCLOG_RESERVE(%struct.pmc_owner* %39, i32 %40, i32 4)
  %42 = load %struct.thread*, %struct.thread** %5, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PMCLOG_EMIT32(i32 %44)
  %46 = load %struct.proc*, %struct.proc** %7, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PMCLOG_EMIT32(i32 %48)
  %50 = load %struct.proc*, %struct.proc** %7, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PMCLOG_EMIT32(i32 %52)
  %54 = call i32 @PMCLOG_EMIT32(i32 0)
  %55 = load %struct.thread*, %struct.thread** %5, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* @MAXCOMLEN, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @PMCLOG_EMITSTRING(i32 %57, i64 %59)
  %61 = load %struct.pmc_owner*, %struct.pmc_owner** %4, align 8
  %62 = call i32 @PMCLOG_DESPATCH(%struct.pmc_owner* %61)
  br label %63

63:                                               ; preds = %38, %13
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
