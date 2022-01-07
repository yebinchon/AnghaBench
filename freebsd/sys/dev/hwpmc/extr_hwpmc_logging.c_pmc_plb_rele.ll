; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmc_plb_rele.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmc_plb_rele.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pmclog_buffer = type { i64 }

@pmc_dom_hdrs = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmclog_buffer*)* @pmc_plb_rele to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_plb_rele(%struct.pmclog_buffer* %0) #0 {
  %2 = alloca %struct.pmclog_buffer*, align 8
  store %struct.pmclog_buffer* %0, %struct.pmclog_buffer** %2, align 8
  %3 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pmc_dom_hdrs, align 8
  %4 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.pmclog_buffer, %struct.pmclog_buffer* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %3, i64 %6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock_spin(i32* %9)
  %11 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %2, align 8
  %12 = call i32 @pmc_plb_rele_unlocked(%struct.pmclog_buffer* %11)
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pmc_dom_hdrs, align 8
  %14 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.pmclog_buffer, %struct.pmclog_buffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @mtx_unlock_spin(i32* %19)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @pmc_plb_rele_unlocked(%struct.pmclog_buffer*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
