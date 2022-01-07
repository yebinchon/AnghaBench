; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_sdp_match_private_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_sdp_match_private_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32 }
%struct.sdp_hh = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.sdp_hh*, %struct.sockaddr*)* @sdp_match_private_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_match_private_data(%struct.rdma_id_private* %0, %struct.sdp_hh* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.sdp_hh*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %5, align 8
  store %struct.sdp_hh* %1, %struct.sdp_hh** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %61 [
    i32 129, label %13
    i32 128, label %37
    i32 130, label %60
  ]

13:                                               ; preds = %3
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in*
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sdp_hh*, %struct.sdp_hh** %6, align 8
  %20 = call i32 @sdp_get_ip_ver(%struct.sdp_hh* %19)
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %63

23:                                               ; preds = %13
  %24 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %25 = call i32 @cma_any_addr(%struct.sockaddr* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = load %struct.sdp_hh*, %struct.sdp_hh** %6, align 8
  %29 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %63

36:                                               ; preds = %27, %23
  br label %62

37:                                               ; preds = %3
  %38 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %39 = bitcast %struct.sockaddr* %38 to %struct.sockaddr_in6*
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 0
  %41 = bitcast %struct.in6_addr* %9 to i8*
  %42 = bitcast %struct.in6_addr* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.sdp_hh*, %struct.sdp_hh** %6, align 8
  %44 = call i32 @sdp_get_ip_ver(%struct.sdp_hh* %43)
  %45 = icmp ne i32 %44, 6
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %63

47:                                               ; preds = %37
  %48 = call i32 @cma_ip6_clear_scope_id(%struct.in6_addr* %9)
  %49 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %50 = call i32 @cma_any_addr(%struct.sockaddr* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load %struct.sdp_hh*, %struct.sdp_hh** %6, align 8
  %54 = getelementptr inbounds %struct.sdp_hh, %struct.sdp_hh* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @memcmp(i32* %55, %struct.in6_addr* %9, i32 4)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %63

59:                                               ; preds = %52, %47
  br label %62

60:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %63

61:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %59, %36
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %60, %58, %46, %35, %22
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @sdp_get_ip_ver(%struct.sdp_hh*) #1

declare dso_local i32 @cma_any_addr(%struct.sockaddr*) #1

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
