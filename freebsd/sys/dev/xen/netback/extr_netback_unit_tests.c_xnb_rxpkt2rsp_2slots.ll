; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_2slots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2rsp_2slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.xnb_pkt = type { i32 }
%struct.netif_rx_request = type { i64, i64 }
%struct.netif_rx_response = type { i64, i64, i32, i32 }
%struct.mbuf = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@NETRXF_extra_info = common dso_local global i32 0, align 4
@NETRXF_more_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_rxpkt2rsp_2slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_rxpkt2rsp_2slots(i8* %0, i64 %1) #0 {
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
  %14 = alloca i64, align 8
  %15 = alloca %struct.netif_rx_request*, align 8
  %16 = alloca %struct.netif_rx_response*, align 8
  %17 = alloca %struct.mbuf*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = add nsw i32 %19, 100
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  store i32 3, i32* %9, align 4
  store i64 17, i64* %10, align 8
  store i64 37, i64* %11, align 8
  store i64 24, i64* %12, align 8
  store i64 34, i64* %13, align 8
  store i64 15, i64* %14, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @MT_DATA, align 4
  %25 = call %struct.mbuf* @m_getm(i32* null, i64 %22, i32 %23, i32 %24)
  store %struct.mbuf* %25, %struct.mbuf** %17, align 8
  %26 = load i32, i32* @M_PKTHDR, align 4
  %27 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %2
  %40 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %41 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %40)
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @MIN(i32 %41, i64 %42)
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %18, align 8
  %49 = sub i64 %47, %48
  %50 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  br label %58

54:                                               ; preds = %2
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %39
  %59 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %59, %struct.xnb_pkt* %5, i64 %60, i32 %61)
  %63 = load i64, i64* %14, align 8
  %64 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3), i64 %63)
  store %struct.netif_rx_request* %64, %struct.netif_rx_request** %15, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.netif_rx_request*, %struct.netif_rx_request** %15, align 8
  %67 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.netif_rx_request*, %struct.netif_rx_request** %15, align 8
  %70 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add nsw i64 %71, 1
  %73 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3), i64 %72)
  store %struct.netif_rx_request* %73, %struct.netif_rx_request** %15, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load %struct.netif_rx_request*, %struct.netif_rx_request** %15, align 8
  %76 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.netif_rx_request*, %struct.netif_rx_request** %15, align 8
  %79 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %14, align 8
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %81 = load i64, i64* %14, align 8
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %82 = load i64, i64* %14, align 8
  %83 = add nsw i64 %82, 2
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), align 8
  %91 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %92 = call i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt* %5, %struct.mbuf* %89, i32 %90, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @xnb_rxpkt2rsp(%struct.xnb_pkt* %5, i32 %93, i32 %94, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0))
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i32
  %99 = call i32 @XNB_ASSERT(i32 %98)
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %101 = load i64, i64* %14, align 8
  %102 = add nsw i64 %101, 2
  %103 = icmp eq i64 %100, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @XNB_ASSERT(i32 %104)
  %106 = load i64, i64* %14, align 8
  %107 = call %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i64 %106)
  store %struct.netif_rx_response* %107, %struct.netif_rx_response** %16, align 8
  %108 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %109 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @XNB_ASSERT(i32 %113)
  %115 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %116 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @XNB_ASSERT(i32 %119)
  %121 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %122 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @NETRXF_extra_info, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @XNB_ASSERT(i32 %127)
  %129 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %130 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @NETRXF_more_data, align 4
  %133 = and i32 %131, %132
  %134 = call i32 @XNB_ASSERT(i32 %133)
  %135 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %136 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @XNB_ASSERT(i32 %140)
  %142 = load i64, i64* %14, align 8
  %143 = add nsw i64 %142, 1
  %144 = call %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i64 %143)
  store %struct.netif_rx_response* %144, %struct.netif_rx_response** %16, align 8
  %145 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %146 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @XNB_ASSERT(i32 %150)
  %152 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %153 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @XNB_ASSERT(i32 %156)
  %158 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %159 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @NETRXF_extra_info, align 4
  %162 = and i32 %160, %161
  %163 = icmp eq i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @XNB_ASSERT(i32 %164)
  %166 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %167 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @NETRXF_more_data, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @XNB_ASSERT(i32 %173)
  %175 = load %struct.netif_rx_response*, %struct.netif_rx_response** %16, align 8
  %176 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %8, align 8
  %180 = load i32, i32* @PAGE_SIZE, align 4
  %181 = sext i32 %180 to i64
  %182 = sub i64 %179, %181
  %183 = icmp eq i64 %178, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @XNB_ASSERT(i32 %184)
  %186 = call i32 @safe_m_freem(%struct.mbuf** %17)
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i64, i32) #1

declare dso_local %struct.netif_rx_request* @RING_GET_REQUEST(i32*, i64) #1

declare dso_local i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @xnb_rxpkt2rsp(%struct.xnb_pkt*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local %struct.netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
