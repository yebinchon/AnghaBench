; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_port_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_port_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32, i32, %struct.ifnet*, i32, i32, i32, %struct.adapter* }
%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.port_info*, i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PORT_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cxgb port lock %d:%d\00", align 1
@check_link_status = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot allocate ifnet\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cxgb_init = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@cxgb_ioctl = common dso_local global i32 0, align 4
@cxgb_transmit = common dso_local global i32 0, align 4
@cxgb_qflush = common dso_local global i32 0, align 4
@cxgb_get_counter = common dso_local global i32 0, align 4
@CXGB_CAP = common dso_local global i32 0, align 4
@CXGB_CAP_ENABLE = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@cxgb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"makedev failed %d\0A\00", align 1
@IFM_IMASK = common dso_local global i32 0, align 4
@cxgb_media_change = common dso_local global i32 0, align 4
@cxgb_media_status = common dso_local global i32 0, align 4
@ETHERMTU_JUMBO = common dso_local global i32 0, align 4
@IFCAP_TOE4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cxgb_port_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_port_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.port_info* @device_get_softc(i32 %8)
  store %struct.port_info* %9, %struct.port_info** %4, align 8
  %10 = load %struct.port_info*, %struct.port_info** %4, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 7
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %7, align 8
  %13 = load %struct.port_info*, %struct.port_info** %4, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PORT_NAME_LEN, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  %19 = call i32 @device_get_unit(i32 %18)
  %20 = load %struct.port_info*, %struct.port_info** %4, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snprintf(i32 %15, i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.port_info*, %struct.port_info** %4, align 8
  %25 = load %struct.port_info*, %struct.port_info** %4, align 8
  %26 = getelementptr inbounds %struct.port_info, %struct.port_info* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PORT_LOCK_INIT(%struct.port_info* %24, i32 %27)
  %29 = load %struct.port_info*, %struct.port_info** %4, align 8
  %30 = getelementptr inbounds %struct.port_info, %struct.port_info* %29, i32 0, i32 5
  %31 = call i32 @callout_init(i32* %30, i32 1)
  %32 = load %struct.port_info*, %struct.port_info** %4, align 8
  %33 = getelementptr inbounds %struct.port_info, %struct.port_info* %32, i32 0, i32 4
  %34 = load i32, i32* @check_link_status, align 4
  %35 = load %struct.port_info*, %struct.port_info** %4, align 8
  %36 = call i32 @TASK_INIT(i32* %33, i32 0, i32 %34, %struct.port_info* %35)
  %37 = load i32, i32* @IFT_ETHER, align 4
  %38 = call %struct.ifnet* @if_alloc(i32 %37)
  %39 = load %struct.port_info*, %struct.port_info** %4, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 3
  store %struct.ifnet* %38, %struct.ifnet** %40, align 8
  store %struct.ifnet* %38, %struct.ifnet** %5, align 8
  %41 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %42 = icmp eq %struct.ifnet* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %154

47:                                               ; preds = %1
  %48 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_get_name(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_get_unit(i32 %51)
  %53 = call i32 @if_initname(%struct.ifnet* %48, i32 %50, i32 %52)
  %54 = load i32, i32* @cxgb_init, align 4
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = load %struct.port_info*, %struct.port_info** %4, align 8
  %58 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 9
  store %struct.port_info* %57, %struct.port_info** %59, align 8
  %60 = load i32, i32* @IFF_BROADCAST, align 4
  %61 = load i32, i32* @IFF_SIMPLEX, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IFF_MULTICAST, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @cxgb_ioctl, align 4
  %68 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @cxgb_transmit, align 4
  %71 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @cxgb_qflush, align 4
  %74 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @cxgb_get_counter, align 4
  %77 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @CXGB_CAP, align 4
  %80 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @CXGB_CAP_ENABLE, align 4
  %83 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @CSUM_TCP, align 4
  %86 = load i32, i32* @CSUM_UDP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @CSUM_IP, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @CSUM_TSO, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.adapter*, %struct.adapter** %7, align 8
  %99 = getelementptr inbounds %struct.adapter, %struct.adapter* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %126

103:                                              ; preds = %47
  %104 = load i32, i32* @IFCAP_TSO, align 4
  %105 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %109 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @IFCAP_TSO, align 4
  %113 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* @CSUM_TSO, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %103, %47
  %127 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %128 = load %struct.port_info*, %struct.port_info** %4, align 8
  %129 = getelementptr inbounds %struct.port_info, %struct.port_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ether_ifattach(%struct.ifnet* %127, i32 %130)
  %132 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %133 = load i32, i32* @cxgb, align 4
  %134 = call i32 @DEBUGNET_SET(%struct.ifnet* %132, i32 %133)
  %135 = load %struct.port_info*, %struct.port_info** %4, align 8
  %136 = call i32 @cxgb_makedev(%struct.port_info* %135)
  store i32 %136, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %126
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %154

142:                                              ; preds = %126
  %143 = load %struct.port_info*, %struct.port_info** %4, align 8
  %144 = getelementptr inbounds %struct.port_info, %struct.port_info* %143, i32 0, i32 1
  %145 = load i32, i32* @IFM_IMASK, align 4
  %146 = load i32, i32* @cxgb_media_change, align 4
  %147 = load i32, i32* @cxgb_media_status, align 4
  %148 = call i32 @ifmedia_init(i32* %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.port_info*, %struct.port_info** %4, align 8
  %150 = call i32 @cxgb_build_medialist(%struct.port_info* %149)
  %151 = load %struct.port_info*, %struct.port_info** %4, align 8
  %152 = call i32 @t3_sge_init_port(%struct.port_info* %151)
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %142, %138, %43
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.port_info* @device_get_softc(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @PORT_LOCK_INIT(%struct.port_info*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.port_info*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @DEBUGNET_SET(%struct.ifnet*, i32) #1

declare dso_local i32 @cxgb_makedev(%struct.port_info*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @cxgb_build_medialist(%struct.port_info*) #1

declare dso_local i32 @t3_sge_init_port(%struct.port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
