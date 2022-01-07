; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rup/extr_rup.c_onehost.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rup/extr_rup.c_onehost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hostent = type { i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"unknown host \22%s\22\00", align 1
@RSTATPROG = common dso_local global i32 0, align 4
@RSTATVERS_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RSTATPROC_STATS = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_statstime = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @onehost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onehost(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca %struct.timeval, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.hostent* @gethostbyname(i8* %9)
  store %struct.hostent* %10, %struct.hostent** %7, align 8
  %11 = load %struct.hostent*, %struct.hostent** %7, align 8
  %12 = icmp eq %struct.hostent* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 -1, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @RSTATPROG, align 4
  %19 = load i32, i32* @RSTATVERS_TIME, align 4
  %20 = call i32* @clnt_create(i8* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 %25)
  store i32 -1, i32* %2, align 4
  br label %59

27:                                               ; preds = %16
  %28 = bitcast i32* %5 to i8*
  %29 = call i32 @bzero(i8* %28, i32 4)
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 15, i32* %30, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @RSTATPROC_STATS, align 4
  %34 = load i64, i64* @xdr_void, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* @xdr_statstime, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @clnt_call(i32* %32, i32 %33, i32 %35, i32* null, i32 %37, i32* %5, %struct.timeval* byval(%struct.timeval) align 8 %8)
  %39 = load i64, i64* @RPC_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load i8*, i8** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @clnt_sperror(i32* %43, i8* %44)
  %46 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %42, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @clnt_destroy(i32* %47)
  store i32 -1, i32* %2, align 4
  br label %59

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.hostent*, %struct.hostent** %7, align 8
  %53 = getelementptr inbounds %struct.hostent, %struct.hostent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32* %51, i32 %54, i32 4)
  %56 = call i32 @rstat_reply(i32* %5, %struct.sockaddr_in* %6)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @clnt_destroy(i32* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %49, %41, %23, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @clnt_call(i32*, i32, i32, i32*, i32, i32*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_sperror(i32*, i8*) #1

declare dso_local i32 @clnt_destroy(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rstat_reply(i32*, %struct.sockaddr_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
