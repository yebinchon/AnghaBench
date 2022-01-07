; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32*, i32, %struct.vmbus_softc* }
%struct.vmbus_softc = type { i32 }

@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"device_add_child for chan%u failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_add_child(%struct.vmbus_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.vmbus_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 2
  %8 = load %struct.vmbus_softc*, %struct.vmbus_softc** %7, align 8
  store %struct.vmbus_softc* %8, %struct.vmbus_softc** %4, align 8
  %9 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %10 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = call i32 @mtx_lock(i32* @Giant)
  %13 = load i32, i32* %5, align 4
  %14 = call i32* @device_add_child(i32 %13, i32* null, i32 -1)
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %16 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = call i32 @mtx_unlock(i32* @Giant)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %25 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %31 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %34 = call i32 @device_set_ivars(i32* %32, %struct.vmbus_channel* %33)
  %35 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %36 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @device_probe_and_attach(i32* %37)
  %39 = call i32 @mtx_unlock(i32* @Giant)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %29, %21
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.vmbus_channel*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
