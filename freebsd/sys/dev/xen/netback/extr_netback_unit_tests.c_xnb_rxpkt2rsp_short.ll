; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.xnb_pkt = type { i32 }
%struct.netif_rx_request = type { i32, i64 }
%struct.netif_rx_response = type { i64, i64, i32, i64 }
%struct.mbuf = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@NETRXF_more_data = common dso_local global i32 0, align 4
@NETRXF_extra_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_rxpkt2rsp_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_rxpkt2rsp_short(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.netif_rx_request*, align 8
  %12 = alloca %struct.netif_rx_response*, align 8
  %13 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 128, i64* %8, align 8
  store i32 60, i32* %9, align 4
  store i64 5, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @MT_DATA, align 4
  %17 = call %struct.mbuf* @m_getm(i32* null, i64 %14, i32 %15, i32 %16)
  store %struct.mbuf* %17, %struct.mbuf** %13, align 8
  %18 = load i32, i32* @M_PKTHDR, align 4
  %19 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %30, %struct.xnb_pkt* %5, i64 %31, i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3), i64 %34)
  store %struct.netif_rx_request* %35, %struct.netif_rx_request** %11, align 8
  %36 = load %struct.netif_rx_request*, %struct.netif_rx_request** %11, align 8
  %37 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %36, i32 0, i32 0
  store i32 7, i32* %37, align 8
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %40 = load i64, i64* %10, align 8
  %41 = add nsw i64 %40, 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), align 8
  %49 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %50 = call i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt* %5, %struct.mbuf* %47, i32 %48, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @xnb_rxpkt2rsp(%struct.xnb_pkt* %5, i32 %51, i32 %52, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0))
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @XNB_ASSERT(i32 %56)
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, 1
  %61 = icmp eq i64 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @XNB_ASSERT(i32 %62)
  %64 = load i64, i64* %10, align 8
  %65 = call %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), i64 %64)
  store %struct.netif_rx_response* %65, %struct.netif_rx_response** %12, align 8
  %66 = load %struct.netif_rx_response*, %struct.netif_rx_response** %12, align 8
  %67 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.netif_rx_request*, %struct.netif_rx_request** %11, align 8
  %70 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @XNB_ASSERT(i32 %73)
  %75 = load %struct.netif_rx_response*, %struct.netif_rx_response** %12, align 8
  %76 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @XNB_ASSERT(i32 %79)
  %81 = load %struct.netif_rx_response*, %struct.netif_rx_response** %12, align 8
  %82 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NETRXF_more_data, align 4
  %85 = load i32, i32* @NETRXF_extra_info, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @XNB_ASSERT(i32 %89)
  %91 = load %struct.netif_rx_response*, %struct.netif_rx_response** %12, align 8
  %92 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @XNB_ASSERT(i32 %96)
  %98 = call i32 @safe_m_freem(%struct.mbuf** %13)
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i64, i32) #1

declare dso_local %struct.netif_rx_request* @RING_GET_REQUEST(i32*, i64) #1

declare dso_local i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @xnb_rxpkt2rsp(%struct.xnb_pkt*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
