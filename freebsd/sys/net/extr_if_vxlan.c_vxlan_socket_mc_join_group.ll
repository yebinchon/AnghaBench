; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_mc_join_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_mc_join_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_socket = type { i32 }
%union.vxlan_sockaddr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockopt = type { i32, %struct.ipv6_mreq*, i32, i32, i8* }
%struct.ipv6_mreq = type { i32, i32, i32, i32 }
%struct.ip_mreq = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SOPT_SET = common dso_local global i8* null, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_JOIN_GROUP = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_socket*, %union.vxlan_sockaddr*, %union.vxlan_sockaddr*, i32*, %union.vxlan_sockaddr*)* @vxlan_socket_mc_join_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_socket_mc_join_group(%struct.vxlan_socket* %0, %union.vxlan_sockaddr* %1, %union.vxlan_sockaddr* %2, i32* %3, %union.vxlan_sockaddr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxlan_socket*, align 8
  %8 = alloca %union.vxlan_sockaddr*, align 8
  %9 = alloca %union.vxlan_sockaddr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %union.vxlan_sockaddr*, align 8
  %12 = alloca %struct.sockopt, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_mreq, align 4
  %15 = alloca %struct.ipv6_mreq, align 4
  store %struct.vxlan_socket* %0, %struct.vxlan_socket** %7, align 8
  store %union.vxlan_sockaddr* %1, %union.vxlan_sockaddr** %8, align 8
  store %union.vxlan_sockaddr* %2, %union.vxlan_sockaddr** %9, align 8
  store i32* %3, i32** %10, align 8
  store %union.vxlan_sockaddr* %4, %union.vxlan_sockaddr** %11, align 8
  %16 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %11, align 8
  %17 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %9, align 8
  %18 = bitcast %union.vxlan_sockaddr* %16 to i8*
  %19 = bitcast %union.vxlan_sockaddr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %21 = call i64 @VXLAN_SOCKADDR_IS_IPV4(%union.vxlan_sockaddr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %5
  %24 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %25 = bitcast %union.vxlan_sockaddr* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %14, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %9, align 8
  %30 = bitcast %union.vxlan_sockaddr* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %14, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = call i32 @bzero(%struct.sockopt* %12, i32 32)
  %35 = load i8*, i8** @SOPT_SET, align 8
  %36 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* @IPPROTO_IP, align 4
  %38 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  %40 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = bitcast %struct.ip_mreq* %14 to %struct.ipv6_mreq*
  %42 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 1
  store %struct.ipv6_mreq* %41, %struct.ipv6_mreq** %42, align 8
  %43 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 0
  store i32 16, i32* %43, align 8
  %44 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %45 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sosetopt(i32 %46, %struct.sockopt* %12)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %23
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %96

52:                                               ; preds = %23
  %53 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %9, align 8
  %54 = bitcast %union.vxlan_sockaddr* %53 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %11, align 8
  %58 = bitcast %union.vxlan_sockaddr* %57 to %struct.TYPE_3__*
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  br label %94

60:                                               ; preds = %5
  %61 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %62 = call i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %60
  %65 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %66 = bitcast %union.vxlan_sockaddr* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %15, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %15, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = call i32 @bzero(%struct.sockopt* %12, i32 32)
  %74 = load i8*, i8** @SOPT_SET, align 8
  %75 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 4
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @IPPROTO_IPV6, align 4
  %77 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IPV6_JOIN_GROUP, align 4
  %79 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 1
  store %struct.ipv6_mreq* %15, %struct.ipv6_mreq** %80, align 8
  %81 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %12, i32 0, i32 0
  store i32 16, i32* %81, align 8
  %82 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %83 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @sosetopt(i32 %84, %struct.sockopt* %12)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %64
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %6, align 4
  br label %96

90:                                               ; preds = %64
  br label %93

91:                                               ; preds = %60
  %92 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %91, %90
  br label %94

94:                                               ; preds = %93, %52
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %88, %50
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV4(%union.vxlan_sockaddr*) #2

declare dso_local i32 @bzero(%struct.sockopt*, i32) #2

declare dso_local i32 @sosetopt(i32, %struct.sockopt*) #2

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
