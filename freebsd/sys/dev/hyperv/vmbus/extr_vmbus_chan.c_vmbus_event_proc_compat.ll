; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_event_proc_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_event_proc_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { i32 }
%struct.vmbus_evtflags = type { i32* }

@event_flags = common dso_local global i32 0, align 4
@VMBUS_SINT_MESSAGE = common dso_local global i32 0, align 4
@VMBUS_CHAN_MAX_COMPAT = common dso_local global i32 0, align 4
@VMBUS_EVTFLAG_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_event_proc_compat(%struct.vmbus_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.vmbus_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmbus_evtflags*, align 8
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %7 = load i32, i32* @event_flags, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.vmbus_evtflags* @VMBUS_PCPU_GET(%struct.vmbus_softc* %6, i32 %7, i32 %8)
  %10 = load i32, i32* @VMBUS_SINT_MESSAGE, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.vmbus_evtflags, %struct.vmbus_evtflags* %9, i64 %11
  store %struct.vmbus_evtflags* %12, %struct.vmbus_evtflags** %5, align 8
  %13 = load %struct.vmbus_evtflags*, %struct.vmbus_evtflags** %5, align 8
  %14 = getelementptr inbounds %struct.vmbus_evtflags, %struct.vmbus_evtflags* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i64 @atomic_testandclear_long(i32* %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %21 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VMBUS_CHAN_MAX_COMPAT, align 4
  %25 = load i32, i32* @VMBUS_EVTFLAG_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = call i32 @vmbus_event_flags_proc(%struct.vmbus_softc* %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %19, %2
  ret void
}

declare dso_local %struct.vmbus_evtflags* @VMBUS_PCPU_GET(%struct.vmbus_softc*, i32, i32) #1

declare dso_local i64 @atomic_testandclear_long(i32*, i32) #1

declare dso_local i32 @vmbus_event_flags_proc(%struct.vmbus_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
