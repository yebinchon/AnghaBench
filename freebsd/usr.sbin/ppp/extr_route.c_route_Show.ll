; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_Show.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32 }
%struct.rt_msghdr = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4
@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@NET_RT_DUMP = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"route_Show: sysctl: estimate: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"route_Show: sysctl: getroute: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%-20s%-20sFlags  Netif\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Destination\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Gateway\00", align 1
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"<can't parse routing entry>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @route_Show(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.rt_msghdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [6 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %13 = load i32, i32* @RTAX_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca %struct.sockaddr*, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* @CTL_NET, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* @PF_ROUTE, align 4
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 3
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @NET_RT_DUMP, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 4
  store i32 %23, i32* %24, align 16
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %27 = call i64 @sysctl(i32* %26, i32 6, i8* null, i64* %10, i32* null, i32 0)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32, i32* @LogERROR, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 @log_Printf(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %128

34:                                               ; preds = %1
  %35 = load i64, i64* %10, align 8
  %36 = call i8* @malloc(i64 %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %128

40:                                               ; preds = %34
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @sysctl(i32* %41, i32 6, i8* %42, i64* %10, i32* null, i32 0)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @LogERROR, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 @log_Printf(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %128

52:                                               ; preds = %40
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %8, align 8
  %56 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %57 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i8*, i8** %7, align 8
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %118, %52
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %125

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  %67 = bitcast i8* %66 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %67, %struct.rt_msghdr** %4, align 8
  %68 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %69 = call i32 @route_ParseHdr(%struct.rt_msghdr* %68, %struct.sockaddr** %16)
  %70 = load i64, i64* @RTAX_DST, align 8
  %71 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %16, i64 %70
  %72 = load %struct.sockaddr*, %struct.sockaddr** %71, align 8
  %73 = icmp ne %struct.sockaddr* %72, null
  br i1 %73, label %74, label %112

74:                                               ; preds = %65
  %75 = load i64, i64* @RTAX_GATEWAY, align 8
  %76 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %16, i64 %75
  %77 = load %struct.sockaddr*, %struct.sockaddr** %76, align 8
  %78 = icmp ne %struct.sockaddr* %77, null
  br i1 %78, label %79, label %112

79:                                               ; preds = %74
  %80 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %81 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* @RTAX_DST, align 8
  %84 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %16, i64 %83
  %85 = load %struct.sockaddr*, %struct.sockaddr** %84, align 8
  %86 = load i64, i64* @RTAX_NETMASK, align 8
  %87 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %16, i64 %86
  %88 = load %struct.sockaddr*, %struct.sockaddr** %87, align 8
  %89 = call i32 @p_sockaddr(i32 %82, %struct.sockaddr* %85, %struct.sockaddr* %88, i32 20)
  %90 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %91 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @RTAX_GATEWAY, align 8
  %94 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %16, i64 %93
  %95 = load %struct.sockaddr*, %struct.sockaddr** %94, align 8
  %96 = call i32 @p_sockaddr(i32 %92, %struct.sockaddr* %95, %struct.sockaddr* null, i32 20)
  %97 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %98 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %101 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @p_flags(i32 %99, i32 %102, i32 6)
  %104 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %105 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %108 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @Index2Nam(i32 %109)
  %111 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  br label %117

112:                                              ; preds = %74, %65
  %113 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %114 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %117

117:                                              ; preds = %112, %79
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %120 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %9, align 8
  br label %61

125:                                              ; preds = %61
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @free(i8* %126)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %128

128:                                              ; preds = %125, %45, %39, %29
  %129 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #2

declare dso_local i32 @log_Printf(i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #2

declare dso_local i32 @route_ParseHdr(%struct.rt_msghdr*, %struct.sockaddr**) #2

declare dso_local i32 @p_sockaddr(i32, %struct.sockaddr*, %struct.sockaddr*, i32) #2

declare dso_local i32 @p_flags(i32, i32, i32) #2

declare dso_local i32 @Index2Nam(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
