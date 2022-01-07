; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_ifa_ifwithroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_ifa_ifwithroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sockaddr = type { i32 }
%struct.rtentry = type { %struct.ifaddr* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@net_epoch_preempt = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifaddr* @ifa_ifwithroute(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtentry*, align 8
  %12 = alloca %struct.ifaddr*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @net_epoch_preempt, align 4
  %14 = call i32 @in_epoch(i32 %13)
  %15 = call i32 @MPASS(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RTF_GATEWAY, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  store %struct.ifaddr* null, %struct.ifaddr** %9, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RTF_HOST, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.ifaddr* @ifa_ifwithdstaddr(%struct.sockaddr* %26, i32 %27)
  store %struct.ifaddr* %28, %struct.ifaddr** %9, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %31 = icmp eq %struct.ifaddr* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %34 = call %struct.ifaddr* @ifa_ifwithaddr(%struct.sockaddr* %33)
  store %struct.ifaddr* %34, %struct.ifaddr** %9, align 8
  br label %35

35:                                               ; preds = %32, %29
  br label %40

36:                                               ; preds = %4
  %37 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.ifaddr* @ifa_ifwithdstaddr(%struct.sockaddr* %37, i32 %38)
  store %struct.ifaddr* %39, %struct.ifaddr** %9, align 8
  br label %40

40:                                               ; preds = %36, %35
  %41 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %42 = icmp eq %struct.ifaddr* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.ifaddr* @ifa_ifwithnet(%struct.sockaddr* %44, i32 0, i32 %45)
  store %struct.ifaddr* %46, %struct.ifaddr** %9, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %49 = icmp eq %struct.ifaddr* %48, null
  br i1 %49, label %50, label %107

50:                                               ; preds = %47
  %51 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.rtentry* @rtalloc1_fib(%struct.sockaddr* %51, i32 0, i32 %52, i32 %53)
  store %struct.rtentry* %54, %struct.rtentry** %11, align 8
  %55 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %56 = icmp eq %struct.rtentry* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %131

58:                                               ; preds = %50
  %59 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %82 [
    i32 129, label %62
    i32 128, label %73
  ]

62:                                               ; preds = %58
  %63 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %64 = call i32 @rt_key(%struct.rtentry* %63)
  %65 = call %struct.TYPE_8__* @satosin(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @INADDR_ANY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %62
  br label %83

73:                                               ; preds = %58
  %74 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %75 = call i32 @rt_key(%struct.rtentry* %74)
  %76 = call %struct.TYPE_7__* @satosin6(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %73
  br label %83

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82, %81, %72
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %88 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %87, i32 0, i32 0
  %89 = load %struct.ifaddr*, %struct.ifaddr** %88, align 8
  %90 = icmp ne %struct.ifaddr* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %93 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %92, i32 0, i32 0
  %94 = load %struct.ifaddr*, %struct.ifaddr** %93, align 8
  store %struct.ifaddr* %94, %struct.ifaddr** %9, align 8
  br label %95

95:                                               ; preds = %91, %86, %83
  %96 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %97 = call i32 @RT_REMREF(%struct.rtentry* %96)
  %98 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %99 = call i32 @RT_UNLOCK(%struct.rtentry* %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %104 = icmp eq %struct.ifaddr* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %95
  br label %131

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106, %47
  %108 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %109 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %114 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp ne i64 %112, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %107
  %119 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  store %struct.ifaddr* %119, %struct.ifaddr** %12, align 8
  %120 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %121 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %122 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr* %120, i32 %123)
  store %struct.ifaddr* %124, %struct.ifaddr** %9, align 8
  %125 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %126 = icmp eq %struct.ifaddr* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  store %struct.ifaddr* %128, %struct.ifaddr** %9, align 8
  br label %129

129:                                              ; preds = %127, %118
  br label %130

130:                                              ; preds = %129, %107
  br label %131

131:                                              ; preds = %130, %105, %57
  %132 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  ret %struct.ifaddr* %132
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @in_epoch(i32) #1

declare dso_local %struct.ifaddr* @ifa_ifwithdstaddr(%struct.sockaddr*, i32) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr(%struct.sockaddr*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithnet(%struct.sockaddr*, i32, i32) #1

declare dso_local %struct.rtentry* @rtalloc1_fib(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @satosin(i32) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local %struct.TYPE_7__* @satosin6(i32) #1

declare dso_local i32 @RT_REMREF(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
