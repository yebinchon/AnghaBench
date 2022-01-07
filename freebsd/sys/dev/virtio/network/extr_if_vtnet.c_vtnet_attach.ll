; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32, i32 }

@vtnet_feature_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot allocate Rx filters\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot allocate queues\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot allocate virtqueues\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot setup interface\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"cannot setup virtqueue interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtnet_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vtnet_softc* @device_get_softc(i32 %5)
  store %struct.vtnet_softc* %6, %struct.vtnet_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @vtnet_feature_desc, align 4
  %12 = call i32 @virtio_set_feature_desc(i32 %10, i32 %11)
  %13 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %14 = call i32 @VTNET_CORE_LOCK_INIT(%struct.vtnet_softc* %13)
  %15 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %15, i32 0, i32 1
  %17 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %18 = call i32 @VTNET_CORE_MTX(%struct.vtnet_softc* %17)
  %19 = call i32 @callout_init_mtx(i32* %16, i32 %18, i32 0)
  %20 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %21 = call i32 @vtnet_setup_sysctl(%struct.vtnet_softc* %20)
  %22 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %23 = call i32 @vtnet_setup_features(%struct.vtnet_softc* %22)
  %24 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %25 = call i32 @vtnet_alloc_rx_filters(%struct.vtnet_softc* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %71

31:                                               ; preds = %1
  %32 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %33 = call i32 @vtnet_alloc_rxtx_queues(%struct.vtnet_softc* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %71

39:                                               ; preds = %31
  %40 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %41 = call i32 @vtnet_alloc_virtqueues(%struct.vtnet_softc* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %71

47:                                               ; preds = %39
  %48 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %49 = call i32 @vtnet_setup_interface(%struct.vtnet_softc* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %71

55:                                               ; preds = %47
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @INTR_TYPE_NET, align 4
  %58 = call i32 @virtio_setup_intr(i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %65 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ether_ifdetach(i32 %66)
  br label %71

68:                                               ; preds = %55
  %69 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %70 = call i32 @vtnet_start_taskqueues(%struct.vtnet_softc* %69)
  br label %71

71:                                               ; preds = %68, %61, %52, %44, %36, %28
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @vtnet_detach(i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.vtnet_softc* @device_get_softc(i32) #1

declare dso_local i32 @virtio_set_feature_desc(i32, i32) #1

declare dso_local i32 @VTNET_CORE_LOCK_INIT(%struct.vtnet_softc*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32, i32) #1

declare dso_local i32 @VTNET_CORE_MTX(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_setup_sysctl(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_setup_features(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_alloc_rx_filters(%struct.vtnet_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vtnet_alloc_rxtx_queues(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_alloc_virtqueues(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_setup_interface(%struct.vtnet_softc*) #1

declare dso_local i32 @virtio_setup_intr(i32, i32) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @vtnet_start_taskqueues(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
