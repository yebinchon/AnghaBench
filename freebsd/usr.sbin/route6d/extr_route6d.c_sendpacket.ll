; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_sendpacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_sendpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32 }
%struct.msghdr = type { i32, i32, i64, i32*, i64, %struct.iovec*, i8* }
%struct.iovec = type { i32, i8* }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.in6_pktinfo = type { i32, i32 }

@ripbuf = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_PKTINFO = common dso_local global i32 0, align 4
@ripsock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sendmsg: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in6*, i32)* @sendpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendpacket(%struct.sockaddr_in6* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.cmsghdr*, align 8
  %8 = alloca [2 x %struct.iovec], align 16
  %9 = alloca %struct.in6_pktinfo*, align 8
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in6, align 4
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %14 = bitcast %struct.sockaddr_in6* %12 to i8*
  %15 = bitcast %struct.sockaddr_in6* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 8, i1 false)
  store %struct.sockaddr_in6* %12, %struct.sockaddr_in6** %4, align 8
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 1
  %18 = call i64 @IN6_IS_ADDR_LINKLOCAL(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 1
  %23 = call i64 @IN6_IS_ADDR_MULTICAST(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %2
  %26 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %32 = bitcast %struct.sockaddr_in6* %31 to i8*
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 6
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i32 8, i32* %34, align 8
  %35 = load i64, i64* @ripbuf, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 16
  %42 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 5
  store %struct.iovec* %42, %struct.iovec** %43, align 8
  %44 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store i64 0, i64* %50, align 8
  br label %82

51:                                               ; preds = %30
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %53 = call i32 @memset(i32* %52, i32 0, i32 1024)
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %55 = bitcast i32* %54 to i8*
  %56 = bitcast i8* %55 to %struct.cmsghdr*
  store %struct.cmsghdr* %56, %struct.cmsghdr** %7, align 8
  %57 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %58 = bitcast %struct.cmsghdr* %57 to i8*
  %59 = bitcast i8* %58 to i32*
  %60 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  store i32* %59, i32** %60, align 8
  %61 = call i64 @CMSG_SPACE(i32 8)
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store i64 %61, i64* %62, align 8
  %63 = call i32 @CMSG_LEN(i32 8)
  %64 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %65 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @IPPROTO_IPV6, align 4
  %67 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %68 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @IPV6_PKTINFO, align 4
  %70 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %71 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %73 = call i64 @CMSG_DATA(%struct.cmsghdr* %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = bitcast i8* %74 to %struct.in6_pktinfo*
  store %struct.in6_pktinfo* %75, %struct.in6_pktinfo** %9, align 8
  %76 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %9, align 8
  %77 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %76, i32 0, i32 1
  %78 = call i32 @memset(i32* %77, i32 0, i32 4)
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %9, align 8
  %81 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %51, %48
  %83 = load i32, i32* @ripsock, align 4
  %84 = call i64 @sendmsg(i32 %83, %struct.msghdr* %6, i32 0)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 @strerror(i32 %87)
  %89 = call i32 @trace(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @errno, align 4
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %86
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(i32*) #2

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @CMSG_SPACE(i32) #2

declare dso_local i32 @CMSG_LEN(i32) #2

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #2

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #2

declare dso_local i32 @trace(i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
