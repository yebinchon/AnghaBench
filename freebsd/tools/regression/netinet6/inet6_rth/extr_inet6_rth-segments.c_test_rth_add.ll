; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_rth_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_rth_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.ip6_rthdr0 = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"test_rth_add\00", align 1
@IPV6_RTHDR_TYPE_0 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"add 127 segments\00\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"add 128th segment to 127 segment header\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rth_add() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10240 x i8], align 16
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.addrinfo, align 8
  %6 = call i32 @set_funcname(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 14)
  %7 = getelementptr inbounds [10240 x i8], [10240 x i8]* %3, i64 0, i64 0
  %8 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %9 = call i32* @inet6_rth_init(i8* %7, i32 10240, i32 %8, i32 127)
  %10 = icmp eq i32* null, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (...) @abort() #3
  unreachable

13:                                               ; preds = %0
  %14 = bitcast %struct.addrinfo* %5 to i8*
  %15 = call i32 @memset(i8* %14, i32 0, i32 16)
  %16 = load i32, i32* @AF_INET6, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @AI_NUMERICHOST, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = call i64 @getaddrinfo(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.addrinfo* %5, %struct.addrinfo** %4)
  %21 = icmp ne i64 0, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call i32 (...) @abort() #3
  unreachable

24:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %1, align 4
  %27 = icmp slt i32 %26, 127
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = getelementptr inbounds [10240 x i8], [10240 x i8]* %3, i64 0, i64 0
  %30 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.sockaddr_in6*
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 0
  %35 = call i32 @inet6_rth_add(i8* %29, i32* %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %25

39:                                               ; preds = %25
  %40 = getelementptr inbounds [10240 x i8], [10240 x i8]* %3, i64 0, i64 0
  %41 = bitcast i8* %40 to %struct.ip6_rthdr0*
  %42 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 16
  %44 = call i32 @checknum(i32 127, i32 %43, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %45 = getelementptr inbounds [10240 x i8], [10240 x i8]* %3, i64 0, i64 0
  %46 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.sockaddr_in6*
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 0
  %51 = call i32 @inet6_rth_add(i8* %45, i32* %50)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @checknum(i32 -1, i32 %52, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %55 = call i32 @freeaddrinfo(%struct.addrinfo* %54)
  ret void
}

declare dso_local i32 @set_funcname(i8*, i32) #1

declare dso_local i32* @inet6_rth_init(i8*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @inet6_rth_add(i8*, i32*) #1

declare dso_local i32 @checknum(i32, i32, i32, i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
