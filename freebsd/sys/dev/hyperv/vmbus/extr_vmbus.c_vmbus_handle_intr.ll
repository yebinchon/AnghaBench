; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_handle_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_handle_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }
%struct.vmbus_softc = type { i32 }

@curcpu = common dso_local global i32 0, align 4
@intr_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_handle_intr(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.vmbus_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %5 = call %struct.vmbus_softc* (...) @vmbus_get_softc()
  store %struct.vmbus_softc* %5, %struct.vmbus_softc** %3, align 8
  %6 = load i32, i32* @curcpu, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @critical_enter()
  %8 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %9 = load i32, i32* @intr_cnt, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @VMBUS_PCPU_GET(%struct.vmbus_softc* %8, i32 %9, i32 %10)
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %15 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @vmbus_handle_intr1(%struct.vmbus_softc* %14, %struct.trapframe* %15, i32 %16)
  %18 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local %struct.vmbus_softc* @vmbus_get_softc(...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32* @VMBUS_PCPU_GET(%struct.vmbus_softc*, i32, i32) #1

declare dso_local i32 @vmbus_handle_intr1(%struct.vmbus_softc*, %struct.trapframe*, i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
