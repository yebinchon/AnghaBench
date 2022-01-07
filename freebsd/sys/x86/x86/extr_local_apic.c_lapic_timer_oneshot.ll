; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_timer_oneshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_timer_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapic = type { i32, i32, i32 }

@APIC_LVTT_TM = common dso_local global i32 0, align 4
@APIC_LVT_M = common dso_local global i32 0, align 4
@APIC_LVTT_TM_ONE_SHOT = common dso_local global i32 0, align 4
@LAPIC_LVT_TIMER = common dso_local global i32 0, align 4
@LAPIC_ICR_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lapic*)* @lapic_timer_oneshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapic_timer_oneshot(%struct.lapic* %0) #0 {
  %2 = alloca %struct.lapic*, align 8
  %3 = alloca i32, align 4
  store %struct.lapic* %0, %struct.lapic** %2, align 8
  %4 = load %struct.lapic*, %struct.lapic** %2, align 8
  %5 = getelementptr inbounds %struct.lapic, %struct.lapic* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @APIC_LVTT_TM, align 4
  %8 = load i32, i32* @APIC_LVT_M, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @APIC_LVTT_TM_ONE_SHOT, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.lapic*, %struct.lapic** %2, align 8
  %18 = getelementptr inbounds %struct.lapic, %struct.lapic* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @LAPIC_LVT_TIMER, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @lapic_write32(i32 %19, i32 %20)
  %22 = load i32, i32* @LAPIC_ICR_TIMER, align 4
  %23 = load %struct.lapic*, %struct.lapic** %2, align 8
  %24 = getelementptr inbounds %struct.lapic, %struct.lapic* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lapic_write32(i32 %22, i32 %25)
  ret void
}

declare dso_local i32 @lapic_write32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
