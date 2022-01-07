; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_process_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_process_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@args = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@FLAG_DO_PRINT = common dso_local global i32 0, align 4
@plugins = common dso_local global i32 0, align 4
@pmcstat_stats = common dso_local global i32 0, align 4
@pmcstat_kernproc = common dso_local global i32 0, align 4
@pmcstat_mergepmc = common dso_local global i32 0, align 4
@pmcstat_npmcs = common dso_local global i32 0, align 4
@ps_samples_period = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmcstat_process_log() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @args, i32 0, i32 0), align 4
  %3 = load i32, i32* @FLAG_DO_PRINT, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @pmcstat_print_log()
  store i32 %7, i32* %1, align 4
  br label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @plugins, align 4
  %10 = load i32, i32* @pmcstat_kernproc, align 4
  %11 = load i32, i32* @pmcstat_mergepmc, align 4
  %12 = call i32 @pmcstat_analyze_log(%struct.TYPE_3__* @args, i32 %9, i32* @pmcstat_stats, i32 %10, i32 %11, i32* @pmcstat_npmcs, i32* @ps_samples_period)
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %8, %6
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @pmcstat_print_log(...) #1

declare dso_local i32 @pmcstat_analyze_log(%struct.TYPE_3__*, i32, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
