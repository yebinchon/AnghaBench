; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }
%struct.epoch_tracker = type { i32 }
%struct.inpcb = type { i32 }
%struct.sockaddr_in6 = type { i64, i32 }
%struct.ifaddr = type { i32 }
%struct.in6_ifaddr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"rip6_bind: inp == NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V_ifnet = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@V_ip6_use_defzone = common dso_local global i32 0, align 4
@IN6_IFF_ANYCAST = common dso_local global i32 0, align 4
@IN6_IFF_NOTREADY = common dso_local global i32 0, align 4
@IN6_IFF_DETACHED = common dso_local global i32 0, align 4
@IN6_IFF_DEPRECATED = common dso_local global i32 0, align 4
@V_ripcbinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)* @rip6_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip6_bind(%struct.socket* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.epoch_tracker, align 4
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.ifaddr*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %14, %struct.sockaddr_in6** %10, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = call %struct.inpcb* @sotoinpcb(%struct.socket* %15)
  store %struct.inpcb* %16, %struct.inpcb** %9, align 8
  %17 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %18 = icmp ne %struct.inpcb* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 16
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %111

28:                                               ; preds = %3
  %29 = load %struct.thread*, %struct.thread** %7, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 1
  %34 = call i32 @prison_check_ip6(i32 %31, i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %111

38:                                               ; preds = %28
  %39 = call i64 @CK_STAILQ_EMPTY(i32* @V_ifnet)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET6, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %38
  %48 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %48, i32* %4, align 4
  br label %111

49:                                               ; preds = %41
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %51 = load i32, i32* @V_ip6_use_defzone, align 4
  %52 = call i32 @sa6_embedscope(%struct.sockaddr_in6* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %111

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @NET_EPOCH_ENTER(i32 %58)
  %60 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %60, i32 0, i32 1
  %62 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %56
  %65 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %66 = bitcast %struct.sockaddr_in6* %65 to %struct.sockaddr*
  %67 = call %struct.ifaddr* @ifa_ifwithaddr(%struct.sockaddr* %66)
  store %struct.ifaddr* %67, %struct.ifaddr** %11, align 8
  %68 = icmp eq %struct.ifaddr* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @NET_EPOCH_EXIT(i32 %71)
  %73 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %73, i32* %4, align 4
  br label %111

74:                                               ; preds = %64, %56
  %75 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %76 = icmp ne %struct.ifaddr* %75, null
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %79 = bitcast %struct.ifaddr* %78 to %struct.in6_ifaddr*
  %80 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IN6_IFF_ANYCAST, align 4
  %83 = load i32, i32* @IN6_IFF_NOTREADY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @IN6_IFF_DETACHED, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IN6_IFF_DEPRECATED, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %81, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %77
  %92 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @NET_EPOCH_EXIT(i32 %93)
  %95 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %95, i32* %4, align 4
  br label %111

96:                                               ; preds = %77, %74
  %97 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @NET_EPOCH_EXIT(i32 %98)
  %100 = call i32 @INP_INFO_WLOCK(i32* @V_ripcbinfo)
  %101 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %102 = call i32 @INP_WLOCK(%struct.inpcb* %101)
  %103 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %104 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %107 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %109 = call i32 @INP_WUNLOCK(%struct.inpcb* %108)
  %110 = call i32 @INP_INFO_WUNLOCK(i32* @V_ripcbinfo)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %96, %91, %69, %54, %47, %36, %26
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @prison_check_ip6(i32, i32*) #1

declare dso_local i64 @CK_STAILQ_EMPTY(i32*) #1

declare dso_local i32 @sa6_embedscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr(%struct.sockaddr*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @INP_INFO_WLOCK(i32*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_INFO_WUNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
