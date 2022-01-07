; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_TcpOpen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_TcpOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8*, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.bundle = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_5__, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in6 = type { i8*, i8*, i32 }
%struct.sockaddr = type { i32 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SERVER_INVALID = common dso_local global i32 0, align 4
@probe = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Tcp: socket: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Tcp: bind: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Tcp: Unable to listen to socket: %s\0A\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Listening at port %d.\0A\00", align 1
@SERVER_OK = common dso_local global i32 0, align 4
@SERVER_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_TcpOpen(%struct.bundle* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %7, align 8
  %13 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %8, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1, i32 0), align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.bundle*, %struct.bundle** %4, align 8
  %19 = call i32 @server_Close(%struct.bundle* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @SERVER_INVALID, align 4
  store i32 %24, i32* %3, align 4
  br label %122

25:                                               ; preds = %20
  %26 = call i32 @memset(%struct.sockaddr_storage* %6, i8 signext 0, i32 4)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @probe, i32 0, i32 0), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32, i32* @AF_INET6, align 4
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @htons(i64 %33)
  %35 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 0
  store i8* inttoptr (i64 4 to i8*), i8** %38, align 8
  store i32 24, i32* %10, align 4
  %39 = load i32, i32* @PF_INET6, align 4
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = call i32 @socket(i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %9, align 4
  br label %59

42:                                               ; preds = %25
  %43 = load i32, i32* @AF_INET, align 4
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i8* @htons(i64 %46)
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 1
  store i8* inttoptr (i64 4 to i8*), i8** %51, align 8
  %52 = load i32, i32* @INADDR_ANY, align 4
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  store i32 32, i32* %10, align 4
  %56 = load i32, i32* @PF_INET, align 4
  %57 = load i32, i32* @SOCK_STREAM, align 4
  %58 = call i32 @socket(i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %42, %29
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @LogERROR, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = call i64 @strerror(i32 %64)
  %66 = call i32 @log_Printf(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %65)
  br label %114

67:                                               ; preds = %59
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @probe, i32 0, i32 0), align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @IPPROTO_IPV6, align 4
  %73 = load i32, i32* @IPV6_V6ONLY, align 4
  %74 = bitcast i32* %11 to i8*
  %75 = call i32 (i32, i32, i32, ...) @setsockopt(i32 %71, i32 %72, i32 %73, i8* %74, i64 4)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SOL_SOCKET, align 4
  %79 = load i32, i32* @SO_REUSEADDR, align 4
  %80 = call i32 (i32, i32, i32, ...) @setsockopt(i32 %77, i32 %78, i32 %79, i32* %9, i64 4)
  %81 = load i32, i32* %9, align 4
  %82 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @bind(i32 %81, %struct.sockaddr* %82, i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %76
  %87 = load i32, i32* @LogWARN, align 4
  %88 = load i32, i32* @errno, align 4
  %89 = call i64 @strerror(i32 %88)
  %90 = call i32 @log_Printf(i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @close(i32 %91)
  br label %114

93:                                               ; preds = %76
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @listen(i32 %94, i32 5)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32, i32* @LogERROR, align 4
  %99 = load i32, i32* @errno, align 4
  %100 = call i64 @strerror(i32 %99)
  %101 = call i32 @log_Printf(i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @close(i32 %102)
  br label %114

104:                                              ; preds = %93
  %105 = load %struct.bundle*, %struct.bundle** %4, align 8
  %106 = call i32 @server_Close(%struct.bundle* %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %108 = load i64, i64* %5, align 8
  store i64 %108, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1, i32 0), align 8
  %109 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1, i32 1), align 8
  store i8 0, i8* %109, align 1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1, i32 2), align 8
  %110 = load i32, i32* @LogPHASE, align 4
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @log_Printf(i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %111)
  %113 = load i32, i32* @SERVER_OK, align 4
  store i32 %113, i32* %3, align 4
  br label %122

114:                                              ; preds = %97, %86, %62
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %118 = load i64, i64* %5, align 8
  store i64 %118, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1, i32 0), align 8
  %119 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1, i32 1), align 8
  store i8 0, i8* %119, align 1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1, i32 2), align 8
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* @SERVER_FAILED, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %104, %23
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @server_Close(%struct.bundle*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i8 signext, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i64) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, ...) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
