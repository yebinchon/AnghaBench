; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_procs.c_sm_stat_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_procs.c_sm_stat_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_stat_res = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.svc_req = type { i32 }
%struct.addrinfo = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_6__ = type { i64 }

@sm_stat_1_svc.res = internal global %struct.sm_stat_res zeroinitializer, align 8
@sm_stat_1_svc.err = internal global i32 0, align 4
@stat_fail = common dso_local global i8* null, align 8
@debug = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"stat called for host %s\00", align 1
@stat_succ = common dso_local global i8* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid hostname to sm_stat from %s: %s\00", align 1
@status_info = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sm_stat_res* @sm_stat_1_svc(%struct.TYPE_5__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  store i32 1, i32* @sm_stat_1_svc.err, align 4
  %7 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sm_check_hostname(%struct.svc_req* %7, i32 %10)
  store i32 %11, i32* @sm_stat_1_svc.err, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** @stat_fail, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.sm_stat_res, %struct.sm_stat_res* @sm_stat_1_svc.res, i32 0, i32 1), align 8
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* @sm_stat_1_svc.err, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load i64, i64* @debug, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* @LOG_DEBUG, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, ...) @syslog(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @getaddrinfo(i32 %30, i32* null, i32* null, %struct.addrinfo** %5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8*, i8** @stat_succ, align 8
  store i8* %34, i8** getelementptr inbounds (%struct.sm_stat_res, %struct.sm_stat_res* @sm_stat_1_svc.res, i32 0, i32 1), align 8
  %35 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %36 = call i32 @freeaddrinfo(%struct.addrinfo* %35)
  br label %53

37:                                               ; preds = %27
  %38 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %39 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_6__* @svc_getrpccaller(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.sockaddr*
  store %struct.sockaddr* %44, %struct.sockaddr** %6, align 8
  %45 = load i32, i32* @LOG_ERR, align 4
  %46 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %47 = call i32 @from_addr(%struct.sockaddr* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, ...) @syslog(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i8*, i8** @stat_fail, align 8
  store i8* %52, i8** getelementptr inbounds (%struct.sm_stat_res, %struct.sm_stat_res* @sm_stat_1_svc.res, i32 0, i32 1), align 8
  br label %53

53:                                               ; preds = %37, %33
  br label %54

54:                                               ; preds = %53, %15
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @status_info, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.sm_stat_res, %struct.sm_stat_res* @sm_stat_1_svc.res, i32 0, i32 0), align 8
  ret %struct.sm_stat_res* @sm_stat_1_svc.res
}

declare dso_local i32 @sm_check_hostname(%struct.svc_req*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i64 @getaddrinfo(i32, i32*, i32*, %struct.addrinfo**) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local %struct.TYPE_6__* @svc_getrpccaller(i32) #1

declare dso_local i32 @from_addr(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
