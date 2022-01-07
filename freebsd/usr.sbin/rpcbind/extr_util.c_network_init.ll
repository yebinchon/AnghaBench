; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_util.c_network_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_util.c_network_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.addrinfo = type { i32, i64 }
%struct.sockaddr_in = type opaque

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"sunrpc\00", align 1
@debugging = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"can't get local ip4 address: %s\0A\00", align 1
@local_in4 = common dso_local global %struct.sockaddr_in6* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"can't alloc local ip4 addr\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPV6_JOIN_GROUP = common dso_local global i32 0, align 4
@RPCB_MULTICAST_ADDR = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@local_in6 = common dso_local global %struct.sockaddr_in6* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @network_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.addrinfo, align 8
  %3 = alloca %struct.addrinfo*, align 8
  %4 = call i32 @memset(%struct.addrinfo* %2, i32 0, i32 16)
  %5 = load i64, i64* @AF_INET, align 8
  %6 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i32 0, i32 1
  store i64 %5, i64* %6, align 8
  %7 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %2, %struct.addrinfo** %3)
  store i32 %7, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = load i64, i64* @debugging, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i8* @gai_strerror(i32 %14)
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %12, %9
  br label %40

18:                                               ; preds = %0
  %19 = call i64 @malloc(i32 4)
  %20 = inttoptr i64 %19 to %struct.sockaddr_in*
  %21 = bitcast %struct.sockaddr_in* %20 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %21, %struct.sockaddr_in6** @local_in4, align 8
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** @local_in4, align 8
  %23 = icmp eq %struct.sockaddr_in6* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i64, i64* @debugging, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %18
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** @local_in4, align 8
  %34 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(%struct.sockaddr_in6* %33, i32 %36, i32 4)
  %38 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %39 = call i32 @freeaddrinfo(%struct.addrinfo* %38)
  br label %40

40:                                               ; preds = %32, %17
  ret void
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i64 @malloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
