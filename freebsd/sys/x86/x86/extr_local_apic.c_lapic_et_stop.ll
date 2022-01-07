; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_et_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_et_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapic = type { i32 }
%struct.eventtimer = type { i32 }

@lapics = common dso_local global %struct.lapic* null, align 8
@apic_id = common dso_local global i32 0, align 4
@LAT_MODE_UNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*)* @lapic_et_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lapic_et_stop(%struct.eventtimer* %0) #0 {
  %2 = alloca %struct.eventtimer*, align 8
  %3 = alloca %struct.lapic*, align 8
  store %struct.eventtimer* %0, %struct.eventtimer** %2, align 8
  %4 = load %struct.lapic*, %struct.lapic** @lapics, align 8
  %5 = load i32, i32* @apic_id, align 4
  %6 = call i64 @PCPU_GET(i32 %5)
  %7 = getelementptr inbounds %struct.lapic, %struct.lapic* %4, i64 %6
  store %struct.lapic* %7, %struct.lapic** %3, align 8
  %8 = load %struct.lapic*, %struct.lapic** %3, align 8
  %9 = call i32 @lapic_timer_stop(%struct.lapic* %8)
  %10 = load i32, i32* @LAT_MODE_UNDEF, align 4
  %11 = load %struct.lapic*, %struct.lapic** %3, align 8
  %12 = getelementptr inbounds %struct.lapic, %struct.lapic* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  ret i32 0
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @lapic_timer_stop(%struct.lapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
