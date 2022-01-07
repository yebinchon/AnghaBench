; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_extra.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.xnb_pkt = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.netif_tx_request = type { i32, i32 }
%struct.netif_extra_info = type { %struct.TYPE_11__, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i8* }

@xnb_unit_pvt = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@NETTXF_extra_info = common dso_local global i32 0, align 4
@NETTXF_more_data = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_GSO = common dso_local global i64 0, align 8
@XEN_NETIF_GSO_TYPE_TCPV4 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_ring2pkt_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_ring2pkt_extra(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netif_tx_request*, align 8
  %8 = alloca %struct.netif_extra_info*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  store i64 %10, i64* %9, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %12 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1), i64 %11)
  store %struct.netif_tx_request* %12, %struct.netif_tx_request** %7, align 8
  %13 = load i32, i32* @NETTXF_extra_info, align 4
  %14 = load i32, i32* @NETTXF_more_data, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %17 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %19 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %18, i32 0, i32 1
  store i32 150, i32* %19, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %23 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1), i64 %22)
  %24 = bitcast %struct.netif_tx_request* %23 to %struct.netif_extra_info*
  store %struct.netif_extra_info* %24, %struct.netif_extra_info** %8, align 8
  %25 = load %struct.netif_extra_info*, %struct.netif_extra_info** %8, align 8
  %26 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* @XEN_NETIF_EXTRA_TYPE_GSO, align 8
  %28 = load %struct.netif_extra_info*, %struct.netif_extra_info** %8, align 8
  %29 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.netif_extra_info*, %struct.netif_extra_info** %8, align 8
  %31 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 250, i32* %33, align 8
  %34 = load i8*, i8** @XEN_NETIF_GSO_TYPE_TCPV4, align 8
  %35 = load %struct.netif_extra_info*, %struct.netif_extra_info** %8, align 8
  %36 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  store i8* %34, i8** %38, align 8
  %39 = load %struct.netif_extra_info*, %struct.netif_extra_info** %8, align 8
  %40 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %46 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1), i64 %45)
  store %struct.netif_tx_request* %46, %struct.netif_tx_request** %7, align 8
  %47 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %48 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %50 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %49, i32 0, i32 1
  store i32 50, i32* %50, align 4
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %53 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1))
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %55 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %5, %struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 0), i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 3
  %58 = zext i1 %57 to i32
  %59 = call i32 @XNB_ASSERT(i32 %58)
  %60 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @XNB_ASSERT(i32 %64)
  %66 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @XEN_NETIF_EXTRA_TYPE_GSO, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @XNB_ASSERT(i32 %71)
  %73 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 250
  %79 = zext i1 %78 to i32
  %80 = call i32 @XNB_ASSERT(i32 %79)
  %81 = load i8*, i8** @XEN_NETIF_GSO_TYPE_TCPV4, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 4
  %87 = call i32 @XNB_ASSERT(i32 %82)
  %88 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 150
  %91 = zext i1 %90 to i32
  %92 = call i32 @XNB_ASSERT(i32 %91)
  %93 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 100
  %96 = zext i1 %95 to i32
  %97 = call i32 @XNB_ASSERT(i32 %96)
  %98 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NETTXF_extra_info, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @XNB_ASSERT(i32 %102)
  %104 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %105 = call i32 @XNB_ASSERT(i32 %104)
  %106 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i32
  %110 = call i32 @XNB_ASSERT(i32 %109)
  %111 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @XNB_ASSERT(i32 %115)
  %117 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = add nsw i64 %119, 2
  %121 = icmp eq i64 %118, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @XNB_ASSERT(i32 %122)
  %124 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 0), i64 %125)
  %127 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %128 = icmp eq %struct.netif_tx_request* %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @XNB_ASSERT(i32 %129)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_16__*) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
