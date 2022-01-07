; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.thread = type { i32 }
%struct.inpcb = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"rip6_send: inp == NULL\00", align 1
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"rip6 SEND: address family is unspec. Assume AF_INET6\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*)* @rip6_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip6_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.thread* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.inpcb*, align 8
  %15 = alloca %struct.sockaddr_in6, align 8
  %16 = alloca %struct.sockaddr_in6*, align 8
  %17 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store %struct.thread* %5, %struct.thread** %13, align 8
  %18 = load %struct.socket*, %struct.socket** %8, align 8
  %19 = call %struct.inpcb* @sotoinpcb(%struct.socket* %18)
  store %struct.inpcb* %19, %struct.inpcb** %14, align 8
  %20 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %21 = icmp ne %struct.inpcb* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.socket*, %struct.socket** %8, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SS_ISCONNECTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %6
  %31 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %32 = icmp ne %struct.sockaddr* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %35 = call i32 @m_freem(%struct.mbuf* %34)
  %36 = load i32, i32* @EISCONN, align 4
  store i32 %36, i32* %7, align 4
  br label %102

37:                                               ; preds = %30
  %38 = call i32 @bzero(%struct.sockaddr_in6* %15, i32 16)
  %39 = load i64, i64* @AF_INET6, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 1
  store i32 16, i32* %41, align 8
  %42 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %43 = call i32 @INP_RLOCK(%struct.inpcb* %42)
  %44 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %45 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 2
  %47 = call i32 @bcopy(i32* %45, i32* %46, i32 4)
  %48 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %49 = call i32 @INP_RUNLOCK(%struct.inpcb* %48)
  store %struct.sockaddr_in6* %15, %struct.sockaddr_in6** %16, align 8
  br label %95

50:                                               ; preds = %6
  %51 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %52 = icmp eq %struct.sockaddr* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %55 = call i32 @m_freem(%struct.mbuf* %54)
  %56 = load i32, i32* @ENOTCONN, align 4
  store i32 %56, i32* %7, align 4
  br label %102

57:                                               ; preds = %50
  %58 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %59 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 16
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %65 = call i32 @m_freem(%struct.mbuf* %64)
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %7, align 4
  br label %102

67:                                               ; preds = %57
  %68 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %69 = bitcast %struct.sockaddr* %68 to %struct.sockaddr_in6*
  %70 = bitcast %struct.sockaddr_in6* %15 to i8*
  %71 = bitcast %struct.sockaddr_in6* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  store %struct.sockaddr_in6* %15, %struct.sockaddr_in6** %16, align 8
  %72 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AF_UNSPEC, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load i32, i32* @LOG_INFO, align 4
  %79 = call i32 @log(i32 %78, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i64, i64* @AF_INET6, align 8
  %81 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %94

83:                                               ; preds = %67
  %84 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AF_INET6, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %91 = call i32 @m_freem(%struct.mbuf* %90)
  %92 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %92, i32* %7, align 4
  br label %102

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %77
  br label %95

95:                                               ; preds = %94, %37
  %96 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %97 = load %struct.socket*, %struct.socket** %8, align 8
  %98 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %100 = call i32 @rip6_output(%struct.mbuf* %96, %struct.socket* %97, %struct.sockaddr_in6* %98, %struct.mbuf* %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %95, %89, %63, %53, %33
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @INP_RLOCK(%struct.inpcb*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @INP_RUNLOCK(%struct.inpcb*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @rip6_output(%struct.mbuf*, %struct.socket*, %struct.sockaddr_in6*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
