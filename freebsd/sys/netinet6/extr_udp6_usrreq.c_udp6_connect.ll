; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }
%struct.inpcb = type { i32, i32, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.inpcbinfo = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"udp6_connect: inp == NULL\00", align 1
@EISCONN = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)* @udp6_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_connect(%struct.socket* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.inpcbinfo*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inpcbinfo* @udp_get_inpcbinfo(i32 %16)
  store %struct.inpcbinfo* %17, %struct.inpcbinfo** %8, align 8
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = call %struct.inpcb* @sotoinpcb(%struct.socket* %18)
  store %struct.inpcb* %19, %struct.inpcb** %7, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %21, %struct.sockaddr_in6** %9, align 8
  %22 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %23 = icmp ne %struct.inpcb* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %27 = call i32 @INP_WLOCK(%struct.inpcb* %26)
  %28 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %29 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %28, i32 0, i32 4
  %30 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @EISCONN, align 4
  store i32 %33, i32* %10, align 4
  br label %93

34:                                               ; preds = %3
  %35 = load %struct.thread*, %struct.thread** %6, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 0
  %40 = call i32 @prison_remote_ip6(i32 %37, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %93

44:                                               ; preds = %34
  %45 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %11, align 8
  %50 = load i32, i32* @INP_IPV4, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @INP_IPV6, align 4
  %57 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %58 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.inpcbinfo*, %struct.inpcbinfo** %8, align 8
  %62 = call i32 @INP_HASH_WLOCK(%struct.inpcbinfo* %61)
  %63 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %64 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %65 = load %struct.thread*, %struct.thread** %6, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @in6_pcbconnect(%struct.inpcb* %63, %struct.sockaddr* %64, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.inpcbinfo*, %struct.inpcbinfo** %8, align 8
  %70 = call i32 @INP_HASH_WUNLOCK(%struct.inpcbinfo* %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %44
  %74 = load %struct.socket*, %struct.socket** %4, align 8
  %75 = call i32 @soisconnected(%struct.socket* %74)
  br label %92

76:                                               ; preds = %44
  %77 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %78 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %77, i32 0, i32 3
  %79 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %83 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i8*, i8** %11, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %90 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %81, %76
  br label %92

92:                                               ; preds = %91, %73
  br label %93

93:                                               ; preds = %92, %43, %32
  %94 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %95 = call i32 @INP_WUNLOCK(%struct.inpcb* %94)
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local %struct.inpcbinfo* @udp_get_inpcbinfo(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @prison_remote_ip6(i32, i32*) #1

declare dso_local i32 @INP_HASH_WLOCK(%struct.inpcbinfo*) #1

declare dso_local i32 @in6_pcbconnect(%struct.inpcb*, %struct.sockaddr*, i32) #1

declare dso_local i32 @INP_HASH_WUNLOCK(%struct.inpcbinfo*) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
