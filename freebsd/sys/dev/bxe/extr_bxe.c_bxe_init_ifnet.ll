; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_ifnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_7__, i32*, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IFM_IMASK = common dso_local global i32 0, align 4
@bxe_ifmedia_update = common dso_local global i32 0, align 4
@bxe_ifmedia_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"IFMEDIA flags : %x\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Interface allocation failed!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@bxe_ioctl = common dso_local global i32 0, align 4
@bxe_tx_start = common dso_local global i32 0, align 4
@bxe_get_counter = common dso_local global i32 0, align 4
@bxe_init = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@bxe = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@bxe_mq_flush = common dso_local global i32 0, align 4
@bxe_tx_mq_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_init_ifnet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_init_ifnet(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 6
  %8 = load i32, i32* @IFM_IMASK, align 4
  %9 = load i32, i32* @bxe_ifmedia_update, align 4
  %10 = load i32, i32* @bxe_ifmedia_status, align 4
  %11 = call i32 @ifmedia_init(%struct.TYPE_8__* %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 6
  %14 = load i32, i32* @IFM_ETHER, align 4
  %15 = load i32, i32* @IFM_FDX, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %16, %19
  %21 = call i32 @ifmedia_add(%struct.TYPE_8__* %13, i32 %20, i32 0, i32* null)
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %22, i32 0, i32 6
  %24 = load i32, i32* @IFM_ETHER, align 4
  %25 = load i32, i32* @IFM_AUTO, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ifmedia_add(%struct.TYPE_8__* %23, i32 %26, i32 0, i32* null)
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %28, i32 0, i32 6
  %30 = load i32, i32* @IFM_ETHER, align 4
  %31 = load i32, i32* @IFM_AUTO, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @ifmedia_set(%struct.TYPE_8__* %29, i32 %32)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %41 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @BLOGI(%struct.bxe_softc* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @IFT_ETHER, align 4
  %50 = call i32* @if_gethandle(i32 %49)
  store i32* %50, i32** %4, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %1
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %54 = call i32 @BLOGE(%struct.bxe_softc* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %2, align 4
  br label %145

56:                                               ; preds = %1
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %59 = call i32 @if_setsoftc(i32* %57, %struct.bxe_softc* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %62 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @device_get_name(i32 %63)
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %66 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_get_unit(i32 %67)
  %69 = call i32 @if_initname(i32* %60, i32 %64, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @IFF_BROADCAST, align 4
  %72 = load i32, i32* @IFF_SIMPLEX, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @IFF_MULTICAST, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @if_setflags(i32* %70, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* @bxe_ioctl, align 4
  %79 = call i32 @if_setioctlfn(i32* %77, i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @bxe_tx_start, align 4
  %82 = call i32 @if_setstartfn(i32* %80, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @bxe_get_counter, align 4
  %85 = call i32 @if_setgetcounterfn(i32* %83, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @bxe_init, align 4
  %88 = call i32 @if_setinitfn(i32* %86, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %91 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @if_setmtu(i32* %89, i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* @CSUM_IP, align 4
  %96 = load i32, i32* @CSUM_TCP, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @CSUM_UDP, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CSUM_TSO, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @if_sethwassist(i32* %94, i32 %105)
  %107 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %108 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @IFCAP_HWCSUM, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @IFCAP_LRO, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @if_setcapabilitiesbit(i32* %116, i32 %117, i32 0)
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @if_getcapabilities(i32* %120)
  %122 = call i32 @if_setcapenable(i32* %119, i32 %121)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @IF_Gbps(i32 10)
  %125 = call i32 @if_setbaudrate(i32* %123, i32 %124)
  %126 = load i32*, i32** %4, align 8
  %127 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %128 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @if_setsendqlen(i32* %126, i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @if_setsendqready(i32* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %135 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %134, i32 0, i32 2
  store i32* %133, i32** %135, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %138 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ether_ifattach(i32* %136, i32 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* @bxe, align 4
  %144 = call i32 @DEBUGNET_SET(i32* %142, i32 %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %56, %52
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @ifmedia_init(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @BLOGI(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32* @if_gethandle(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @if_setsoftc(i32*, %struct.bxe_softc*) #1

declare dso_local i32 @if_initname(i32*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @if_setflags(i32*, i32) #1

declare dso_local i32 @if_setioctlfn(i32*, i32) #1

declare dso_local i32 @if_setstartfn(i32*, i32) #1

declare dso_local i32 @if_setgetcounterfn(i32*, i32) #1

declare dso_local i32 @if_setinitfn(i32*, i32) #1

declare dso_local i32 @if_setmtu(i32*, i32) #1

declare dso_local i32 @if_sethwassist(i32*, i32) #1

declare dso_local i32 @if_setcapabilitiesbit(i32*, i32, i32) #1

declare dso_local i32 @if_setcapenable(i32*, i32) #1

declare dso_local i32 @if_getcapabilities(i32*) #1

declare dso_local i32 @if_setbaudrate(i32*, i32) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @if_setsendqlen(i32*, i32) #1

declare dso_local i32 @if_setsendqready(i32*) #1

declare dso_local i32 @ether_ifattach(i32*, i32) #1

declare dso_local i32 @DEBUGNET_SET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
