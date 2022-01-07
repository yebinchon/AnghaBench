; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_rem_ifa_lle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_rem_ifa_lle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@LLE_STATIC = common dso_local global i32 0, align 4
@LLE_IFADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_rem_ifa_lle(%struct.in6_ifaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca %struct.sockaddr_in6, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.ifnet*, align 8
  store %struct.in6_ifaddr* %0, %struct.in6_ifaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %11 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %9, align 8
  %14 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %15 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %14, i32 0, i32 1
  %16 = call i32 @memcpy(%struct.sockaddr_in6* %6, i32* %15, i32 4)
  %17 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %18 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %17, i32 0, i32 0
  %19 = call i32 @memcpy(%struct.sockaddr_in6* %5, i32* %18, i32 4)
  %20 = bitcast %struct.sockaddr_in6* %6 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %7, align 8
  %21 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  store %struct.sockaddr* %21, %struct.sockaddr** %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @AF_INET6, align 4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = load i32, i32* @LLE_STATIC, align 4
  %29 = call i32 @lltable_prefix_free(i32 %25, %struct.sockaddr* %26, %struct.sockaddr* %27, i32 %28)
  br label %36

30:                                               ; preds = %2
  %31 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %32 = call i32 @LLTABLE6(%struct.ifnet* %31)
  %33 = load i32, i32* @LLE_IFADDR, align 4
  %34 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %35 = call i32 @lltable_delete_addr(i32 %32, i32 %33, %struct.sockaddr* %34)
  br label %36

36:                                               ; preds = %30, %24
  ret void
}

declare dso_local i32 @memcpy(%struct.sockaddr_in6*, i32*, i32) #1

declare dso_local i32 @lltable_prefix_free(i32, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @lltable_delete_addr(i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @LLTABLE6(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
