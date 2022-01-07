; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_startup3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_startup3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zone_alloc_counters = common dso_local global i32 0, align 4
@uma_callout = common dso_local global i32 0, align 4
@UMA_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@uma_timeout = common dso_local global i32 0, align 4
@BOOT_RUNNING = common dso_local global i32 0, align 4
@booted = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@dbg_divisor = common dso_local global i32 0, align 4
@uma_dbg_cnt = common dso_local global i8* null, align 8
@uma_skip_cnt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uma_startup3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uma_startup3() #0 {
  %1 = load i32, i32* @zone_alloc_counters, align 4
  %2 = call i32 @zone_foreach(i32 %1)
  %3 = call i32 @callout_init(i32* @uma_callout, i32 1)
  %4 = load i32, i32* @UMA_TIMEOUT, align 4
  %5 = load i32, i32* @hz, align 4
  %6 = mul nsw i32 %4, %5
  %7 = load i32, i32* @uma_timeout, align 4
  %8 = call i32 @callout_reset(i32* @uma_callout, i32 %6, i32 %7, i32* null)
  %9 = load i32, i32* @BOOT_RUNNING, align 4
  store i32 %9, i32* @booted, align 4
  ret void
}

declare dso_local i32 @zone_foreach(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
