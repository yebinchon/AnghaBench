; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tcp.c_tcp_OpenConnection.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tcp.c_tcp_OpenConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.servent = type { i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: %s: unknown host\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: %s: unknown service\0A\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: Connecting to %s:%s/tcp\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: connect: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @tcp_OpenConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_OpenConnection(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.servent*, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @AF_INET, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @GetIpAddr(i8* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = bitcast %struct.TYPE_2__* %14 to i8*
  %19 = bitcast %struct.TYPE_2__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INADDR_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @LogWARN, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  store i32 -2, i32* %4, align 4
  br label %81

30:                                               ; preds = %3
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @atoi(i8* %31)
  %33 = call i64 @htons(i32 %32)
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load i8*, i8** %7, align 8
  %40 = call %struct.servent* @getservbyname(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %40, %struct.servent** %10, align 8
  %41 = load %struct.servent*, %struct.servent** %10, align 8
  %42 = icmp ne %struct.servent* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.servent*, %struct.servent** %10, align 8
  %45 = getelementptr inbounds %struct.servent, %struct.servent* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  br label %53

48:                                               ; preds = %38
  %49 = load i32, i32* @LogWARN, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %50, i8* %51)
  store i32 -2, i32* %4, align 4
  br label %81

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* @LogPHASE, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %56, i8* %57, i8* %58)
  %60 = load i32, i32* @PF_INET, align 4
  %61 = load i32, i32* @SOCK_STREAM, align 4
  %62 = call i32 @socket(i32 %60, i32 %61, i32 0)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 -2, i32* %4, align 4
  br label %81

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  %68 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %69 = call i64 @connect(i32 %67, %struct.sockaddr* %68, i32 24)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* @LogWARN, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @errno, align 4
  %75 = call i8* @strerror(i32 %74)
  %76 = call i32 (i32, i8*, i8*, i8*, ...) @log_Printf(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %73, i8* %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @close(i32 %77)
  store i32 -2, i32* %4, align 4
  br label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %71, %65, %48, %25
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @GetIpAddr(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @log_Printf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
