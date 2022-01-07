; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_offload_tso.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_offload_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.vtnet_txq = type { %struct.TYPE_4__, %struct.vtnet_softc* }
%struct.TYPE_4__ = type { i32 }
%struct.vtnet_softc = type { i32, i32 }
%struct.mbuf = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.virtio_net_hdr = type { i32, i32, i32 }
%struct.tcphdr = type { i32, i32 }

@vtnet_txq_offload_tso.lastecn = internal global %struct.timeval zeroinitializer, align 4
@vtnet_txq_offload_tso.curecn = internal global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_TCPV4 = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_TCPV6 = common dso_local global i32 0, align 4
@TH_CWR = common dso_local global i32 0, align 4
@VTNET_FLAG_TSO_ECN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"TSO with ECN not negotiated with host\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_ECN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_txq*, %struct.mbuf*, i32, i32, %struct.virtio_net_hdr*)* @vtnet_txq_offload_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_txq_offload_tso(%struct.vtnet_txq* %0, %struct.mbuf* %1, i32 %2, i32 %3, %struct.virtio_net_hdr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vtnet_txq*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.virtio_net_hdr*, align 8
  %12 = alloca %struct.vtnet_softc*, align 8
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca %struct.tcphdr, align 4
  store %struct.vtnet_txq* %0, %struct.vtnet_txq** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.virtio_net_hdr* %4, %struct.virtio_net_hdr** %11, align 8
  %15 = load %struct.vtnet_txq*, %struct.vtnet_txq** %7, align 8
  %16 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %15, i32 0, i32 1
  %17 = load %struct.vtnet_softc*, %struct.vtnet_softc** %16, align 8
  store %struct.vtnet_softc* %17, %struct.vtnet_softc** %12, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 8
  %25 = icmp ult i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @__predict_false(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = ptrtoint %struct.tcphdr* %14 to i32
  %33 = call i32 @m_copydata(%struct.mbuf* %30, i32 %31, i32 8, i32 %32)
  store %struct.tcphdr* %14, %struct.tcphdr** %13, align 8
  br label %42

34:                                               ; preds = %5
  %35 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = inttoptr i64 %40 to %struct.tcphdr*
  store %struct.tcphdr* %41, %struct.tcphdr** %13, align 8
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 2
  %48 = add nsw i32 %43, %47
  %49 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %11, align 8
  %50 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %11, align 8
  %56 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ETHERTYPE_IP, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32, i32* @VIRTIO_NET_HDR_GSO_TCPV4, align 4
  br label %64

62:                                               ; preds = %42
  %63 = load i32, i32* @VIRTIO_NET_HDR_GSO_TCPV6, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %11, align 8
  %67 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %69 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TH_CWR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %64
  %75 = load %struct.vtnet_softc*, %struct.vtnet_softc** %12, align 8
  %76 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VTNET_FLAG_TSO_ECN, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = call i64 @ppsratecheck(%struct.timeval* @vtnet_txq_offload_tso.lastecn, i32* @vtnet_txq_offload_tso.curecn, i32 1)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.vtnet_softc*, %struct.vtnet_softc** %12, align 8
  %86 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @if_printf(i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %81
  %90 = load i32, i32* @ENOTSUP, align 4
  store i32 %90, i32* %6, align 4
  br label %103

91:                                               ; preds = %74
  %92 = load i32, i32* @VIRTIO_NET_HDR_GSO_ECN, align 4
  %93 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %11, align 8
  %94 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %64
  %98 = load %struct.vtnet_txq*, %struct.vtnet_txq** %7, align 8
  %99 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %97, %89
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i64 @ppsratecheck(%struct.timeval*, i32*, i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
