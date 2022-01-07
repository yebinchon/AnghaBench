; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_nextverf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_nextverf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { i32, i32, i32, i32 }
%struct.svc_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"in svc_rpc_gss_nextverf()\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gss_get_mic\00", align 1
@CLIENT_STALE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAX_AUTH_BYTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"MIC too large for RPCSEC_GSS\00", align 1
@RPCSEC_GSS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rpc_gss_client*, %struct.svc_req*, i32)* @svc_rpc_gss_nextverf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rpc_gss_nextverf(%struct.svc_rpc_gss_client* %0, %struct.svc_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rpc_gss_client*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %5, align 8
  store %struct.svc_req* %1, %struct.svc_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @htonl(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32* %12, i32** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %19 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %22 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @gss_get_mic(i64* %11, i32 %20, i32 %23, %struct.TYPE_7__* %8, %struct.TYPE_7__* %9)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @GSS_S_COMPLETE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %30 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32, i64 %33)
  %35 = load i32, i32* @CLIENT_STALE, align 4
  %36 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %5, align 8
  %37 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %69

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @MAX_AUTH_BYTES, align 8
  %44 = icmp sle i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @KASSERT(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @RPCSEC_GSS, align 4
  %48 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %49 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %55 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %60 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = call i32 @bcopy(i32* %58, i32 %62, i64 %65)
  %67 = call i32 @gss_release_buffer(i64* %11, %struct.TYPE_7__* %9)
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %39, %28
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @gss_get_mic(i64*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @rpc_gss_log_status(i8*, i32, i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcopy(i32*, i32, i64) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
