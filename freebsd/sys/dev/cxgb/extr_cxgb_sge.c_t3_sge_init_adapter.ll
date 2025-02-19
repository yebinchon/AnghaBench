; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_init_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@TX_RECLAIM_PERIOD = common dso_local global i32 0, align 4
@sge_timer_cb = common dso_local global i32 0, align 4
@sge_slow_intr_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_init_adapter(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %5 = call i32 @callout_init(i32* %4, i32 1)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i32, i32* @TX_RECLAIM_PERIOD, align 4
  %9 = load i32, i32* @sge_timer_cb, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = call i32 @callout_reset(i32* %7, i32 %8, i32 %9, %struct.TYPE_5__* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* @sge_slow_intr_handler, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = call i32 @TASK_INIT(i32* %13, i32 0, i32 %14, %struct.TYPE_5__* %15)
  ret i32 0
}

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
