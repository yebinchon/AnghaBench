; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_ypxfr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_ypxfr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rpc_err = type { i64 }

@RPC_ANYSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to establish callback handle\00", align 1
@CLSET_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"failed to set timeout on ypproc_xfr callback\00", align 1
@RPC_SUCCESS = common dso_local global i64 0, align 8
@RPC_TIMEDOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ypxfr callback failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr_in*, i32, i32, i64)* @ypxfr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypxfr_callback(i32 %0, %struct.sockaddr_in* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.TYPE_3__, align 4
  %15 = alloca %struct.rpc_err, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 5, i32* %17, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @htons(i64 %19)
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = bitcast %struct.timeval* %13 to { i32, i64 }*
  %26 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %25, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32* @clntudp_create(%struct.sockaddr_in* %23, i32 %24, i32 1, i32 %27, i64 %29, i32* %12)
  store i32* %30, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %5
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @inet_ntoa(i32 %35)
  %37 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %76

39:                                               ; preds = %5
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @CLSET_TIMEOUT, align 4
  %47 = call i64 @clnt_control(i32* %45, i32 %46, %struct.timeval* %13)
  %48 = load i64, i64* @FALSE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %39
  %53 = load i32*, i32** %11, align 8
  %54 = call i32* @yppushproc_xfrresp_1(%struct.TYPE_3__* %14, i32* %53)
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @clnt_geterr(i32* %57, %struct.rpc_err* %15)
  %59 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %15, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RPC_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %15, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RPC_TIMEDOUT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @clnt_sperror(i32* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %63, %56
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @clnt_destroy(i32* %74)
  br label %76

76:                                               ; preds = %73, %32
  ret void
}

declare dso_local i32 @htons(i64) #1

declare dso_local i32* @clntudp_create(%struct.sockaddr_in*, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @yp_error(i8*, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

declare dso_local i64 @clnt_control(i32*, i32, %struct.timeval*) #1

declare dso_local i32* @yppushproc_xfrresp_1(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @clnt_geterr(i32*, %struct.rpc_err*) #1

declare dso_local i32 @clnt_sperror(i32*, i8*) #1

declare dso_local i32 @clnt_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
