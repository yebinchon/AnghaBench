; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_ripflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_ripflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.netinfo6* }
%struct.netinfo6 = type { i64, i64, i32, i32 }
%struct.ifc = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"Send(%s): info(%d) to %s.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Send: info(%d) to %s.%d\0A\00", align 1
@dflag = common dso_local global i32 0, align 4
@ripbuf = common dso_local global %struct.TYPE_4__* null, align 8
@NEXTHOP_METRIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"    NextHop reset\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"    NextHop %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"    %s/%d[%d]\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"  tag=0x%04x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Could not send info to %s (%s): set IFF_UP to 0\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Could not send info to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifc*, %struct.sockaddr_in6*, i32, %struct.netinfo6*)* @ripflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ripflush(%struct.ifc* %0, %struct.sockaddr_in6* %1, i32 %2, %struct.netinfo6* %3) #0 {
  %5 = alloca %struct.ifc*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netinfo6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifc* %0, %struct.ifc** %5, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netinfo6* %3, %struct.netinfo6** %8, align 8
  %11 = load %struct.ifc*, %struct.ifc** %5, align 8
  %12 = icmp ne %struct.ifc* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load %struct.ifc*, %struct.ifc** %5, align 8
  %15 = getelementptr inbounds %struct.ifc, %struct.ifc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 0
  %20 = call i32 @inet6_n2p(i32* %19)
  %21 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ntohs(i64 %23)
  %25 = call i32 (i32, i8*, i32, ...) @tracet(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %20, i32 %24)
  br label %36

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  %30 = call i32 @inet6_n2p(i32* %29)
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ntohs(i64 %33)
  %35 = call i32 (i32, i8*, i32, ...) @tracet(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %26, %13
  %37 = load i32, i32* @dflag, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %97

39:                                               ; preds = %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ripbuf, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.netinfo6*, %struct.netinfo6** %41, align 8
  store %struct.netinfo6* %42, %struct.netinfo6** %8, align 8
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %91, %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %49 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NEXTHOP_METRIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %55 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %54, i32 0, i32 3
  %56 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 (i32, i8*, ...) @trace(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %65

60:                                               ; preds = %53
  %61 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %62 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %61, i32 0, i32 3
  %63 = call i32 @inet6_n2p(i32* %62)
  %64 = call i32 (i32, i8*, ...) @trace(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %58
  br label %77

66:                                               ; preds = %47
  %67 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %68 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %67, i32 0, i32 3
  %69 = call i32 @inet6_n2p(i32* %68)
  %70 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %71 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %74 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, i8*, ...) @trace(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %72, i64 %75)
  br label %77

77:                                               ; preds = %66, %65
  %78 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %79 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %84 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ntohs(i64 %85)
  %87 = and i32 %86, 65535
  %88 = call i32 (i32, i8*, ...) @trace(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %82, %77
  %90 = call i32 (i32, i8*, ...) @trace(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = load %struct.netinfo6*, %struct.netinfo6** %8, align 8
  %95 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %94, i32 1
  store %struct.netinfo6* %95, %struct.netinfo6** %8, align 8
  br label %43

96:                                               ; preds = %43
  br label %97

97:                                               ; preds = %96, %36
  %98 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @RIPSIZE(i32 %99)
  %101 = call i32 @sendpacket(%struct.sockaddr_in6* %98, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @EAFNOSUPPORT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %97
  %106 = load %struct.ifc*, %struct.ifc** %5, align 8
  %107 = icmp ne %struct.ifc* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load %struct.ifc*, %struct.ifc** %5, align 8
  %110 = getelementptr inbounds %struct.ifc, %struct.ifc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ifc*, %struct.ifc** %5, align 8
  %113 = getelementptr inbounds %struct.ifc, %struct.ifc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = call i32 @inet6_n2p(i32* %114)
  %116 = call i32 (i32, i8*, i32, ...) @tracet(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %111, i32 %115)
  %117 = load i32, i32* @IFF_UP, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.ifc*, %struct.ifc** %5, align 8
  %120 = getelementptr inbounds %struct.ifc, %struct.ifc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %128

123:                                              ; preds = %105
  %124 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %125 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %124, i32 0, i32 0
  %126 = call i32 @inet6_n2p(i32* %125)
  %127 = call i32 (i32, i8*, i32, ...) @tracet(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %123, %108
  br label %129

129:                                              ; preds = %128, %97
  ret void
}

declare dso_local i32 @tracet(i32, i8*, i32, ...) #1

declare dso_local i32 @inet6_n2p(i32*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @trace(i32, i8*, ...) #1

declare dso_local i32 @sendpacket(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @RIPSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
