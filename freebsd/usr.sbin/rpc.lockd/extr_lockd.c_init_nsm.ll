; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd.c_init_nsm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd.c_init_nsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i32 }

@__const.init_nsm.name = private unnamed_addr constant [8 x i8] c"NFS NLM\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@SM_PROG = common dso_local global i32 0, align 4
@SM_VERS = common dso_local global i32 0, align 4
@SM_UNMON_ALL = common dso_local global i32 0, align 4
@xdr_my_id = common dso_local global i64 0, align 8
@xdr_sm_stat = common dso_local global i64 0, align 8
@RPC_PROGUNAVAIL = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%lu %s\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@nsm_state = common dso_local global i32 0, align 4
@localhost = common dso_local global i32 0, align 4
@mon_host = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@NLM_PROG = common dso_local global i32 0, align 4
@NLM_SM = common dso_local global i32 0, align 4
@NLM_SM_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_nsm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca [8 x i8], align 1
  %5 = bitcast [8 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.init_nsm.name, i32 0, i32 0), i64 8, i1 false)
  %6 = call i32 @memset(%struct.TYPE_12__* %2, i32 0, i32 8)
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %7, i8** %8, align 8
  br label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @SM_PROG, align 4
  %11 = load i32, i32* @SM_VERS, align 4
  %12 = load i32, i32* @SM_UNMON_ALL, align 4
  %13 = load i64, i64* @xdr_my_id, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i64, i64* @xdr_sm_stat, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @callrpc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 %14, %struct.TYPE_12__* %2, i32 %16, %struct.TYPE_11__* %3)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @RPC_PROGUNAVAIL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = load i32, i32* @LOG_WARNING, align 4
  %23 = load i32, i32* @SM_PROG, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @clnt_sperrno(i32 %24)
  %26 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %25)
  %27 = call i32 @sleep(i32 2)
  br label %29

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %21, %28
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load i32, i32* @SM_PROG, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @clnt_sperrno(i32 %35)
  %37 = call i32 @syslog(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  %38 = call i32 @exit(i32 1) #4
  unreachable

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* @nsm_state, align 4
  %42 = load i32, i32* @localhost, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @mon_host, i32 0, i32 0, i32 0, i32 3), align 4
  %43 = load i32, i32* @NLM_PROG, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @mon_host, i32 0, i32 0, i32 0, i32 2), align 4
  %44 = load i32, i32* @NLM_SM, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @mon_host, i32 0, i32 0, i32 0, i32 1), align 4
  %45 = load i32, i32* @NLM_SM_NOTIFY, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @mon_host, i32 0, i32 0, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @callrpc(i8*, i32, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @syslog(i32, i8*, i32, i32) #2

declare dso_local i32 @clnt_sperrno(i32) #2

declare dso_local i32 @sleep(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
