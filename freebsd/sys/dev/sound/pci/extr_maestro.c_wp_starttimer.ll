; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_wp_starttimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_wp_starttimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32 }

@PORT_INT_STAT = common dso_local global i32 0, align 4
@PORT_HOSTINT_CTRL = common dso_local global i32 0, align 4
@HOSTINT_CTRL_DSOUND_INT_ENABLED = common dso_local global i32 0, align 4
@WPREG_TIMER_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_info*)* @wp_starttimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wp_starttimer(%struct.agg_info* %0) #0 {
  %2 = alloca %struct.agg_info*, align 8
  store %struct.agg_info* %0, %struct.agg_info** %2, align 8
  %3 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %4 = load i32, i32* @PORT_INT_STAT, align 4
  %5 = call i32 @AGG_WR(%struct.agg_info* %3, i32 %4, i32 1, i32 2)
  %6 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %7 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %8 = load i32, i32* @HOSTINT_CTRL_DSOUND_INT_ENABLED, align 4
  %9 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %10 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %11 = call i32 @AGG_RD(%struct.agg_info* %9, i32 %10, i32 2)
  %12 = or i32 %8, %11
  %13 = call i32 @AGG_WR(%struct.agg_info* %6, i32 %7, i32 %12, i32 2)
  %14 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %15 = load i32, i32* @WPREG_TIMER_START, align 4
  %16 = call i32 @wp_wrreg(%struct.agg_info* %14, i32 %15, i32 1)
  ret void
}

declare dso_local i32 @AGG_WR(%struct.agg_info*, i32, i32, i32) #1

declare dso_local i32 @AGG_RD(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @wp_wrreg(%struct.agg_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
