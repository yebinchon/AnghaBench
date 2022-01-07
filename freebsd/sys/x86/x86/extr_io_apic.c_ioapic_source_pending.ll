; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_source_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_source_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i32 }
%struct.ioapic_intsrc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intsrc*)* @ioapic_source_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioapic_source_pending(%struct.intsrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intsrc*, align 8
  %4 = alloca %struct.ioapic_intsrc*, align 8
  store %struct.intsrc* %0, %struct.intsrc** %3, align 8
  %5 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %6 = bitcast %struct.intsrc* %5 to %struct.ioapic_intsrc*
  store %struct.ioapic_intsrc* %6, %struct.ioapic_intsrc** %4, align 8
  %7 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %4, align 8
  %8 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.ioapic_intsrc*, %struct.ioapic_intsrc** %4, align 8
  %14 = getelementptr inbounds %struct.ioapic_intsrc, %struct.ioapic_intsrc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @lapic_intr_pending(i64 %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @lapic_intr_pending(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
