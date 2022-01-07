; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_get_header_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_get_header_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.rdma_network_hdr = type { i32 }
%struct.ip = type { i32, i32, i64 }
%struct.ip6_hdr = type { i32 }

@IPV6_VERSION_MASK = common dso_local global i32 0, align 4
@IPV6_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.rdma_network_hdr*)* @ib_get_header_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_get_header_version(%union.rdma_network_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.rdma_network_hdr*, align 8
  %4 = alloca %struct.ip*, align 8
  %5 = alloca %struct.ip, align 8
  %6 = alloca %struct.ip6_hdr*, align 8
  store %union.rdma_network_hdr* %0, %union.rdma_network_hdr** %3, align 8
  %7 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %3, align 8
  %8 = bitcast %union.rdma_network_hdr* %7 to i32*
  %9 = bitcast i32* %8 to %struct.ip*
  store %struct.ip* %9, %struct.ip** %4, align 8
  %10 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %3, align 8
  %11 = bitcast %union.rdma_network_hdr* %10 to i32*
  %12 = bitcast i32* %11 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %12, %struct.ip6_hdr** %6, align 8
  %13 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %14 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IPV6_VERSION_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @IPV6_VERSION, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.ip*, %struct.ip** %4, align 8
  %22 = getelementptr inbounds %struct.ip, %struct.ip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 4
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 4, i32 0
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.ip*, %struct.ip** %4, align 8
  %29 = getelementptr inbounds %struct.ip, %struct.ip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 6, i32* %2, align 4
  br label %45

33:                                               ; preds = %27
  %34 = load %struct.ip*, %struct.ip** %4, align 8
  %35 = call i32 @memcpy(%struct.ip* %5, %struct.ip* %34, i32 16)
  %36 = getelementptr inbounds %struct.ip, %struct.ip* %5, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.ip*, %struct.ip** %4, align 8
  %38 = getelementptr inbounds %struct.ip, %struct.ip* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.ip, %struct.ip* %5, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 4, i32* %2, align 4
  br label %45

44:                                               ; preds = %33
  store i32 6, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %32, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @memcpy(%struct.ip*, %struct.ip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
