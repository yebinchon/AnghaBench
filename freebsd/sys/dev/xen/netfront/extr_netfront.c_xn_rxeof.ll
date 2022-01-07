; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_rxq = type { %struct.TYPE_11__, %struct.lro_ctrl, %struct.netfront_info* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.lro_ctrl = type { i64 }
%struct.netfront_info = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.ifnet* }
%struct.netfront_rx_info = type { %struct.netif_extra_info*, %struct.netif_rx_response }
%struct.netif_extra_info = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.netif_rx_response = type { i32 }
%struct.mbufq = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@NETRXF_data_validated = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@NETRXF_extra_info = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_GSO = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_rxq*)* @xn_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_rxeof(%struct.netfront_rxq* %0) #0 {
  %2 = alloca %struct.netfront_rxq*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.netfront_info*, align 8
  %5 = alloca %struct.netfront_rx_info, align 8
  %6 = alloca %struct.netif_rx_response*, align 8
  %7 = alloca %struct.netif_extra_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbufq, align 4
  %12 = alloca %struct.mbufq, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.netfront_rxq* %0, %struct.netfront_rxq** %2, align 8
  %15 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %16 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %15, i32 0, i32 2
  %17 = load %struct.netfront_info*, %struct.netfront_info** %16, align 8
  store %struct.netfront_info* %17, %struct.netfront_info** %4, align 8
  %18 = getelementptr inbounds %struct.netfront_rx_info, %struct.netfront_rx_info* %5, i32 0, i32 1
  store %struct.netif_rx_response* %18, %struct.netif_rx_response** %6, align 8
  %19 = getelementptr inbounds %struct.netfront_rx_info, %struct.netfront_rx_info* %5, i32 0, i32 0
  %20 = load %struct.netif_extra_info*, %struct.netif_extra_info** %19, align 8
  store %struct.netif_extra_info* %20, %struct.netif_extra_info** %7, align 8
  %21 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %22 = call i32 @XN_RX_LOCK_ASSERT(%struct.netfront_rxq* %21)
  %23 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %24 = call i32 @netfront_carrier_ok(%struct.netfront_info* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %167

27:                                               ; preds = %1
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = call i32 @mbufq_init(%struct.mbufq* %12, i32 %28)
  %30 = load i32, i32* @INT_MAX, align 4
  %31 = call i32 @mbufq_init(%struct.mbufq* %11, i32 %30)
  %32 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %33 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %32, i32 0, i32 0
  %34 = load %struct.ifnet*, %struct.ifnet** %33, align 8
  store %struct.ifnet* %34, %struct.ifnet** %3, align 8
  br label %35

35:                                               ; preds = %149, %27
  %36 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %37 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = call i32 (...) @rmb()
  %43 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %44 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %135, %72, %35
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %138

51:                                               ; preds = %47
  %52 = load %struct.netif_rx_response*, %struct.netif_rx_response** %6, align 8
  %53 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %54 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %53, i32 0, i32 0
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @RING_GET_RESPONSE(%struct.TYPE_11__* %54, i32 %55)
  %57 = call i32 @memcpy(%struct.netif_rx_response* %52, i32 %56, i32 4)
  %58 = load %struct.netif_extra_info*, %struct.netif_extra_info** %7, align 8
  %59 = call i32 @memset(%struct.netif_extra_info* %58, i32 0, i32 8)
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  %60 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @xn_get_responses(%struct.netfront_rxq* %60, %struct.netfront_rx_info* %5, i32 %61, i32* %8, %struct.mbuf** %10)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @__predict_false(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %51
  %67 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %68 = icmp ne %struct.mbuf* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %71 = call i32 @mbufq_enqueue(%struct.mbufq* %12, %struct.mbuf* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %74 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %75 = call i32 @if_inc_counter(%struct.ifnet* %73, i32 %74, i32 1)
  br label %47

76:                                               ; preds = %51
  %77 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  store %struct.ifnet* %77, %struct.ifnet** %80, align 8
  %81 = load %struct.netif_rx_response*, %struct.netif_rx_response** %6, align 8
  %82 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NETRXF_data_validated, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %76
  %88 = load i32, i32* @CSUM_DATA_VALID, align 4
  %89 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  store i32 65535, i32* %98, align 4
  br label %99

99:                                               ; preds = %87, %76
  %100 = load %struct.netif_rx_response*, %struct.netif_rx_response** %6, align 8
  %101 = getelementptr inbounds %struct.netif_rx_response, %struct.netif_rx_response* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NETRXF_extra_info, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %99
  %107 = load %struct.netif_extra_info*, %struct.netif_extra_info** %7, align 8
  %108 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_GSO, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %107, i64 %110
  %112 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_GSO, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %106
  %117 = load %struct.netif_extra_info*, %struct.netif_extra_info** %7, align 8
  %118 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_GSO, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %117, i64 %120
  %122 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %127 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* @CSUM_TSO, align 4
  %130 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %131 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %116, %106, %99
  %136 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %137 = call i32 @mbufq_enqueue(%struct.mbufq* %11, %struct.mbuf* %136)
  br label %47

138:                                              ; preds = %47
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %141 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %144 = call i32 @xn_alloc_rx_buffers(%struct.netfront_rxq* %143)
  %145 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %146 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %145, i32 0, i32 0
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_11__* %146, i32 %147)
  br label %149

149:                                              ; preds = %138
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %35, label %152

152:                                              ; preds = %149
  %153 = call i32 @mbufq_drain(%struct.mbufq* %12)
  br label %154

154:                                              ; preds = %157, %152
  %155 = call %struct.mbuf* @mbufq_dequeue(%struct.mbufq* %11)
  store %struct.mbuf* %155, %struct.mbuf** %10, align 8
  %156 = icmp ne %struct.mbuf* %155, null
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %159 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %160 = call i32 @if_inc_counter(%struct.ifnet* %158, i32 %159, i32 1)
  %161 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %162 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %161, i32 0, i32 1
  %163 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %162, align 8
  %164 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %165 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %166 = call i32 %163(%struct.ifnet* %164, %struct.mbuf* %165)
  br label %154

167:                                              ; preds = %26, %154
  ret void
}

declare dso_local i32 @XN_RX_LOCK_ASSERT(%struct.netfront_rxq*) #1

declare dso_local i32 @netfront_carrier_ok(%struct.netfront_info*) #1

declare dso_local i32 @mbufq_init(%struct.mbufq*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @memcpy(%struct.netif_rx_response*, i32, i32) #1

declare dso_local i32 @RING_GET_RESPONSE(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memset(%struct.netif_extra_info*, i32, i32) #1

declare dso_local i32 @xn_get_responses(%struct.netfront_rxq*, %struct.netfront_rx_info*, i32, i32*, %struct.mbuf**) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @mbufq_enqueue(%struct.mbufq*, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @xn_alloc_rx_buffers(%struct.netfront_rxq*) #1

declare dso_local i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mbufq_drain(%struct.mbufq*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(%struct.mbufq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
