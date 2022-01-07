; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_mc_leave_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_mc_leave_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_socket = type { i32 }
%union.vxlan_sockaddr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockopt = type { i32, %struct.ipv6_mreq*, i32, i32, i32 }
%struct.ipv6_mreq = type { i32, i32, i32, i32 }
%struct.ip_mreq = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SOPT_SET = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_LEAVE_GROUP = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_socket*, %union.vxlan_sockaddr*, %union.vxlan_sockaddr*, i32)* @vxlan_socket_mc_leave_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_socket_mc_leave_group(%struct.vxlan_socket* %0, %union.vxlan_sockaddr* %1, %union.vxlan_sockaddr* %2, i32 %3) #0 {
  %5 = alloca %struct.vxlan_socket*, align 8
  %6 = alloca %union.vxlan_sockaddr*, align 8
  %7 = alloca %union.vxlan_sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockopt, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip_mreq, align 4
  %12 = alloca %struct.ipv6_mreq, align 4
  store %struct.vxlan_socket* %0, %struct.vxlan_socket** %5, align 8
  store %union.vxlan_sockaddr* %1, %union.vxlan_sockaddr** %6, align 8
  store %union.vxlan_sockaddr* %2, %union.vxlan_sockaddr** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i32 @bzero(%struct.sockopt* %9, i32 32)
  %14 = load i32, i32* @SOPT_SET, align 4
  %15 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %17 = call i64 @VXLAN_SOCKADDR_IS_IPV4(%union.vxlan_sockaddr* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %21 = bitcast %union.vxlan_sockaddr* %20 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %11, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %26 = bitcast %union.vxlan_sockaddr* %25 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %11, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @IPPROTO_IP, align 4
  %31 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @IP_DROP_MEMBERSHIP, align 4
  %33 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = bitcast %struct.ip_mreq* %11 to %struct.ipv6_mreq*
  %35 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 1
  store %struct.ipv6_mreq* %34, %struct.ipv6_mreq** %35, align 8
  %36 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 0
  store i32 16, i32* %36, align 8
  %37 = load %struct.vxlan_socket*, %struct.vxlan_socket** %5, align 8
  %38 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sosetopt(i32 %39, %struct.sockopt* %9)
  store i32 %40, i32* %10, align 4
  br label %66

41:                                               ; preds = %4
  %42 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %43 = call i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %47 = bitcast %union.vxlan_sockaddr* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %12, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %12, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IPPROTO_IPV6, align 4
  %54 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IPV6_LEAVE_GROUP, align 4
  %56 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 1
  store %struct.ipv6_mreq* %12, %struct.ipv6_mreq** %57, align 8
  %58 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 0
  store i32 16, i32* %58, align 8
  %59 = load %struct.vxlan_socket*, %struct.vxlan_socket** %5, align 8
  %60 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sosetopt(i32 %61, %struct.sockopt* %9)
  store i32 %62, i32* %10, align 4
  br label %65

63:                                               ; preds = %41
  %64 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %45
  br label %66

66:                                               ; preds = %65, %19
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @bzero(%struct.sockopt*, i32) #1

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV4(%union.vxlan_sockaddr*) #1

declare dso_local i32 @sosetopt(i32, %struct.sockopt*) #1

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
