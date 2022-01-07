; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_extra.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.xnb_pkt = type { i32 }
%struct.mbuf = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.netif_rx_request = type { i64, i64 }
%struct.netif_rx_response = type { i64, i32, i64 }
%struct.netif_extra_info = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }

@TCP_MSS = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@NETRXF_more_data = common dso_local global i32 0, align 4
@NETRXF_extra_info = common dso_local global i32 0, align 4
@NETRXF_data_validated = common dso_local global i32 0, align 4
@NETRXF_csum_blank = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_GSO = common dso_local global i64 0, align 8
@XEN_NETIF_EXTRA_FLAG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_rxpkt2rsp_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_rxpkt2rsp_extra(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.netif_rx_request*, align 8
  %16 = alloca %struct.netif_rx_response*, align 8
  %17 = alloca %struct.netif_extra_info*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 14, i64* %8, align 8
  store i32 15, i32* %9, align 4
  store i64 3, i64* %10, align 8
  store i64 49, i64* %11, align 8
  store i64 65, i64* %12, align 8
  %18 = load i64, i64* @TCP_MSS, align 8
  %19 = sub nsw i64 %18, 40
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @MT_DATA, align 4
  %23 = call %struct.mbuf* @m_getm(i32* null, i64 %20, i32 %21, i32 %22)
  store %struct.mbuf* %23, %struct.mbuf** %14, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %25 = icmp ne %struct.mbuf* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @XNB_ASSERT(i32 %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %184

31:                                               ; preds = %2
  %32 = load i32, i32* @M_PKTHDR, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i32, i32* @CSUM_TSO, align 4
  %42 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %54, %struct.xnb_pkt* %5, i64 %55, i32 %56)
  %58 = load i64, i64* %10, align 8
  %59 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 3), i64 %58)
  store %struct.netif_rx_request* %59, %struct.netif_rx_request** %15, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.netif_rx_request*, %struct.netif_rx_request** %15, align 8
  %62 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load %struct.netif_rx_request*, %struct.netif_rx_request** %15, align 8
  %65 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 1
  %68 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 3), i64 %67)
  store %struct.netif_rx_request* %68, %struct.netif_rx_request** %15, align 8
  %69 = load i64, i64* %11, align 8
  %70 = add nsw i64 %69, 1
  %71 = load %struct.netif_rx_request*, %struct.netif_rx_request** %15, align 8
  %72 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %73, 1
  %75 = load %struct.netif_rx_request*, %struct.netif_rx_request** %15, align 8
  %76 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %10, align 8
  store i64 %77, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %79 = load i64, i64* %10, align 8
  %80 = add nsw i64 %79, 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 1), align 8
  %88 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %89 = call i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt* %5, %struct.mbuf* %86, i32 %87, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 1), align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @xnb_rxpkt2rsp(%struct.xnb_pkt* %5, i32 %90, i32 %91, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0))
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i32
  %96 = call i32 @XNB_ASSERT(i32 %95)
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, 2
  %100 = icmp eq i64 %97, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @XNB_ASSERT(i32 %101)
  %103 = load i64, i64* %10, align 8
  %104 = call %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), i64 %103)
  store %struct.netif_rx_response* %104, %struct.netif_rx_response** %16, align 8
  %105 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %106 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @XNB_ASSERT(i32 %110)
  %112 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %113 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @NETRXF_more_data, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @XNB_ASSERT(i32 %118)
  %120 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %121 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @NETRXF_extra_info, align 4
  %124 = and i32 %122, %123
  %125 = call i32 @XNB_ASSERT(i32 %124)
  %126 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %127 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @NETRXF_data_validated, align 4
  %130 = and i32 %128, %129
  %131 = call i32 @XNB_ASSERT(i32 %130)
  %132 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %133 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @NETRXF_csum_blank, align 4
  %136 = and i32 %134, %135
  %137 = call i32 @XNB_ASSERT(i32 %136)
  %138 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %139 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @XNB_ASSERT(i32 %143)
  %145 = load i64, i64* %10, align 8
  %146 = add nsw i64 %145, 1
  %147 = call %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), i64 %146)
  %148 = bitcast %struct.netif_rx_response* %147 to %struct.netif_extra_info*
  store %struct.netif_extra_info* %148, %struct.netif_extra_info** %17, align 8
  %149 = load %struct.netif_extra_info*, %struct.netif_extra_info** %17, align 8
  %150 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @XEN_NETIF_EXTRA_TYPE_GSO, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @XNB_ASSERT(i32 %154)
  %156 = load %struct.netif_extra_info*, %struct.netif_extra_info** %17, align 8
  %157 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @XEN_NETIF_EXTRA_FLAG_MORE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i32 @XNB_ASSERT(i32 %163)
  %165 = load %struct.netif_extra_info*, %struct.netif_extra_info** %17, align 8
  %166 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %13, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @XNB_ASSERT(i32 %172)
  %174 = load %struct.netif_extra_info*, %struct.netif_extra_info** %17, align 8
  %175 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @XEN_NETIF_EXTRA_TYPE_GSO, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @XNB_ASSERT(i32 %181)
  %183 = call i32 @safe_m_freem(%struct.mbuf** %14)
  br label %184

184:                                              ; preds = %31, %30
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i64, i32) #1

declare dso_local %struct.netif_rx_request* @RING_GET_REQUEST(i32*, i64) #1

declare dso_local i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @xnb_rxpkt2rsp(%struct.xnb_pkt*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
