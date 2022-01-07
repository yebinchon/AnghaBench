; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_attach_ifp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_attach_ifp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@IFT_ETHER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFM_IMASK = common dso_local global i32 0, align 4
@oce_media_change = common dso_local global i32 0, align 4
@oce_media_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@oce_ioctl = common dso_local global i32 0, align 4
@oce_start = common dso_local global i32 0, align 4
@oce_init = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@OCE_MAX_TX_DESC = common dso_local global i64 0, align 8
@OCE_IF_HWASSIST = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@OCE_IF_CAPABILITIES = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_TSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@OCE_MAX_TX_ELEMENTS = common dso_local global i32 0, align 4
@oce_multiq_flush = common dso_local global i32 0, align 4
@oce_multiq_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @oce_attach_ifp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_attach_ifp(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %4 = load i32, i32* @IFT_ETHER, align 4
  %5 = call %struct.TYPE_11__* @if_alloc(i32 %4)
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %7, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* %2, align 4
  br label %164

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i32, i32* @IFM_IMASK, align 4
  %18 = load i32, i32* @oce_media_change, align 4
  %19 = load i32, i32* @oce_media_status, align 4
  %20 = call i32 @ifmedia_init(i32* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load i32, i32* @IFM_ETHER, align 4
  %24 = load i32, i32* @IFM_AUTO, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ifmedia_add(i32* %22, i32 %25, i32 0, i32* null)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i32, i32* @IFM_ETHER, align 4
  %30 = load i32, i32* @IFM_AUTO, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ifmedia_set(i32* %28, i32 %31)
  %33 = load i32, i32* @IFF_BROADCAST, align 4
  %34 = load i32, i32* @IFF_MULTICAST, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* @oce_ioctl, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 15
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @oce_start, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 14
  store i32 %45, i32* %49, align 8
  %50 = load i32, i32* @oce_init, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 13
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @ETHERMTU, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 12
  store i32 %55, i32* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 11
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @device_get_name(i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @device_get_unit(i32 %74)
  %76 = call i32 @if_initname(%struct.TYPE_11__* %67, i32 %71, i32 %75)
  %77 = load i64, i64* @OCE_MAX_TX_DESC, align 8
  %78 = sub nsw i64 %77, 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i64 %78, i64* %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_12__* %87, i64 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 8
  %99 = call i32 @IFQ_SET_READY(%struct.TYPE_12__* %98)
  %100 = load i32, i32* @OCE_IF_HWASSIST, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* @CSUM_TSO, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @CSUM_IP, align 4
  %113 = load i32, i32* @CSUM_TCP, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @CSUM_UDP, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %116
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* @OCE_IF_CAPABILITIES, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 6
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* @IFCAP_HWCSUM, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %135
  store i32 %141, i32* %139, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 7
  store i32 %146, i32* %150, align 8
  %151 = call i32 @IF_Gbps(i32 10)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 5
  store i32 %151, i32* %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @ether_ifattach(%struct.TYPE_11__* %158, i32 %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %14, %12
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_11__* @if_alloc(i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @if_initname(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_12__*) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @ether_ifattach(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
