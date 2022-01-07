; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_in_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_in_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.vxlan_sockaddr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sockaddr = type { i64 }
%struct.in_addr = type { i64 }
%struct.in6_addr = type { i32 }
%struct.TYPE_10__ = type { %struct.in_addr }
%struct.TYPE_9__ = type { %struct.in6_addr }
%struct.TYPE_6__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.vxlan_sockaddr*, %struct.sockaddr*)* @vxlan_sockaddr_in_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_sockaddr_in_equal(%union.vxlan_sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %union.vxlan_sockaddr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  store %union.vxlan_sockaddr* %0, %union.vxlan_sockaddr** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %8 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %9 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %15 = call %struct.TYPE_10__* @satoconstsin(%struct.sockaddr* %14)
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store %struct.in_addr* %16, %struct.in_addr** %6, align 8
  %17 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %21 = bitcast %union.vxlan_sockaddr* %20 to %struct.TYPE_7__*
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  br label %44

27:                                               ; preds = %2
  %28 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %35 = call %struct.TYPE_9__* @satoconstsin6(%struct.sockaddr* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store %struct.in6_addr* %36, %struct.in6_addr** %7, align 8
  %37 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %38 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %39 = bitcast %union.vxlan_sockaddr* %38 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %37, i32* %40)
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %33
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_10__* @satoconstsin(%struct.sockaddr*) #1

declare dso_local %struct.TYPE_9__* @satoconstsin6(%struct.sockaddr*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
