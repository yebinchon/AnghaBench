; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_update_mbufc_2cluster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_update_mbufc_2cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_16__, i32, %struct.TYPE_17__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.netif_tx_request = type { i64, i32, i64, i64 }

@MCLBYTES = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_update_mbufc_2cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_update_mbufc_2cluster(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xnb_pkt, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.netif_tx_request*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* @MCLBYTES, align 4
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %16 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 3), i32 %15)
  store %struct.netif_tx_request* %16, %struct.netif_tx_request** %10, align 8
  %17 = load %struct.netif_tx_request*, %struct.netif_tx_request** %10, align 8
  %18 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.netif_tx_request*, %struct.netif_tx_request** %10, align 8
  %21 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.netif_tx_request*, %struct.netif_tx_request** %10, align 8
  %23 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %22, i32 0, i32 1
  store i32 8, i32* %23, align 8
  %24 = load %struct.netif_tx_request*, %struct.netif_tx_request** %10, align 8
  %25 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %28 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 3))
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %30 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %7, %struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1), i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 2), align 4
  %32 = call %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt* %7, i32 %31)
  store %struct.mbuf* %32, %struct.mbuf** %8, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %35 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %36 = call i32 @xnb_txpkt2gnttab(%struct.xnb_pkt* %7, %struct.mbuf* %33, %struct.TYPE_14__* %34, %struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 1), i32 %35)
  store i32 %36, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %46, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* @GNTST_okay, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %37

49:                                               ; preds = %37
  %50 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @xnb_update_mbufc(%struct.mbuf* %50, %struct.TYPE_14__* %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %91

56:                                               ; preds = %49
  %57 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @XNB_ASSERT(i32 %63)
  %65 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MCLBYTES, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @XNB_ASSERT(i32 %70)
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MCLBYTES, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @XNB_ASSERT(i32 %79)
  %81 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = call i32 @XNB_ASSERT(i32 %89)
  br label %126

91:                                               ; preds = %49
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %123

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i32
  %98 = call i32 @XNB_ASSERT(i32 %97)
  %99 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @XNB_ASSERT(i32 %105)
  %107 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %108 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @MCLBYTES, align 4
  %111 = mul nsw i32 2, %110
  %112 = icmp eq i32 %109, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @XNB_ASSERT(i32 %113)
  %115 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %116 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %115, i32 0, i32 1
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 1
  %121 = zext i1 %120 to i32
  %122 = call i32 @XNB_ASSERT(i32 %121)
  br label %125

123:                                              ; preds = %91
  %124 = call i32 @XNB_ASSERT(i32 0)
  br label %125

125:                                              ; preds = %123, %94
  br label %126

126:                                              ; preds = %125, %56
  %127 = call i32 @safe_m_freem(%struct.mbuf** %8)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_17__*) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt*, i32) #1

declare dso_local i32 @xnb_txpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, %struct.TYPE_14__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @xnb_update_mbufc(%struct.mbuf*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
