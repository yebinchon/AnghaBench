; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm_test_msg_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm_test_msg_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.nlm4_lock = type { i32 }
%struct.nlm4_holder = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.sockaddr* }

@nlm_test_msg_1_svc.dummy = internal global i8 0, align 1
@debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nlm_test_msg\00", align 1
@nlm_granted = common dso_local global i32 0, align 4
@nlm_denied = common dso_local global i32 0, align 4
@NLM_VERS = common dso_local global i32 0, align 4
@NLM_TEST_RES = common dso_local global i32 0, align 4
@xdr_nlm_testres = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"clnt_call returns %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nlm_test_msg_1_svc(%struct.TYPE_12__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.nlm4_lock, align 4
  %11 = alloca %struct.nlm4_holder*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = call i32 @nlmtonlm4(i32* %13, %struct.nlm4_lock* %10)
  %15 = load i32, i32* @debug_level, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %19 = call i32 @log_from_addr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.svc_req* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.nlm4_holder* @testlock(%struct.nlm4_lock* %10, i32 %23, i32 0)
  store %struct.nlm4_holder* %24, %struct.nlm4_holder** %11, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.nlm4_holder*, %struct.nlm4_holder** %11, align 8
  %30 = icmp eq %struct.nlm4_holder* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* @nlm_granted, align 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %58

35:                                               ; preds = %20
  %36 = load i32, i32* @nlm_denied, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.nlm4_holder*, %struct.nlm4_holder** %11, align 8
  %43 = call i32 @memcpy(%struct.TYPE_14__* %41, %struct.nlm4_holder* %42, i32 4)
  %44 = load %struct.nlm4_holder*, %struct.nlm4_holder** %11, align 8
  %45 = getelementptr inbounds %struct.nlm4_holder, %struct.nlm4_holder* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.nlm4_holder*, %struct.nlm4_holder** %11, align 8
  %52 = getelementptr inbounds %struct.nlm4_holder, %struct.nlm4_holder* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %35, %31
  %59 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %60 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_13__* @svc_getrpccaller(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.sockaddr*, %struct.sockaddr** %63, align 8
  store %struct.sockaddr* %64, %struct.sockaddr** %6, align 8
  %65 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %66 = load i32, i32* @NLM_VERS, align 4
  %67 = call i32* @get_client(%struct.sockaddr* %65, i32 %66)
  store i32* %67, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @NLM_TEST_RES, align 4
  %74 = load i64, i64* @xdr_nlm_testres, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* @xdr_void, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @clnt_call(i32* %72, i32 %73, i32 %75, %struct.TYPE_11__* %5, i32 %77, i8* @nlm_test_msg_1_svc.dummy, %struct.timeval* byval(%struct.timeval) align 8 %9)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @debug_level, align 4
  %80 = icmp sgt i32 %79, 2
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i32, i32* @LOG_DEBUG, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @syslog(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %69
  br label %86

86:                                               ; preds = %85, %58
  ret i8* null
}

declare dso_local i32 @nlmtonlm4(i32*, %struct.nlm4_lock*) #1

declare dso_local i32 @log_from_addr(i8*, %struct.svc_req*) #1

declare dso_local %struct.nlm4_holder* @testlock(%struct.nlm4_lock*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.nlm4_holder*, i32) #1

declare dso_local %struct.TYPE_13__* @svc_getrpccaller(i32) #1

declare dso_local i32* @get_client(%struct.sockaddr*, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, %struct.TYPE_11__*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
