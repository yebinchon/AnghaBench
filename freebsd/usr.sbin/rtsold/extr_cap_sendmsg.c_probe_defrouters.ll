; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_cap_sendmsg.c_probe_defrouters.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_cap_sendmsg.c_probe_defrouters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i64, i32, i32 }
%struct.in6_defrouter = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@probe_defrouters.probesock = internal global i32 -1, align 4
@IPPROTO_NONE = common dso_local global i32 0, align 4
@CTL_NET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@ICMPV6CTL_ND6_DRLIST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @probe_defrouters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_defrouters(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_in6, align 8
  %7 = alloca %struct.in6_defrouter*, align 8
  %8 = alloca %struct.in6_defrouter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x i32], align 16
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

15:                                               ; preds = %2
  %16 = load i32, i32* @IPPROTO_NONE, align 4
  %17 = call i64 @getsocket(i32* @probe_defrouters.probesock, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %99

20:                                               ; preds = %15
  %21 = load i32, i32* @CTL_NET, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* @PF_INET6, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @ICMPV6CTL_ND6_DRLIST, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %31 = call i32 @nitems(i32* %30)
  %32 = call i64 @sysctl(i32* %29, i32 %31, i8* null, i64* %10, i32* null, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %99

35:                                               ; preds = %20
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %99

39:                                               ; preds = %35
  %40 = call i32 @memset(%struct.sockaddr_in6* %6, i32 0, i32 24)
  %41 = load i32, i32* @AF_INET6, align 4
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  store i32 24, i32* %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i8* @malloc(i64 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %99

49:                                               ; preds = %39
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %52 = call i32 @nitems(i32* %51)
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @sysctl(i32* %50, i32 %52, i8* %53, i64* %10, i32* null, i32 0)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %99

57:                                               ; preds = %49
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = bitcast i8* %60 to %struct.in6_defrouter*
  store %struct.in6_defrouter* %61, %struct.in6_defrouter** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = bitcast i8* %62 to %struct.in6_defrouter*
  store %struct.in6_defrouter* %63, %struct.in6_defrouter** %7, align 8
  br label %64

64:                                               ; preds = %93, %57
  %65 = load %struct.in6_defrouter*, %struct.in6_defrouter** %7, align 8
  %66 = load %struct.in6_defrouter*, %struct.in6_defrouter** %8, align 8
  %67 = icmp ult %struct.in6_defrouter* %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.in6_defrouter*, %struct.in6_defrouter** %7, align 8
  %71 = getelementptr inbounds %struct.in6_defrouter, %struct.in6_defrouter* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %93

75:                                               ; preds = %68
  %76 = load %struct.in6_defrouter*, %struct.in6_defrouter** %7, align 8
  %77 = getelementptr inbounds %struct.in6_defrouter, %struct.in6_defrouter* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @IN6_IS_ADDR_LINKLOCAL(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %93

82:                                               ; preds = %75
  %83 = load %struct.in6_defrouter*, %struct.in6_defrouter** %7, align 8
  %84 = getelementptr inbounds %struct.in6_defrouter, %struct.in6_defrouter* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = load i32, i32* @probe_defrouters.probesock, align 4
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @sendpacket(i32 %90, %struct.sockaddr_in6* %6, i64 %91, i32 1, i32* null, i32 0)
  br label %93

93:                                               ; preds = %82, %81, %74
  %94 = load %struct.in6_defrouter*, %struct.in6_defrouter** %7, align 8
  %95 = getelementptr inbounds %struct.in6_defrouter, %struct.in6_defrouter* %94, i32 1
  store %struct.in6_defrouter* %95, %struct.in6_defrouter** %7, align 8
  br label %64

96:                                               ; preds = %64
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @free(i8* %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %56, %48, %38, %34, %19, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @getsocket(i32*, i32) #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @IN6_IS_ADDR_LINKLOCAL(i32*) #1

declare dso_local i32 @sendpacket(i32, %struct.sockaddr_in6*, i64, i32, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
