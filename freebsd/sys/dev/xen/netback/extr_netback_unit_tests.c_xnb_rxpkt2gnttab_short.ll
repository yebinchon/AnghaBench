; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2gnttab_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2gnttab_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.netif_rx_request = type { i32 }
%struct.mbuf = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }

@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i64 0, align 8
@GNTCOPY_dest_gref = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i64 0, align 8
@vm_offset_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_rxpkt2gnttab_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_rxpkt2gnttab_short(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netif_rx_request*, align 8
  %11 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 128, i64* %7, align 8
  store i32 60, i32* %8, align 4
  store i32 9, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @MT_DATA, align 4
  %15 = call %struct.mbuf* @m_getm(i32* null, i64 %12, i32 %13, i32 %14)
  store %struct.mbuf* %15, %struct.mbuf** %11, align 8
  %16 = load i32, i32* @M_PKTHDR, align 4
  %17 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %28, %struct.xnb_pkt* %5, i32 %29, i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 2, i32 0), align 4
  %33 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 3), i32 %32)
  store %struct.netif_rx_request* %33, %struct.netif_rx_request** %10, align 8
  %34 = load %struct.netif_rx_request*, %struct.netif_rx_request** %10, align 8
  %35 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %34, i32 0, i32 0
  store i32 7, i32* %35, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %38 = load i64, i64* @DOMID_FIRST_RESERVED, align 8
  %39 = call i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt* %5, %struct.mbuf* %36, %struct.TYPE_14__* %37, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 1), i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @XNB_ASSERT(i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @XNB_ASSERT(i32 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GNTCOPY_dest_gref, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @XNB_ASSERT(i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @XNB_ASSERT(i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DOMID_SELF, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @XNB_ASSERT(i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %82 = load i32, i32* @vm_offset_t, align 4
  %83 = call i32 @mtod(%struct.mbuf* %81, i32 %82)
  %84 = call i64 @virt_to_offset(i32 %83)
  %85 = icmp eq i64 %80, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @XNB_ASSERT(i32 %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %95 = load i32, i32* @vm_offset_t, align 4
  %96 = call i32 @mtod(%struct.mbuf* %94, i32 %95)
  %97 = call i64 @virt_to_mfn(i32 %96)
  %98 = icmp eq i64 %93, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @XNB_ASSERT(i32 %99)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DOMID_FIRST_RESERVED, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @XNB_ASSERT(i32 %108)
  %110 = call i32 @safe_m_freem(%struct.mbuf** %11)
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i32, i32) #1

declare dso_local %struct.netif_rx_request* @RING_GET_REQUEST(i32*, i32) #1

declare dso_local i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, %struct.TYPE_14__*, i32*, i64) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i64 @virt_to_offset(i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i64 @virt_to_mfn(i32) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
