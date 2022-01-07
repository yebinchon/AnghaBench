; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }
%struct.inpcb = type { %struct.in6_addr, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in6 = type { i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"rip6_connect: inp == NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V_ifnet = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@V_ip6_use_defzone = common dso_local global i32 0, align 4
@V_ripcbinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)* @rip6_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip6_connect(%struct.socket* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.in6_addr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %14, %struct.sockaddr_in6** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = call %struct.inpcb* @sotoinpcb(%struct.socket* %15)
  store %struct.inpcb* %16, %struct.inpcb** %8, align 8
  %17 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %18 = icmp ne %struct.inpcb* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %93

28:                                               ; preds = %3
  %29 = call i64 @CK_STAILQ_EMPTY(i32* @V_ifnet)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %32, i32* %4, align 4
  br label %93

33:                                               ; preds = %28
  %34 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AF_INET6, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %40, i32* %4, align 4
  br label %93

41:                                               ; preds = %33
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @V_ip6_use_defzone, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %46, %41
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %52 = load i32, i32* @V_ip6_use_defzone, align 4
  %53 = call i32 @sa6_embedscope(%struct.sockaddr_in6* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %93

57:                                               ; preds = %50
  %58 = call i32 @INP_INFO_WLOCK(i32* @V_ripcbinfo)
  %59 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %60 = call i32 @INP_WLOCK(%struct.inpcb* %59)
  %61 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %62 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %63 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %66 = load %struct.socket*, %struct.socket** %5, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @in6_selectsrc_socket(%struct.sockaddr_in6* %61, i32 %64, %struct.inpcb* %65, i32 %68, i32 %69, %struct.in6_addr* %10, i32* null)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %57
  %74 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %75 = call i32 @INP_WUNLOCK(%struct.inpcb* %74)
  %76 = call i32 @INP_INFO_WUNLOCK(i32* @V_ripcbinfo)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %93

78:                                               ; preds = %57
  %79 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %83 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %85 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %84, i32 0, i32 0
  %86 = bitcast %struct.in6_addr* %85 to i8*
  %87 = bitcast %struct.in6_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  %88 = load %struct.socket*, %struct.socket** %5, align 8
  %89 = call i32 @soisconnected(%struct.socket* %88)
  %90 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %91 = call i32 @INP_WUNLOCK(%struct.inpcb* %90)
  %92 = call i32 @INP_INFO_WUNLOCK(i32* @V_ripcbinfo)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %78, %73, %55, %39, %31, %26
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @CK_STAILQ_EMPTY(i32*) #1

declare dso_local i32 @sa6_embedscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @INP_INFO_WLOCK(i32*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @in6_selectsrc_socket(%struct.sockaddr_in6*, i32, %struct.inpcb*, i32, i32, %struct.in6_addr*, i32*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_INFO_WUNLOCK(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @soisconnected(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
