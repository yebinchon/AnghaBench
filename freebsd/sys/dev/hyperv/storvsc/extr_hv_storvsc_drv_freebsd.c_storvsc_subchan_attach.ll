; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_subchan_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_subchan_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vmbus_channel = type { i32 }
%struct.vmstor_chan_props = type { i32 }

@hv_storvsc_on_channel_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.storvsc_softc*, %struct.vmbus_channel*)* @storvsc_subchan_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_subchan_attach(%struct.storvsc_softc* %0, %struct.vmbus_channel* %1) #0 {
  %3 = alloca %struct.storvsc_softc*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca %struct.vmstor_chan_props, align 4
  %6 = alloca i32, align 4
  store %struct.storvsc_softc* %0, %struct.storvsc_softc** %3, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @memset(%struct.vmstor_chan_props* %5, i32 0, i32 4)
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %9 = call i32 @vmbus_chan_cpu_rr(%struct.vmbus_channel* %8)
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %11 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %struct.vmstor_chan_props* %5 to i8*
  %22 = load i32, i32* @hv_storvsc_on_channel_callback, align 4
  %23 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %24 = call i32 @vmbus_chan_open(%struct.vmbus_channel* %10, i32 %15, i32 %20, i8* %21, i32 4, i32 %22, %struct.storvsc_softc* %23)
  store i32 %24, i32* %6, align 4
  ret void
}

declare dso_local i32 @memset(%struct.vmstor_chan_props*, i32, i32) #1

declare dso_local i32 @vmbus_chan_cpu_rr(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_chan_open(%struct.vmbus_channel*, i32, i32, i8*, i32, i32, %struct.storvsc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
