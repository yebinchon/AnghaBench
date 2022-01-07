; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_free_redirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_free_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.rt_addrinfo = type { i32, %struct.sockaddr** }
%struct.sockaddr = type { i32 }

@RTAX_DST = common dso_local global i64 0, align 8
@nd6_isdynrte = common dso_local global i32 0, align 4
@rt_numfibs = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llentry*)* @nd6_free_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_free_redirect(%struct.llentry* %0) #0 {
  %2 = alloca %struct.llentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in6, align 4
  %5 = alloca %struct.rt_addrinfo, align 8
  store %struct.llentry* %0, %struct.llentry** %2, align 8
  %6 = load %struct.llentry*, %struct.llentry** %2, align 8
  %7 = bitcast %struct.sockaddr_in6* %4 to %struct.sockaddr*
  %8 = call i32 @lltable_fill_sa_entry(%struct.llentry* %6, %struct.sockaddr* %7)
  %9 = call i32 @memset(%struct.rt_addrinfo* %5, i32 0, i32 16)
  %10 = bitcast %struct.sockaddr_in6* %4 to %struct.sockaddr*
  %11 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 1
  %12 = load %struct.sockaddr**, %struct.sockaddr*** %11, align 8
  %13 = load i64, i64* @RTAX_DST, align 8
  %14 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %12, i64 %13
  store %struct.sockaddr* %10, %struct.sockaddr** %14, align 8
  %15 = load i32, i32* @nd6_isdynrte, align 4
  %16 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %25, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @rt_numfibs, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* @RTM_DELETE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @rtrequest1_fib(i32 %22, %struct.rt_addrinfo* %5, i32* null, i32 %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %17

28:                                               ; preds = %17
  ret void
}

declare dso_local i32 @lltable_fill_sa_entry(%struct.llentry*, %struct.sockaddr*) #1

declare dso_local i32 @memset(%struct.rt_addrinfo*, i32, i32) #1

declare dso_local i32 @rtrequest1_fib(i32, %struct.rt_addrinfo*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
