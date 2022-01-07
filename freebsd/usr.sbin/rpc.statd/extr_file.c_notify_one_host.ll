; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_file.c_notify_one_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_file.c_notify_one_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@__const.notify_one_host.timeout = private unnamed_addr constant %struct.timeval { i32 20, i32 0 }, align 4
@SM_MAXSTRLEN = common dso_local global i32 0, align 4
@status_info = common dso_local global %struct.TYPE_5__* null, align 8
@debug = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Sending SM_NOTIFY to host %s from %s\00", align 1
@SM_PROG = common dso_local global i32 0, align 4
@SM_VERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to contact host %s%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@SM_NOTIFY = common dso_local global i32 0, align 4
@xdr_stat_chge = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to contact rpc.statd at host %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @notify_one_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_one_host(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.timeval* @__const.notify_one_host.timeout to i8*), i64 8, i1 false)
  %14 = load i32, i32* @SM_MAXSTRLEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = trunc i64 %16 to i32
  %20 = call i32 @gethostname(i8* %18, i32 %19)
  %21 = load i32, i32* @SM_MAXSTRLEN, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i8* %18, i8** %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @status_info, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i64, i64* @debug, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @LOG_DEBUG, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %18)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @SM_PROG, align 4
  %38 = load i32, i32* @SM_VERS, align 4
  %39 = call i32* @clnt_create(i8* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

48:                                               ; preds = %35
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @SM_NOTIFY, align 4
  %51 = load i64, i64* @xdr_stat_chge, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* @xdr_void, align 8
  %54 = trunc i64 %53 to i32
  %55 = bitcast %struct.timeval* %6 to i64*
  %56 = load i64, i64* %55, align 4
  %57 = call i64 @clnt_call(i32* %49, i32 %50, i32 %52, %struct.TYPE_4__* %9, i32 %54, i8* %8, i64 %56)
  %58 = load i64, i64* @RPC_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @clnt_destroy(i32* %68)
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

71:                                               ; preds = %48
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @clnt_destroy(i32* %72)
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %71, %67, %42
  %76 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @gethostname(i8*, i32) #3

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #3

declare dso_local i32* @clnt_create(i8*, i32, i32, i8*) #3

declare dso_local i32 @clnt_spcreateerror(i8*) #3

declare dso_local i64 @clnt_call(i32*, i32, i32, %struct.TYPE_4__*, i32, i8*, i64) #3

declare dso_local i32 @clnt_destroy(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
