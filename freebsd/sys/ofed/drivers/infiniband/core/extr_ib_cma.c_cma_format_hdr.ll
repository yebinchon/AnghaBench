; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_format_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_format_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.cma_hdr = type { %struct.TYPE_12__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@RDMA_PS_SDP = common dso_local global i64 0, align 8
@CMA_VERSION = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rdma_id_private*)* @cma_format_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_format_hdr(i8* %0, %struct.rdma_id_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.cma_hdr*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %5, align 8
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %12 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RDMA_PS_SDP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %20 = call i32 @sdp_format_hdr(i8* %18, %struct.rdma_id_private* %19)
  store i32 %20, i32* %3, align 4
  br label %102

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to %struct.cma_hdr*
  store %struct.cma_hdr* %23, %struct.cma_hdr** %6, align 8
  %24 = load i32, i32* @CMA_VERSION, align 4
  %25 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %28 = call i64 @cma_family(%struct.rdma_id_private* %27)
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %21
  %32 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %33 = call i64 @cma_src_addr(%struct.rdma_id_private* %32)
  %34 = inttoptr i64 %33 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %34, %struct.sockaddr_in** %7, align 8
  %35 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %36 = call i64 @cma_dst_addr(%struct.rdma_id_private* %35)
  %37 = inttoptr i64 %36 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %37, %struct.sockaddr_in** %8, align 8
  %38 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %39 = call i32 @cma_set_ip_ver(%struct.cma_hdr* %38, i32 4)
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %53 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %60 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %101

61:                                               ; preds = %21
  %62 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %63 = call i64 @cma_family(%struct.rdma_id_private* %62)
  %64 = load i64, i64* @AF_INET6, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %61
  %67 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %68 = call i64 @cma_src_addr(%struct.rdma_id_private* %67)
  %69 = inttoptr i64 %68 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %69, %struct.sockaddr_in6** %9, align 8
  %70 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %71 = call i64 @cma_dst_addr(%struct.rdma_id_private* %70)
  %72 = inttoptr i64 %71 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %72, %struct.sockaddr_in6** %10, align 8
  %73 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %74 = call i32 @cma_set_ip_ver(%struct.cma_hdr* %73, i32 6)
  %75 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %79 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %85 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %88 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %91 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %93 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = call i32 @cma_ip6_clear_scope_id(i32* %94)
  %96 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %97 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = call i32 @cma_ip6_clear_scope_id(i32* %98)
  br label %100

100:                                              ; preds = %66, %61
  br label %101

101:                                              ; preds = %100, %31
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @sdp_format_hdr(i8*, %struct.rdma_id_private*) #1

declare dso_local i64 @cma_family(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_set_ip_ver(%struct.cma_hdr*, i32) #1

declare dso_local i32 @cma_ip6_clear_scope_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
