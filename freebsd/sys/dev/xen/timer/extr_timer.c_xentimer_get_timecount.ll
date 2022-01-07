; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/timer/extr_timer.c_xentimer_get_timecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/timer/extr_timer.c_xentimer_get_timecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { i32 }

@vcpu_info = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timecounter*)* @xentimer_get_timecount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xentimer_get_timecount(%struct.timecounter* %0) #0 {
  %2 = alloca %struct.timecounter*, align 8
  %3 = alloca i32, align 4
  store %struct.timecounter* %0, %struct.timecounter** %2, align 8
  %4 = load i32, i32* @vcpu_info, align 4
  %5 = call i32 @DPCPU_GET(i32 %4)
  %6 = call i32 @xen_fetch_vcpu_time(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @UINT32_MAX, align 4
  %9 = and i32 %7, %8
  ret i32 %9
}

declare dso_local i32 @xen_fetch_vcpu_time(i32) #1

declare dso_local i32 @DPCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
