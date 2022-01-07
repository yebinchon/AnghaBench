; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_req_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_req_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { i32 }
%struct.vmbus_chanmsg_chrequest = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vmbus_msghc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@VMBUS_CHANMSG_TYPE_CHREQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_softc*)* @vmbus_req_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_req_channels(%struct.vmbus_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_softc*, align 8
  %4 = alloca %struct.vmbus_chanmsg_chrequest*, align 8
  %5 = alloca %struct.vmbus_msghc*, align 8
  %6 = alloca i32, align 4
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %3, align 8
  %7 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %8 = call %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc* %7, i32 4)
  store %struct.vmbus_msghc* %8, %struct.vmbus_msghc** %5, align 8
  %9 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %5, align 8
  %10 = icmp eq %struct.vmbus_msghc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %5, align 8
  %15 = call %struct.vmbus_chanmsg_chrequest* @vmbus_msghc_dataptr(%struct.vmbus_msghc* %14)
  store %struct.vmbus_chanmsg_chrequest* %15, %struct.vmbus_chanmsg_chrequest** %4, align 8
  %16 = load i32, i32* @VMBUS_CHANMSG_TYPE_CHREQUEST, align 4
  %17 = load %struct.vmbus_chanmsg_chrequest*, %struct.vmbus_chanmsg_chrequest** %4, align 8
  %18 = getelementptr inbounds %struct.vmbus_chanmsg_chrequest, %struct.vmbus_chanmsg_chrequest* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %5, align 8
  %21 = call i32 @vmbus_msghc_exec_noresult(%struct.vmbus_msghc* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %23 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %5, align 8
  %24 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %22, %struct.vmbus_msghc* %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc*, i32) #1

declare dso_local %struct.vmbus_chanmsg_chrequest* @vmbus_msghc_dataptr(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_exec_noresult(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_put(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
