; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_2short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_2short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.xnb_pkt = type { i32 }
%struct.netif_rx_request = type { i64, i64 }
%struct.netif_rx_response = type { i64, i64, i64, i32 }
%struct.mbuf = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@MHLEN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@NETRXF_more_data = common dso_local global i32 0, align 4
@NETRXF_extra_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_rxpkt2rsp_2short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_rxpkt2rsp_2short(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.netif_rx_request*, align 8
  %15 = alloca %struct.netif_rx_response*, align 8
  %16 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load i32, i32* @MHLEN, align 4
  %18 = sub nsw i32 %17, 5
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @MHLEN, align 4
  %21 = sub nsw i32 %20, 15
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  store i32 32, i32* %10, align 4
  store i8* inttoptr (i64 14 to i8*), i8** %11, align 8
  store i64 47, i64* %12, align 8
  store i64 54, i64* %13, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @MT_DATA, align 4
  %26 = call %struct.mbuf* @m_getm(%struct.mbuf* null, i64 %23, i32 %24, i32 %25)
  store %struct.mbuf* %26, %struct.mbuf** %16, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %28 = icmp ne %struct.mbuf* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @XNB_ASSERT(i32 %29)
  %31 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %32 = icmp eq %struct.mbuf* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %137

34:                                               ; preds = %2
  %35 = load i32, i32* @M_PKTHDR, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = load i32, i32* @MT_DATA, align 4
  %44 = call %struct.mbuf* @m_getm(%struct.mbuf* %40, i64 %41, i32 %42, i32 %43)
  %45 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @XNB_ASSERT(i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i64 %60, i64* %64, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %65, %struct.xnb_pkt* %5, i8* %66, i32 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3), i8* %69)
  store %struct.netif_rx_request* %70, %struct.netif_rx_request** %14, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.netif_rx_request*, %struct.netif_rx_request** %14, align 8
  %73 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.netif_rx_request*, %struct.netif_rx_request** %14, align 8
  %76 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i8*, i8** %11, align 8
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %78 = load i8*, i8** %11, align 8
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr i8, i8* %79, i64 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), align 8
  %88 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %89 = call i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt* %5, %struct.mbuf* %86, i32 %87, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @xnb_rxpkt2rsp(%struct.xnb_pkt* %5, i32 %90, i32 %91, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0))
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i32
  %96 = call i32 @XNB_ASSERT(i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 1
  %99 = zext i1 %98 to i32
  %100 = call i32 @XNB_ASSERT(i32 %99)
  %101 = load i8*, i8** %11, align 8
  %102 = call %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i8* %101)
  store %struct.netif_rx_response* %102, %struct.netif_rx_response** %15, align 8
  %103 = load %struct.netif_rx_response*, %struct.netif_rx_response** %15, align 8
  %104 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @XNB_ASSERT(i32 %108)
  %110 = load %struct.netif_rx_response*, %struct.netif_rx_response** %15, align 8
  %111 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %113, %114
  %116 = icmp eq i64 %112, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @XNB_ASSERT(i32 %117)
  %119 = load %struct.netif_rx_response*, %struct.netif_rx_response** %15, align 8
  %120 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @XNB_ASSERT(i32 %123)
  %125 = load %struct.netif_rx_response*, %struct.netif_rx_response** %15, align 8
  %126 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @NETRXF_more_data, align 4
  %129 = load i32, i32* @NETRXF_extra_info, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %127, %130
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @XNB_ASSERT(i32 %134)
  %136 = call i32 @safe_m_freem(%struct.mbuf** %16)
  br label %137

137:                                              ; preds = %34, %33
  ret void
}

declare dso_local %struct.mbuf* @m_getm(%struct.mbuf*, i64, i32, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i8*, i32) #1

declare dso_local %struct.netif_rx_request* @RING_GET_REQUEST(i32*, i8*) #1

declare dso_local i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @xnb_rxpkt2rsp(%struct.xnb_pkt*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
