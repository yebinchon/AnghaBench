; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_copyerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_copyerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.xnb_pkt = type { i32 }
%struct.netif_rx_request = type { i32, i32 }
%struct.netif_rx_response = type { i32, i64 }
%struct.mbuf = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }

@MCLBYTES = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@GNTST_general_error = common dso_local global i32 0, align 4
@NETIF_RSP_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_rxpkt2rsp_copyerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_rxpkt2rsp_copyerror(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.netif_rx_request*, align 8
  %15 = alloca %struct.netif_rx_response*, align 8
  %16 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 7, i32* %8, align 4
  store i32 42, i32* %9, align 4
  store i8* inttoptr (i64 6859 to i8*), i8** %10, align 8
  %17 = load i32, i32* @MCLBYTES, align 4
  %18 = mul nsw i32 7, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  store i32 9, i32* %12, align 4
  store i64 2, i64* %13, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @MT_DATA, align 4
  %23 = call %struct.mbuf* @m_getm(i32* null, i64 %20, i32 %21, i32 %22)
  store %struct.mbuf* %23, %struct.mbuf** %16, align 8
  %24 = load i32, i32* @M_PKTHDR, align 4
  %25 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %36, %struct.xnb_pkt* %5, i64 %37, i32 %38)
  %40 = load i64, i64* %13, align 8
  %41 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i64 %40)
  store %struct.netif_rx_request* %41, %struct.netif_rx_request** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.netif_rx_request*, %struct.netif_rx_request** %14, align 8
  %44 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.netif_rx_request*, %struct.netif_rx_request** %14, align 8
  %47 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %13, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %49 = load i64, i64* %13, align 8
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %50, 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3), align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3), align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %57, 1
  %59 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i64 %58)
  store %struct.netif_rx_request* %59, %struct.netif_rx_request** %14, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.netif_rx_request*, %struct.netif_rx_request** %14, align 8
  %63 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.netif_rx_request*, %struct.netif_rx_request** %14, align 8
  %67 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %70 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %71 = call i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt* %5, %struct.mbuf* %68, %struct.TYPE_12__* %69, %struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @GNTST_general_error, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 2
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @xnb_rxpkt2rsp(%struct.xnb_pkt* %5, %struct.TYPE_12__* %76, i32 %77, %struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1))
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = call i32 @XNB_ASSERT(i32 %81)
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %84 = load i64, i64* %13, align 8
  %85 = add nsw i64 %84, 1
  %86 = icmp eq i64 %83, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @XNB_ASSERT(i32 %87)
  %89 = load i64, i64* %13, align 8
  %90 = call %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i64 %89)
  store %struct.netif_rx_response* %90, %struct.netif_rx_response** %15, align 8
  %91 = load %struct.netif_rx_response*, %struct.netif_rx_response** %15, align 8
  %92 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @XNB_ASSERT(i32 %96)
  %98 = load %struct.netif_rx_response*, %struct.netif_rx_response** %15, align 8
  %99 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NETIF_RSP_ERROR, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @XNB_ASSERT(i32 %103)
  %105 = load i64, i64* %13, align 8
  %106 = add nsw i64 %105, 1
  %107 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i64 %106)
  store %struct.netif_rx_request* %107, %struct.netif_rx_request** %14, align 8
  %108 = load %struct.netif_rx_request*, %struct.netif_rx_request** %14, align 8
  %109 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = load i8*, i8** %10, align 8
  %114 = icmp eq i8* %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @XNB_ASSERT(i32 %115)
  %117 = load %struct.netif_rx_request*, %struct.netif_rx_request** %14, align 8
  %118 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = load i8*, i8** %10, align 8
  %123 = icmp eq i8* %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @XNB_ASSERT(i32 %124)
  %126 = call i32 @safe_m_freem(%struct.mbuf** %16)
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i64, i32) #1

declare dso_local %struct.netif_rx_request* @RING_GET_REQUEST(i32*, i64) #1

declare dso_local i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @xnb_rxpkt2rsp(%struct.xnb_pkt*, %struct.TYPE_12__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
