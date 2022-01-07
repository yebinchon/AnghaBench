; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_sdp_format_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_sdp_format_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_hh = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_id_private = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@SDP_MAJ_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdp_hh*, %struct.rdma_id_private*)* @sdp_format_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_format_hdr(%struct.sdp_hh* %0, %struct.rdma_id_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdp_hh*, align 8
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sdp_hh* %0, %struct.sdp_hh** %4, align 8
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %5, align 8
  %10 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %11 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @sdp_get_majv(i32 %12)
  %14 = load i64, i64* @SDP_MAJ_VERSION, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %98

19:                                               ; preds = %2
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %21 = call i64 @cma_family(%struct.rdma_id_private* %20)
  %22 = load i64, i64* @AF_INET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %26 = call i64 @cma_src_addr(%struct.rdma_id_private* %25)
  %27 = inttoptr i64 %26 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %27, %struct.sockaddr_in** %6, align 8
  %28 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %29 = call i64 @cma_dst_addr(%struct.rdma_id_private* %28)
  %30 = inttoptr i64 %29 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %30, %struct.sockaddr_in** %7, align 8
  %31 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %32 = call i32 @sdp_set_ip_ver(%struct.sdp_hh* %31, i32 4)
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %38 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %46 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %53 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %97

54:                                               ; preds = %19
  %55 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %56 = call i64 @cma_family(%struct.rdma_id_private* %55)
  %57 = load i64, i64* @AF_INET6, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %54
  %60 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %61 = call i64 @cma_src_addr(%struct.rdma_id_private* %60)
  %62 = inttoptr i64 %61 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %62, %struct.sockaddr_in6** %8, align 8
  %63 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %64 = call i64 @cma_dst_addr(%struct.rdma_id_private* %63)
  %65 = inttoptr i64 %64 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %65, %struct.sockaddr_in6** %9, align 8
  %66 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %67 = call i32 @sdp_set_ip_ver(%struct.sdp_hh* %66, i32 6)
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %72 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %78 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %84 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %86 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = call i32 @cma_ip6_clear_scope_id(i32* %87)
  %89 = load %struct.sdp_hh*, %struct.sdp_hh** %4, align 8
  %90 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = call i32 @cma_ip6_clear_scope_id(i32* %91)
  br label %96

93:                                               ; preds = %54
  %94 = load i32, i32* @EAFNOSUPPORT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %59
  br label %97

97:                                               ; preds = %96, %24
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %93, %16
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @sdp_get_majv(i32) #1

declare dso_local i64 @cma_family(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @sdp_set_ip_ver(%struct.sdp_hh*, i32) #1

declare dso_local i32 @cma_ip6_clear_scope_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
