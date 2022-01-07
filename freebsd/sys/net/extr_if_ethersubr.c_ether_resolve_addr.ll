; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_resolve_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_resolve_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32* }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.route = type { i32 }
%struct.llentry = type { i32 }
%struct.ether_header = type { i32*, i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"can't handle af%d\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@LLE_IFADDR = common dso_local global i32 0, align 4
@M_BCAST = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@RT_HAS_GW = common dso_local global i32 0, align 4
@RT_L2_ME = common dso_local global i32 0, align 4
@RT_MAY_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*, i32*, i32*, %struct.llentry**)* @ether_resolve_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_resolve_addr(%struct.ifnet* %0, %struct.mbuf* %1, %struct.sockaddr* %2, %struct.route* %3, i32* %4, i32* %5, %struct.llentry** %6) #0 {
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.route*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.llentry**, align 8
  %15 = alloca %struct.ether_header*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %8, align 8
  store %struct.mbuf* %1, %struct.mbuf** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store %struct.route* %3, %struct.route** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.llentry** %6, %struct.llentry*** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.llentry**, %struct.llentry*** %14, align 8
  %19 = icmp ne %struct.llentry** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load %struct.llentry**, %struct.llentry*** %14, align 8
  store %struct.llentry* null, %struct.llentry** %21, align 8
  br label %22

22:                                               ; preds = %20, %7
  %23 = load i32*, i32** %12, align 8
  %24 = bitcast i32* %23 to %struct.ether_header*
  store %struct.ether_header* %24, %struct.ether_header** %15, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %28 [
  ]

28:                                               ; preds = %22
  %29 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @if_printf(%struct.ifnet* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %35 = icmp ne %struct.mbuf* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %38 = call i32 @m_freem(%struct.mbuf* %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* @EAFNOSUPPORT, align 4
  ret i32 %40
}

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
