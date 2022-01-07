; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_init_ifnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_init_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_11__, i32, %struct.TYPE_12__, i32, %struct.octeon_device* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.octeon_device = type { i32 }

@IFM_IMASK = common dso_local global i32 0, align 4
@lio_ifmedia_update = common dso_local global i32 0, align 4
@lio_ifmedia_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"IFMEDIA flags : %x\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@lio_ioctl = common dso_local global i32 0, align 4
@lio_get_counter = common dso_local global i32 0, align 4
@lio_mq_start = common dso_local global i32 0, align 4
@lio_qflush = common dso_local global i32 0, align 4
@lio_open = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_HWCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFCAP_HWSTATS = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*)* @lio_init_ifnet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_init_ifnet(%struct.lio* %0) #0 {
  %2 = alloca %struct.lio*, align 8
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %2, align 8
  %5 = load %struct.lio*, %struct.lio** %2, align 8
  %6 = getelementptr inbounds %struct.lio, %struct.lio* %5, i32 0, i32 4
  %7 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  store %struct.octeon_device* %7, %struct.octeon_device** %3, align 8
  %8 = load %struct.lio*, %struct.lio** %2, align 8
  %9 = getelementptr inbounds %struct.lio, %struct.lio* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.lio*, %struct.lio** %2, align 8
  %12 = getelementptr inbounds %struct.lio, %struct.lio* %11, i32 0, i32 2
  %13 = load i32, i32* @IFM_IMASK, align 4
  %14 = load i32, i32* @lio_ifmedia_update, align 4
  %15 = load i32, i32* @lio_ifmedia_status, align 4
  %16 = call i32 @ifmedia_init(%struct.TYPE_12__* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.lio*, %struct.lio** %2, align 8
  %18 = getelementptr inbounds %struct.lio, %struct.lio* %17, i32 0, i32 2
  %19 = load i32, i32* @IFM_ETHER, align 4
  %20 = load i32, i32* @IFM_FDX, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %23 = call i32 @lio_get_media_subtype(%struct.octeon_device* %22)
  %24 = or i32 %21, %23
  %25 = call i32 @ifmedia_add(%struct.TYPE_12__* %18, i32 %24, i32 0, i32* null)
  %26 = load %struct.lio*, %struct.lio** %2, align 8
  %27 = getelementptr inbounds %struct.lio, %struct.lio* %26, i32 0, i32 2
  %28 = load i32, i32* @IFM_ETHER, align 4
  %29 = load i32, i32* @IFM_AUTO, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ifmedia_add(%struct.TYPE_12__* %27, i32 %30, i32 0, i32* null)
  %32 = load %struct.lio*, %struct.lio** %2, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 2
  %34 = load i32, i32* @IFM_ETHER, align 4
  %35 = load i32, i32* @IFM_AUTO, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @ifmedia_set(%struct.TYPE_12__* %33, i32 %36)
  %38 = load %struct.lio*, %struct.lio** %2, align 8
  %39 = getelementptr inbounds %struct.lio, %struct.lio* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lio*, %struct.lio** %2, align 8
  %45 = getelementptr inbounds %struct.lio, %struct.lio* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %48 = load %struct.lio*, %struct.lio** %2, align 8
  %49 = getelementptr inbounds %struct.lio, %struct.lio* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @lio_dev_dbg(%struct.octeon_device* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_get_name(i32 %56)
  %58 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @device_get_unit(i32 %60)
  %62 = call i32 @if_initname(i32 %53, i32 %57, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @IFF_BROADCAST, align 4
  %65 = load i32, i32* @IFF_SIMPLEX, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IFF_MULTICAST, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @if_setflags(i32 %63, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @lio_ioctl, align 4
  %72 = call i32 @if_setioctlfn(i32 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @lio_get_counter, align 4
  %75 = call i32 @if_setgetcounterfn(i32 %73, i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @lio_mq_start, align 4
  %78 = call i32 @if_settransmitfn(i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @lio_qflush, align 4
  %81 = call i32 @if_setqflushfn(i32 %79, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @lio_open, align 4
  %84 = call i32 @if_setinitfn(i32 %82, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.lio*, %struct.lio** %2, align 8
  %87 = getelementptr inbounds %struct.lio, %struct.lio* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @if_setmtu(i32 %85, i32 %91)
  %93 = load %struct.lio*, %struct.lio** %2, align 8
  %94 = getelementptr inbounds %struct.lio, %struct.lio* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.lio*, %struct.lio** %2, align 8
  %100 = getelementptr inbounds %struct.lio, %struct.lio* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @CSUM_IP, align 4
  %103 = load i32, i32* @CSUM_TCP, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @CSUM_UDP, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @CSUM_TSO, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @if_sethwassist(i32 %101, i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @IFCAP_HWCSUM, align 4
  %116 = load i32, i32* @IFCAP_HWCSUM_IPV6, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @IFCAP_TSO, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @IFCAP_LRO, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @IFCAP_HWSTATS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @if_setcapabilitiesbit(i32 %114, i32 %137, i32 0)
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @if_getcapabilities(i32 %140)
  %142 = call i32 @if_setcapenable(i32 %139, i32 %141)
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %145 = call i32 @lio_get_baudrate(%struct.octeon_device* %144)
  %146 = call i32 @if_setbaudrate(i32 %143, i32 %145)
  ret i32 0
}

declare dso_local i32 @ifmedia_init(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @lio_get_media_subtype(%struct.octeon_device*) #1

declare dso_local i32 @ifmedia_set(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @if_initname(i32, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @if_setflags(i32, i32) #1

declare dso_local i32 @if_setioctlfn(i32, i32) #1

declare dso_local i32 @if_setgetcounterfn(i32, i32) #1

declare dso_local i32 @if_settransmitfn(i32, i32) #1

declare dso_local i32 @if_setqflushfn(i32, i32) #1

declare dso_local i32 @if_setinitfn(i32, i32) #1

declare dso_local i32 @if_setmtu(i32, i32) #1

declare dso_local i32 @if_sethwassist(i32, i32) #1

declare dso_local i32 @if_setcapabilitiesbit(i32, i32, i32) #1

declare dso_local i32 @if_setcapenable(i32, i32) #1

declare dso_local i32 @if_getcapabilities(i32) #1

declare dso_local i32 @if_setbaudrate(i32, i32) #1

declare dso_local i32 @lio_get_baudrate(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
