; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_offloadings.c_vnet_hdr_is_bad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_offloadings.c_vnet_hdr_is_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_vnet_hdr = type { i64, i32 }

@VIRTIO_NET_HDR_GSO_ECN = common dso_local global i64 0, align 8
@VIRTIO_NET_HDR_GSO_NONE = common dso_local global i64 0, align 8
@VIRTIO_NET_HDR_GSO_TCPV4 = common dso_local global i64 0, align 8
@VIRTIO_NET_HDR_GSO_UDP = common dso_local global i64 0, align 8
@VIRTIO_NET_HDR_GSO_TCPV6 = common dso_local global i64 0, align 8
@VIRTIO_NET_HDR_F_NEEDS_CSUM = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_F_DATA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nm_vnet_hdr*)* @vnet_hdr_is_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_hdr_is_bad(%struct.nm_vnet_hdr* %0) #0 {
  %2 = alloca %struct.nm_vnet_hdr*, align 8
  %3 = alloca i64, align 8
  store %struct.nm_vnet_hdr* %0, %struct.nm_vnet_hdr** %2, align 8
  %4 = load %struct.nm_vnet_hdr*, %struct.nm_vnet_hdr** %2, align 8
  %5 = getelementptr inbounds %struct.nm_vnet_hdr, %struct.nm_vnet_hdr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @VIRTIO_NET_HDR_GSO_ECN, align 8
  %8 = xor i64 %7, -1
  %9 = and i64 %6, %8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @VIRTIO_NET_HDR_GSO_NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @VIRTIO_NET_HDR_GSO_TCPV4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @VIRTIO_NET_HDR_GSO_UDP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @VIRTIO_NET_HDR_GSO_TCPV6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %21, %17, %13, %1
  %26 = load %struct.nm_vnet_hdr*, %struct.nm_vnet_hdr** %2, align 8
  %27 = getelementptr inbounds %struct.nm_vnet_hdr, %struct.nm_vnet_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 4
  %30 = load i32, i32* @VIRTIO_NET_HDR_F_DATA_VALID, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %25, %21
  %36 = phi i1 [ true, %21 ], [ %34, %25 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
