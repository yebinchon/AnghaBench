; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }
%struct.inpcb = type { i32, i32 }
%struct.inpcbinfo = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"udp6_bind: inp == NULL\00", align 1
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)* @udp6_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_bind(%struct.socket* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.inpcbinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in6*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inpcbinfo* @udp_get_inpcbinfo(i32 %16)
  store %struct.inpcbinfo* %17, %struct.inpcbinfo** %8, align 8
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = call %struct.inpcb* @sotoinpcb(%struct.socket* %18)
  store %struct.inpcb* %19, %struct.inpcb** %7, align 8
  %20 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %21 = icmp ne %struct.inpcb* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %25 = call i32 @INP_WLOCK(%struct.inpcb* %24)
  %26 = load %struct.inpcbinfo*, %struct.inpcbinfo** %8, align 8
  %27 = call i32 @INP_HASH_WLOCK(%struct.inpcbinfo* %26)
  %28 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %29 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @INP_IPV4, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %34 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @INP_IPV6, align 4
  %38 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %3
  %49 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %50 = bitcast %struct.sockaddr* %49 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %50, %struct.sockaddr_in6** %11, align 8
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 0
  %53 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @INP_IPV4, align 4
  %57 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %58 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %48
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %64 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %65 = load %struct.thread*, %struct.thread** %6, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @in6_pcbbind(%struct.inpcb* %63, %struct.sockaddr* %64, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %74 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %62
  %76 = load %struct.inpcbinfo*, %struct.inpcbinfo** %8, align 8
  %77 = call i32 @INP_HASH_WUNLOCK(%struct.inpcbinfo* %76)
  %78 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %79 = call i32 @INP_WUNLOCK(%struct.inpcb* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local %struct.inpcbinfo* @udp_get_inpcbinfo(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_HASH_WLOCK(%struct.inpcbinfo*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @in6_pcbbind(%struct.inpcb*, %struct.sockaddr*, i32) #1

declare dso_local i32 @INP_HASH_WUNLOCK(%struct.inpcbinfo*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
