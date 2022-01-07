; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@VTNET_CSUM_OFFLOAD = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@VTNET_CSUM_OFFLOAD_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_IP_TSO = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@VTNET_FLAG_CTRL_VQ = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_softc*)* @vtnet_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_reinit(%struct.vtnet_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %3, align 8
  %6 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %6, i32 0, i32 2
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = call i32 @IF_LLADDR(%struct.ifnet* %9)
  %11 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %15 = call i32 @bcopy(i32 %10, i32 %13, i32 %14)
  %16 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %17 = call i32 @vtnet_set_hwaddr(%struct.vtnet_softc* %16)
  %18 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %19 = call i32 @vtnet_set_active_vq_pairs(%struct.vtnet_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFCAP_TXCSUM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @VTNET_CSUM_OFFLOAD, align 4
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @VTNET_CSUM_OFFLOAD_IPV6, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFCAP_TSO4, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @CSUM_IP_TSO, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFCAP_TSO6, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @CSUM_IP6_TSO, align 4
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %75 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @VTNET_FLAG_CTRL_VQ, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %82 = call i32 @vtnet_init_rx_filters(%struct.vtnet_softc* %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %85 = call i32 @vtnet_init_rxtx_queues(%struct.vtnet_softc* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %98

90:                                               ; preds = %83
  %91 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %92 = call i32 @vtnet_enable_interrupts(%struct.vtnet_softc* %91)
  %93 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %90, %88
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @vtnet_set_hwaddr(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_set_active_vq_pairs(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_init_rx_filters(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_init_rxtx_queues(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_enable_interrupts(%struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
