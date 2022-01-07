; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAPIC_SVR = common dso_local global i32 0, align 4
@APIC_SVR_VECTOR = common dso_local global i32 0, align 4
@APIC_SVR_FOCUS = common dso_local global i32 0, align 4
@APIC_SVR_FEN = common dso_local global i32 0, align 4
@APIC_SVR_SWEN = common dso_local global i32 0, align 4
@APIC_SPURIOUS_INT = common dso_local global i32 0, align 4
@lapic_eoi_suppression = common dso_local global i64 0, align 8
@APIC_SVR_EOI_SUPPRESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lapic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapic_enable() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @LAPIC_SVR, align 4
  %3 = call i32 @lapic_read32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @APIC_SVR_VECTOR, align 4
  %5 = load i32, i32* @APIC_SVR_FOCUS, align 4
  %6 = or i32 %4, %5
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @APIC_SVR_FEN, align 4
  %11 = load i32, i32* @APIC_SVR_SWEN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @APIC_SPURIOUS_INT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %1, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %1, align 4
  %17 = load i64, i64* @lapic_eoi_suppression, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load i32, i32* @APIC_SVR_EOI_SUPPRESSION, align 4
  %21 = load i32, i32* %1, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %19, %0
  %24 = load i32, i32* @LAPIC_SVR, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @lapic_write32(i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @lapic_read32(i32) #1

declare dso_local i32 @lapic_write32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
