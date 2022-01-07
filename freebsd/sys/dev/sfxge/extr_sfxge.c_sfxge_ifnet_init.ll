; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_ifnet_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_ifnet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sfxge_softc*, i32 }
%struct.sfxge_softc = type { %struct.ifnet*, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@sfxge_if_init = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@sfxge_if_ioctl = common dso_local global i32 0, align 4
@SFXGE_CAP = common dso_local global i32 0, align 4
@SFXGE_CAP_ENABLE = common dso_local global i32 0, align 4
@SFXGE_TSO_MAX_SIZE = common dso_local global i32 0, align 4
@SFXGE_TX_MAPPING_MAX_SEG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@sfxge_if_transmit = common dso_local global i32 0, align 4
@sfxge_if_qflush = common dso_local global i32 0, align 4
@sfxge_get_counter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ifmedia_init\00", align 1
@IFCAP_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.sfxge_softc*)* @sfxge_ifnet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ifnet_init(%struct.ifnet* %0, %struct.sfxge_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.sfxge_softc*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.sfxge_softc* %1, %struct.sfxge_softc** %5, align 8
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %10 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_3__* @efx_nic_cfg_get(i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %6, align 8
  %13 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %14 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %18 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %17, i32 0, i32 0
  store %struct.ifnet* %16, %struct.ifnet** %18, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @device_get_name(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @device_get_unit(i32 %22)
  %24 = call i32 @if_initname(%struct.ifnet* %19, i32 %21, i32 %23)
  %25 = load i32, i32* @sfxge_if_init, align 4
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 12
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 11
  store %struct.sfxge_softc* %28, %struct.sfxge_softc** %30, align 8
  %31 = load i32, i32* @IFF_BROADCAST, align 4
  %32 = load i32, i32* @IFF_SIMPLEX, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @IFF_MULTICAST, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @sfxge_if_ioctl, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @SFXGE_CAP, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @SFXGE_CAP_ENABLE, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @SFXGE_TSO_MAX_SIZE, align 4
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @SFXGE_TX_MAPPING_MAX_SEG, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %2
  %61 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %60, %2
  %72 = load i32, i32* @CSUM_TCP, align 4
  %73 = load i32, i32* @CSUM_UDP, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CSUM_IP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @CSUM_TSO, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ether_ifattach(%struct.ifnet* %85, i32 %88)
  %90 = load i32, i32* @sfxge_if_transmit, align 4
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @sfxge_if_qflush, align 4
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @sfxge_get_counter, align 4
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %100 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @DBGPRINT(i32 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %104 = call i32 @sfxge_port_ifmedia_init(%struct.sfxge_softc* %103)
  store i32 %104, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %71
  br label %108

107:                                              ; preds = %71
  store i32 0, i32* %3, align 4
  br label %114

108:                                              ; preds = %106
  %109 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %110 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %109, i32 0, i32 0
  %111 = load %struct.ifnet*, %struct.ifnet** %110, align 8
  %112 = call i32 @ether_ifdetach(%struct.ifnet* %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %107
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_3__* @efx_nic_cfg_get(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @sfxge_port_ifmedia_init(%struct.sfxge_softc*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
