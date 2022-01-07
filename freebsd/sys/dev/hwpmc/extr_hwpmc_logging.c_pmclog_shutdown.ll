; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pmclog_buffer = type { i32 }

@pmc_kthread_mtx = common dso_local global i32 0, align 4
@vm_ndomains = common dso_local global i32 0, align 4
@pmc_dom_hdrs = common dso_local global %struct.TYPE_2__** null, align 8
@plb_next = common dso_local global i32 0, align 4
@M_PMC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmclog_shutdown() #0 {
  %1 = alloca %struct.pmclog_buffer*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @mtx_destroy(i32* @pmc_kthread_mtx)
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %43, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @vm_ndomains, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %18, %8
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pmc_dom_hdrs, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call %struct.pmclog_buffer* @TAILQ_FIRST(i32* %15)
  store %struct.pmclog_buffer* %16, %struct.pmclog_buffer** %1, align 8
  %17 = icmp ne %struct.pmclog_buffer* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %9
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pmc_dom_hdrs, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %1, align 8
  %26 = load i32, i32* @plb_next, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* %24, %struct.pmclog_buffer* %25, i32 %26)
  %28 = load %struct.pmclog_buffer*, %struct.pmclog_buffer** %1, align 8
  %29 = getelementptr inbounds %struct.pmclog_buffer, %struct.pmclog_buffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @M_PMC, align 4
  %32 = call i32 @free(i32 %30, i32 %31)
  br label %9

33:                                               ; preds = %9
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pmc_dom_hdrs, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @M_PMC, align 4
  %42 = call i32 @free(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %4

46:                                               ; preds = %4
  ret void
}

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local %struct.pmclog_buffer* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pmclog_buffer*, i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
