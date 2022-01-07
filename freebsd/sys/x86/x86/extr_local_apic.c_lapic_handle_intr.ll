; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_handle_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_handle_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }
%struct.intsrc = type { i32 }

@apic_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapic_handle_intr(i32 %0, %struct.trapframe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.intsrc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %6 = load i32, i32* @apic_id, align 4
  %7 = call i32 @PCPU_GET(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @apic_idt_to_irq(i32 %7, i32 %8)
  %10 = call %struct.intsrc* @intr_lookup_source(i32 %9)
  store %struct.intsrc* %10, %struct.intsrc** %5, align 8
  %11 = load %struct.intsrc*, %struct.intsrc** %5, align 8
  %12 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %13 = call i32 @intr_execute_handlers(%struct.intsrc* %11, %struct.trapframe* %12)
  ret void
}

declare dso_local %struct.intsrc* @intr_lookup_source(i32) #1

declare dso_local i32 @apic_idt_to_irq(i32, i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @intr_execute_handlers(%struct.intsrc*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
