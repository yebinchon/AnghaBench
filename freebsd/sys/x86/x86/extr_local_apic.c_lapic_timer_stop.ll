; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_timer_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapic = type { i64, i32, i32 }

@LAT_MODE_DEADLINE = common dso_local global i64 0, align 8
@MSR_TSC_DEADLINE = common dso_local global i32 0, align 4
@APIC_LVTT_TM = common dso_local global i32 0, align 4
@APIC_LVT_M = common dso_local global i32 0, align 4
@LAPIC_LVT_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lapic*)* @lapic_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapic_timer_stop(%struct.lapic* %0) #0 {
  %2 = alloca %struct.lapic*, align 8
  %3 = alloca i32, align 4
  store %struct.lapic* %0, %struct.lapic** %2, align 8
  %4 = load %struct.lapic*, %struct.lapic** %2, align 8
  %5 = getelementptr inbounds %struct.lapic, %struct.lapic* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LAT_MODE_DEADLINE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @MSR_TSC_DEADLINE, align 4
  %11 = call i32 @wrmsr(i32 %10, i32 0)
  %12 = call i32 (...) @mfence()
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.lapic*, %struct.lapic** %2, align 8
  %15 = getelementptr inbounds %struct.lapic, %struct.lapic* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @APIC_LVTT_TM, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @APIC_LVT_M, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.lapic*, %struct.lapic** %2, align 8
  %26 = getelementptr inbounds %struct.lapic, %struct.lapic* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @LAPIC_LVT_TIMER, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @lapic_write32(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @mfence(...) #1

declare dso_local i32 @lapic_write32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
