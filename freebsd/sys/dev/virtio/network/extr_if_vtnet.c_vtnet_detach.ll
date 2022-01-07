; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32*, %struct.ifnet*, i32, i32*, i32*, i32 }
%struct.ifnet = type { i32 }

@vlan_config = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtnet_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vtnet_softc* @device_get_softc(i32 %5)
  store %struct.vtnet_softc* %6, %struct.vtnet_softc** %3, align 8
  %7 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %7, i32 0, i32 1
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_attached(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %15 = call i32 @VTNET_CORE_LOCK(%struct.vtnet_softc* %14)
  %16 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %17 = call i32 @vtnet_stop(%struct.vtnet_softc* %16)
  %18 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %19 = call i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc* %18)
  %20 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %20, i32 0, i32 5
  %22 = call i32 @callout_drain(i32* %21)
  %23 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %24 = call i32 @vtnet_drain_taskqueues(%struct.vtnet_softc* %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = call i32 @ether_ifdetach(%struct.ifnet* %25)
  br label %27

27:                                               ; preds = %13, %1
  %28 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %29 = call i32 @vtnet_free_taskqueues(%struct.vtnet_softc* %28)
  %30 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %31 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* @vlan_config, align 4
  %36 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %37 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @EVENTHANDLER_DEREGISTER(i32 %35, i32* %38)
  %40 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %41 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %27
  %43 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, i32* @vlan_unconfig, align 4
  %49 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %50 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @EVENTHANDLER_DEREGISTER(i32 %48, i32* %51)
  %53 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %54 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %57 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %56, i32 0, i32 2
  %58 = call i32 @ifmedia_removeall(i32* %57)
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = icmp ne %struct.ifnet* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = call i32 @if_free(%struct.ifnet* %62)
  %64 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %65 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %64, i32 0, i32 1
  store %struct.ifnet* null, %struct.ifnet** %65, align 8
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %68 = call i32 @vtnet_free_rxtx_queues(%struct.vtnet_softc* %67)
  %69 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %70 = call i32 @vtnet_free_rx_filters(%struct.vtnet_softc* %69)
  %71 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %72 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %77 = call i32 @vtnet_free_ctrl_vq(%struct.vtnet_softc* %76)
  br label %78

78:                                               ; preds = %75, %66
  %79 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %80 = call i32 @VTNET_CORE_LOCK_DESTROY(%struct.vtnet_softc* %79)
  ret i32 0
}

declare dso_local %struct.vtnet_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @VTNET_CORE_LOCK(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_stop(%struct.vtnet_softc*) #1

declare dso_local i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @vtnet_drain_taskqueues(%struct.vtnet_softc*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @vtnet_free_taskqueues(%struct.vtnet_softc*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @vtnet_free_rxtx_queues(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_free_rx_filters(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_free_ctrl_vq(%struct.vtnet_softc*) #1

declare dso_local i32 @VTNET_CORE_LOCK_DESTROY(%struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
