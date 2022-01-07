; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ifnet = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@ND6_LLINFO_NOSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llentry* (%struct.in6_addr*, i32, %struct.ifnet*)* @nd6_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llentry* @nd6_alloc(%struct.in6_addr* %0, i32 %1, %struct.ifnet* %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.sockaddr_in6, align 4
  %8 = alloca %struct.llentry*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ifnet* %2, %struct.ifnet** %6, align 8
  %9 = call i32 @bzero(%struct.sockaddr_in6* %7, i32 12)
  %10 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  store i32 12, i32* %10, align 4
  %11 = load i32, i32* @AF_INET6, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  %14 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %15 = bitcast %struct.in6_addr* %13 to i8*
  %16 = bitcast %struct.in6_addr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %18 = call i32 @LLTABLE6(%struct.ifnet* %17)
  %19 = bitcast %struct.sockaddr_in6* %7 to %struct.sockaddr*
  %20 = call %struct.llentry* @lltable_alloc_entry(i32 %18, i32 0, %struct.sockaddr* %19)
  store %struct.llentry* %20, %struct.llentry** %8, align 8
  %21 = load %struct.llentry*, %struct.llentry** %8, align 8
  %22 = icmp ne %struct.llentry* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @ND6_LLINFO_NOSTATE, align 4
  %25 = load %struct.llentry*, %struct.llentry** %8, align 8
  %26 = getelementptr inbounds %struct.llentry, %struct.llentry* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.llentry*, %struct.llentry** %8, align 8
  ret %struct.llentry* %28
}

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.llentry* @lltable_alloc_entry(i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @LLTABLE6(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
