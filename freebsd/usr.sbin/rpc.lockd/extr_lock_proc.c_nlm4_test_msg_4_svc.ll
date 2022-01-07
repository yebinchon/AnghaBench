; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm4_test_msg_4_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm4_test_msg_4_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.nlm4_holder = type { i32 }
%struct.TYPE_12__ = type { %struct.sockaddr* }

@nlm4_test_msg_4_svc.dummy = internal global i8 0, align 1
@debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"nlm4_test_msg\00", align 1
@LOCK_V4 = common dso_local global i32 0, align 4
@nlm4_granted = common dso_local global i32 0, align 4
@nlm4_denied = common dso_local global i32 0, align 4
@NLM_VERS4 = common dso_local global i32 0, align 4
@NLM4_TEST_RES = common dso_local global i32 0, align 4
@xdr_nlm4_testres = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"clnt_call returns %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nlm4_test_msg_4_svc(%struct.TYPE_11__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.nlm4_holder*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %11 = load i32, i32* @debug_level, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %15 = call i32 @log_from_addr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.svc_req* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LOCK_V4, align 4
  %23 = call %struct.nlm4_holder* @testlock(i32* %18, i32 %21, i32 %22)
  store %struct.nlm4_holder* %23, %struct.nlm4_holder** %10, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.nlm4_holder*, %struct.nlm4_holder** %10, align 8
  %29 = icmp eq %struct.nlm4_holder* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load i32, i32* @nlm4_granted, align 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %43

34:                                               ; preds = %16
  %35 = load i32, i32* @nlm4_denied, align 4
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.nlm4_holder*, %struct.nlm4_holder** %10, align 8
  %42 = call i32 @memcpy(i32* %40, %struct.nlm4_holder* %41, i32 4)
  br label %43

43:                                               ; preds = %34, %30
  %44 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %45 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_12__* @svc_getrpccaller(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.sockaddr*, %struct.sockaddr** %48, align 8
  store %struct.sockaddr* %49, %struct.sockaddr** %6, align 8
  %50 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %51 = load i32, i32* @NLM_VERS4, align 4
  %52 = call i32* @get_client(%struct.sockaddr* %50, i32 %51)
  store i32* %52, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @NLM4_TEST_RES, align 4
  %59 = load i64, i64* @xdr_nlm4_testres, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* @xdr_void, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @clnt_call(i32* %57, i32 %58, i32 %60, %struct.TYPE_10__* %5, i32 %62, i8* @nlm4_test_msg_4_svc.dummy, %struct.timeval* byval(%struct.timeval) align 8 %9)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @debug_level, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i32, i32* @LOG_DEBUG, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @syslog(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %54
  br label %71

71:                                               ; preds = %70, %43
  ret i8* null
}

declare dso_local i32 @log_from_addr(i8*, %struct.svc_req*) #1

declare dso_local %struct.nlm4_holder* @testlock(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.nlm4_holder*, i32) #1

declare dso_local %struct.TYPE_12__* @svc_getrpccaller(i32) #1

declare dso_local i32* @get_client(%struct.sockaddr*, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, %struct.TYPE_10__*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
