; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_rtcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_rtcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.nhop6_basic = type { i32, %struct.ifnet* }
%struct.in6_addr = type { i32 }
%struct.ifaddr = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sin_family %d\00", align 1
@V_rt_add_addr_allfibs = common dso_local global i64 0, align 8
@RT_DEFAULT_FIB = common dso_local global i32 0, align 4
@NHF_GATEWAY = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"IPv6 address: \22%s\22 is not on the network\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, %struct.sockaddr*)* @in6_lltable_rtcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_lltable_rtcheck(%struct.ifnet* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.nhop6_basic, align 8
  %10 = alloca %struct.in6_addr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ifaddr*, align 8
  %17 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %18 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = call i32 (...) @NET_EPOCH_ASSERT()
  %23 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET6, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %28, i8* %32)
  %34 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %35 = bitcast %struct.sockaddr* %34 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %35, %struct.sockaddr_in6** %8, align 8
  %36 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 0
  %38 = call i32 @in6_splitscope(i32* %37, %struct.in6_addr* %10, i32* %11)
  %39 = load i64, i64* @V_rt_add_addr_allfibs, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @RT_DEFAULT_FIB, align 4
  br label %47

43:                                               ; preds = %3
  %44 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %43 ]
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @fib6_lookup_nh_basic(i32 %49, %struct.in6_addr* %10, i32 %50, i32 0, i32 0, %struct.nhop6_basic* %9)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.nhop6_basic, %struct.nhop6_basic* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NHF_GATEWAY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.nhop6_basic, %struct.nhop6_basic* %9, i32 0, i32 1
  %62 = load %struct.ifnet*, %struct.ifnet** %61, align 8
  %63 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %64 = icmp ne %struct.ifnet* %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %60, %54, %47
  %66 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %67 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %68 = call %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr* %66, %struct.ifnet* %67)
  store %struct.ifaddr* %68, %struct.ifaddr** %16, align 8
  %69 = load %struct.ifaddr*, %struct.ifaddr** %16, align 8
  %70 = icmp ne %struct.ifaddr* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @LOG_INFO, align 4
  %74 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %74, i32 0, i32 0
  %76 = call i32 @ip6_sprintf(i8* %21, i32* %75)
  %77 = call i32 @log(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %80

79:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %79, %72, %71
  %81 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NET_EPOCH_ASSERT(...) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @in6_splitscope(i32*, %struct.in6_addr*, i32*) #2

declare dso_local i32 @fib6_lookup_nh_basic(i32, %struct.in6_addr*, i32, i32, i32, %struct.nhop6_basic*) #2

declare dso_local %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr*, %struct.ifnet*) #2

declare dso_local i32 @log(i32, i8*, i32) #2

declare dso_local i32 @ip6_sprintf(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
