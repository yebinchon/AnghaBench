; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_match_private_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_match_private_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.cma_hdr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@RDMA_PS_SDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i8*)* @cma_match_private_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_match_private_data(%struct.rdma_id_private* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cma_hdr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cma_hdr*
  store %struct.cma_hdr* %11, %struct.cma_hdr** %6, align 8
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %13 = call %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private* %12)
  store %struct.sockaddr* %13, %struct.sockaddr** %7, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = call i64 @cma_any_addr(%struct.sockaddr* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %19 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %89

23:                                               ; preds = %17, %2
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %25 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RDMA_PS_SDP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %34 = call i32 @sdp_match_private_data(%struct.rdma_id_private* %31, i8* %32, %struct.sockaddr* %33)
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %23
  %36 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %87 [
    i32 129, label %39
    i32 128, label %63
    i32 130, label %86
  ]

39:                                               ; preds = %35
  %40 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %41 = bitcast %struct.sockaddr* %40 to %struct.sockaddr_in*
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %46 = call i32 @cma_get_ip_ver(%struct.cma_hdr* %45)
  %47 = icmp ne i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %89

49:                                               ; preds = %39
  %50 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %51 = call i64 @cma_any_addr(%struct.sockaddr* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %55 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %89

62:                                               ; preds = %53, %49
  br label %88

63:                                               ; preds = %35
  %64 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %65 = bitcast %struct.sockaddr* %64 to %struct.sockaddr_in6*
  %66 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %65, i32 0, i32 0
  %67 = bitcast %struct.in6_addr* %9 to i8*
  %68 = bitcast %struct.in6_addr* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %70 = call i32 @cma_get_ip_ver(%struct.cma_hdr* %69)
  %71 = icmp ne i32 %70, 6
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %89

73:                                               ; preds = %63
  %74 = call i32 @cma_ip6_clear_scope_id(%struct.in6_addr* %9)
  %75 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %76 = call i64 @cma_any_addr(%struct.sockaddr* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %80 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = call i32 @memcmp(i32* %81, %struct.in6_addr* %9, i32 4)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %89

85:                                               ; preds = %78, %73
  br label %88

86:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %89

87:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %89

88:                                               ; preds = %85, %62
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %86, %84, %72, %61, %48, %30, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_any_addr(%struct.sockaddr*) #1

declare dso_local i32 @sdp_match_private_data(%struct.rdma_id_private*, i8*, %struct.sockaddr*) #1

declare dso_local i32 @cma_get_ip_ver(%struct.cma_hdr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cma_ip6_clear_scope_id(%struct.in6_addr*) #1

declare dso_local i32 @memcmp(i32*, %struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
