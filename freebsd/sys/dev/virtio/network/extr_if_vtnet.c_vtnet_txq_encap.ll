; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_txq = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vtnet_tx_header = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.virtio_net_hdr }
%struct.virtio_net_hdr = type { i32 }

@vtnet_tx_header_zone = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@VTNET_CSUM_ALL_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_txq*, %struct.mbuf**, i32)* @vtnet_txq_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_txq_encap(%struct.vtnet_txq* %0, %struct.mbuf** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vtnet_txq*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vtnet_tx_header*, align 8
  %9 = alloca %struct.virtio_net_hdr*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  store %struct.vtnet_txq* %0, %struct.vtnet_txq** %5, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %13, %struct.mbuf** %10, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %15 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %14)
  %16 = load i32, i32* @vtnet_tx_header_zone, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.vtnet_tx_header* @uma_zalloc(i32 %16, i32 %19)
  store %struct.vtnet_tx_header* %20, %struct.vtnet_tx_header** %8, align 8
  %21 = load %struct.vtnet_tx_header*, %struct.vtnet_tx_header** %8, align 8
  %22 = icmp eq %struct.vtnet_tx_header* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %25 = call i32 @m_freem(%struct.mbuf* %24)
  %26 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %26, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %4, align 4
  br label %90

28:                                               ; preds = %3
  %29 = load %struct.vtnet_tx_header*, %struct.vtnet_tx_header** %8, align 8
  %30 = getelementptr inbounds %struct.vtnet_tx_header, %struct.vtnet_tx_header* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.virtio_net_hdr* %31, %struct.virtio_net_hdr** %9, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @M_VLANTAG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %28
  %39 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.mbuf* @ether_vlanencap(%struct.mbuf* %39, i32 %43)
  store %struct.mbuf* %44, %struct.mbuf** %10, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %46 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %45, %struct.mbuf** %46, align 8
  %47 = icmp eq %struct.mbuf* %45, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOBUFS, align 4
  store i32 %49, i32* %11, align 4
  br label %85

50:                                               ; preds = %38
  %51 = load i32, i32* @M_VLANTAG, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %28
  %58 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VTNET_CSUM_ALL_OFFLOAD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load %struct.vtnet_txq*, %struct.vtnet_txq** %5, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %68 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %9, align 8
  %69 = call %struct.mbuf* @vtnet_txq_offload(%struct.vtnet_txq* %66, %struct.mbuf* %67, %struct.virtio_net_hdr* %68)
  store %struct.mbuf* %69, %struct.mbuf** %10, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %71 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %70, %struct.mbuf** %71, align 8
  %72 = icmp eq %struct.mbuf* %70, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @ENOBUFS, align 4
  store i32 %74, i32* %11, align 4
  br label %85

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %57
  %77 = load %struct.vtnet_txq*, %struct.vtnet_txq** %5, align 8
  %78 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %79 = load %struct.vtnet_tx_header*, %struct.vtnet_tx_header** %8, align 8
  %80 = call i32 @vtnet_txq_enqueue_buf(%struct.vtnet_txq* %77, %struct.mbuf** %78, %struct.vtnet_tx_header* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %90

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %73, %48
  %86 = load i32, i32* @vtnet_tx_header_zone, align 4
  %87 = load %struct.vtnet_tx_header*, %struct.vtnet_tx_header** %8, align 8
  %88 = call i32 @uma_zfree(i32 %86, %struct.vtnet_tx_header* %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %83, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local %struct.vtnet_tx_header* @uma_zalloc(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @ether_vlanencap(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @vtnet_txq_offload(%struct.vtnet_txq*, %struct.mbuf*, %struct.virtio_net_hdr*) #1

declare dso_local i32 @vtnet_txq_enqueue_buf(%struct.vtnet_txq*, %struct.mbuf**, %struct.vtnet_tx_header*) #1

declare dso_local i32 @uma_zfree(i32, %struct.vtnet_tx_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
