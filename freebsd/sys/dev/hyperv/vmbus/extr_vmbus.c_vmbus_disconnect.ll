; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { i32 }
%struct.vmbus_chanmsg_disconnect = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vmbus_msghc = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"can not get msg hypercall for disconnect\0A\00", align 1
@VMBUS_CHANMSG_TYPE_DISCONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"disconnect msg hypercall failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_softc*)* @vmbus_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_disconnect(%struct.vmbus_softc* %0) #0 {
  %2 = alloca %struct.vmbus_softc*, align 8
  %3 = alloca %struct.vmbus_chanmsg_disconnect*, align 8
  %4 = alloca %struct.vmbus_msghc*, align 8
  %5 = alloca i32, align 4
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %2, align 8
  %6 = load %struct.vmbus_softc*, %struct.vmbus_softc** %2, align 8
  %7 = call %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc* %6, i32 4)
  store %struct.vmbus_msghc* %7, %struct.vmbus_msghc** %4, align 8
  %8 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %4, align 8
  %9 = icmp eq %struct.vmbus_msghc* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.vmbus_softc*, %struct.vmbus_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %4, align 8
  %17 = call %struct.vmbus_chanmsg_disconnect* @vmbus_msghc_dataptr(%struct.vmbus_msghc* %16)
  store %struct.vmbus_chanmsg_disconnect* %17, %struct.vmbus_chanmsg_disconnect** %3, align 8
  %18 = load i32, i32* @VMBUS_CHANMSG_TYPE_DISCONNECT, align 4
  %19 = load %struct.vmbus_chanmsg_disconnect*, %struct.vmbus_chanmsg_disconnect** %3, align 8
  %20 = getelementptr inbounds %struct.vmbus_chanmsg_disconnect, %struct.vmbus_chanmsg_disconnect* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %4, align 8
  %23 = call i32 @vmbus_msghc_exec_noresult(%struct.vmbus_msghc* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.vmbus_softc*, %struct.vmbus_softc** %2, align 8
  %25 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %4, align 8
  %26 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %24, %struct.vmbus_msghc* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %15
  %30 = load %struct.vmbus_softc*, %struct.vmbus_softc** %2, align 8
  %31 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %10, %29, %15
  ret void
}

declare dso_local %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.vmbus_chanmsg_disconnect* @vmbus_msghc_dataptr(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_exec_noresult(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_put(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
