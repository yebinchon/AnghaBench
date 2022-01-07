; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_handle_intr1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_handle_intr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { i32 (%struct.vmbus_softc*, i32)* }
%struct.trapframe = type { i32 }
%struct.vmbus_message = type { i64, i32 }

@message = common dso_local global i32 0, align 4
@VMBUS_SINT_TIMER = common dso_local global i32 0, align 4
@HYPERV_MSGTYPE_TIMER_EXPIRED = common dso_local global i64 0, align 8
@HYPERV_MSGTYPE_NONE = common dso_local global i64 0, align 8
@VMBUS_MSGFLAG_PENDING = common dso_local global i32 0, align 4
@MSR_HV_EOM = common dso_local global i32 0, align 4
@VMBUS_SINT_MESSAGE = common dso_local global i32 0, align 4
@message_tq = common dso_local global i32 0, align 4
@message_task = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_softc*, %struct.trapframe*, i32)* @vmbus_handle_intr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_handle_intr1(%struct.vmbus_softc* %0, %struct.trapframe* %1, i32 %2) #0 {
  %4 = alloca %struct.vmbus_softc*, align 8
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmbus_message*, align 8
  %8 = alloca %struct.vmbus_message*, align 8
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %4, align 8
  store %struct.trapframe* %1, %struct.trapframe** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %10 = load i32, i32* @message, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.vmbus_message* @VMBUS_PCPU_GET(%struct.vmbus_softc* %9, i32 %10, i32 %11)
  store %struct.vmbus_message* %12, %struct.vmbus_message** %8, align 8
  %13 = load %struct.vmbus_message*, %struct.vmbus_message** %8, align 8
  %14 = load i32, i32* @VMBUS_SINT_TIMER, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.vmbus_message, %struct.vmbus_message* %13, i64 %15
  store %struct.vmbus_message* %16, %struct.vmbus_message** %7, align 8
  %17 = load %struct.vmbus_message*, %struct.vmbus_message** %7, align 8
  %18 = getelementptr inbounds %struct.vmbus_message, %struct.vmbus_message* %17, i32 0, i32 0
  %19 = load volatile i64, i64* %18, align 8
  %20 = load i64, i64* @HYPERV_MSGTYPE_TIMER_EXPIRED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load i64, i64* @HYPERV_MSGTYPE_NONE, align 8
  %24 = load %struct.vmbus_message*, %struct.vmbus_message** %7, align 8
  %25 = getelementptr inbounds %struct.vmbus_message, %struct.vmbus_message* %24, i32 0, i32 0
  store volatile i64 %23, i64* %25, align 8
  %26 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %27 = call i32 @vmbus_et_intr(%struct.trapframe* %26)
  %28 = call i32 (...) @mb()
  %29 = load %struct.vmbus_message*, %struct.vmbus_message** %7, align 8
  %30 = getelementptr inbounds %struct.vmbus_message, %struct.vmbus_message* %29, i32 0, i32 1
  %31 = load volatile i32, i32* %30, align 8
  %32 = load i32, i32* @VMBUS_MSGFLAG_PENDING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @MSR_HV_EOM, align 4
  %37 = call i32 @wrmsr(i32 %36, i32 0)
  br label %38

38:                                               ; preds = %35, %22
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %41 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %40, i32 0, i32 0
  %42 = load i32 (%struct.vmbus_softc*, i32)*, i32 (%struct.vmbus_softc*, i32)** %41, align 8
  %43 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 %42(%struct.vmbus_softc* %43, i32 %44)
  %46 = load %struct.vmbus_message*, %struct.vmbus_message** %8, align 8
  %47 = load i32, i32* @VMBUS_SINT_MESSAGE, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.vmbus_message, %struct.vmbus_message* %46, i64 %48
  store %struct.vmbus_message* %49, %struct.vmbus_message** %7, align 8
  %50 = load %struct.vmbus_message*, %struct.vmbus_message** %7, align 8
  %51 = getelementptr inbounds %struct.vmbus_message, %struct.vmbus_message* %50, i32 0, i32 0
  %52 = load volatile i64, i64* %51, align 8
  %53 = load i64, i64* @HYPERV_MSGTYPE_NONE, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @__predict_false(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %39
  %59 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %60 = load i32, i32* @message_tq, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call %struct.vmbus_message* @VMBUS_PCPU_GET(%struct.vmbus_softc* %59, i32 %60, i32 %61)
  %63 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %64 = load i32, i32* @message_task, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @VMBUS_PCPU_PTR(%struct.vmbus_softc* %63, i32 %64, i32 %65)
  %67 = call i32 @taskqueue_enqueue(%struct.vmbus_message* %62, i32 %66)
  br label %68

68:                                               ; preds = %58, %39
  %69 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %69
}

declare dso_local %struct.vmbus_message* @VMBUS_PCPU_GET(%struct.vmbus_softc*, i32, i32) #1

declare dso_local i32 @vmbus_et_intr(%struct.trapframe*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @taskqueue_enqueue(%struct.vmbus_message*, i32) #1

declare dso_local i32 @VMBUS_PCPU_PTR(%struct.vmbus_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
