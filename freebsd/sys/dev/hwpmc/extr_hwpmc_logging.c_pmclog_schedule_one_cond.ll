; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_schedule_one_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_schedule_one_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_owner = type { %struct.pmclog_buffer** }
%struct.pmclog_buffer = type { i64, i64 }

@curcpu = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PMC_FN_DO_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmc_owner*)* @pmclog_schedule_one_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmclog_schedule_one_cond(%struct.pmc_owner* %0) #0 {
  %2 = alloca %struct.pmc_owner*, align 8
  %3 = alloca %struct.pmclog_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.pmc_owner* %0, %struct.pmc_owner** %2, align 8
  %5 = call i32 (...) @spinlock_enter()
  %6 = load i32, i32* @curcpu, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @PMC_CPU_HAS_SAMPLES(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @curthread, align 4
  %12 = load i32, i32* @PMC_FN_DO_SAMPLES, align 4
  %13 = call i32 @PMC_CALL_HOOK_UNLOCKED(i32 %11, i32 %12, i32* null)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %16 = getelementptr inbounds %struct.pmc_owner, %struct.pmc_owner* %15, i32 0, i32 0
  %17 = load %struct.pmclog_buffer**, %struct.pmclog_buffer*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pmclog_buffer*, %struct.pmclog_buffer** %17, i64 %19
  %21 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %20, align 8
  store %struct.pmclog_buffer* %21, %struct.pmclog_buffer** %3, align 8
  %22 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %3, align 8
  %23 = icmp ne %struct.pmclog_buffer* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %14
  %25 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.pmclog_buffer, %struct.pmclog_buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.pmclog_buffer, %struct.pmclog_buffer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.pmc_owner*, %struct.pmc_owner** %2, align 8
  %34 = call i32 @pmclog_schedule_io(%struct.pmc_owner* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %24, %14
  %36 = call i32 (...) @spinlock_exit()
  ret void
}

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i64 @PMC_CPU_HAS_SAMPLES(i32) #1

declare dso_local i32 @PMC_CALL_HOOK_UNLOCKED(i32, i32, i32*) #1

declare dso_local i32 @pmclog_schedule_io(%struct.pmc_owner*, i32) #1

declare dso_local i32 @spinlock_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
