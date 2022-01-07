; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2gnttab_2req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_rxpkt2gnttab_2req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.netif_rx_request = type { i32, i32 }
%struct.mbuf = type { i64, %struct.mbuf*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@MJUMPAGESIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_rxpkt2gnttab_2req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_rxpkt2gnttab_2req(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netif_rx_request*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %9, align 8
  %17 = load i32, i32* @MJUMPAGESIZE, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  store i32 60, i32* %11, align 4
  store i32 11, i32* %12, align 4
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @MT_DATA, align 4
  %23 = call %struct.mbuf* @m_getm(i32* null, i64 %20, i32 %21, i32 %22)
  store %struct.mbuf* %23, %struct.mbuf** %14, align 8
  %24 = load i32, i32* @M_PKTHDR, align 4
  %25 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %36, %struct.xnb_pkt* %5, i32 %37, i32 %38)
  store i32 0, i32* %7, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %40, %struct.mbuf** %15, align 8
  br label %41

41:                                               ; preds = %52, %2
  %42 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %43 = icmp ne %struct.mbuf* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2, i32 0), align 4
  %46 = call %struct.netif_rx_request* @RING_GET_REQUEST(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3), i32 %45)
  store %struct.netif_rx_request* %46, %struct.netif_rx_request** %13, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.netif_rx_request*, %struct.netif_rx_request** %13, align 8
  %49 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.netif_rx_request*, %struct.netif_rx_request** %13, align 8
  %51 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %50, i32 0, i32 1
  store i32 5, i32* %51, align 4
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 1
  %57 = load %struct.mbuf*, %struct.mbuf** %56, align 8
  store %struct.mbuf* %57, %struct.mbuf** %15, align 8
  br label %41

58:                                               ; preds = %41
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %62 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %63 = call i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt* %5, %struct.mbuf* %60, %struct.TYPE_10__* %61, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @XNB_ASSERT(i32 %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %102, %58
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %79, %86
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = icmp sle i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @XNB_ASSERT(i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %9, align 8
  br label %102

102:                                              ; preds = %73
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %69

105:                                              ; preds = %69
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @XNB_ASSERT(i32 %109)
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i32, i32) #1

declare dso_local %struct.netif_rx_request* @RING_GET_REQUEST(i32*, i32) #1

declare dso_local i32 @xnb_rxpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
