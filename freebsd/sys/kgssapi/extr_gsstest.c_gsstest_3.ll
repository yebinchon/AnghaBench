; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_gsstest_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_gsstest_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.thread = type { i32 }
%struct.sockaddr_in = type { i32, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't connect to service\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"host@\00", align 1
@curthread = common dso_local global %struct.TYPE_14__* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"kerberosv5\00", align 1
@rpc_gss_svc_privacy = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Can't authorize to service (mech=%s)\0A\00", align 1
@GSS_C_NO_OID = common dso_local global i32 0, align 4
@rpc_gss_svc_none = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"rpc_gss_svc_default\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"rpc_gss_svc_none\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"rpc_gss_svc_integrity\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"rpc_gss_svc_privacy\00", align 1
@__const.gsstest_3.svc_names = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)], align 16
@xdr_int = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"unexpected reply %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"call failed, stat=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"call succeeded with %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @gsstest_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsstest_3(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i8*], align 16
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 24, i32* %16, align 8
  %17 = load i32, i32* @AF_INET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @INADDR_LOOPBACK, align 4
  %20 = call i32 @htonl(i32 %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %25 = call %struct.TYPE_13__* @gsstest_get_rpc(%struct.sockaddr* %24, i32 123456, i32 1)
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %6, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %129

30:                                               ; preds = %1
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %32 = call i32 @memcpy(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %33 = load %struct.thread*, %struct.thread** %3, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 5
  %38 = call i32 @getcredhostname(i32 %35, i8* %37, i32 123)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @curthread, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %44 = load i64, i64* @rpc_gss_svc_privacy, align 8
  %45 = call i32* @rpc_gss_seccreate(%struct.TYPE_13__* %39, i32 %42, i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %44, i32* null, i32* null, %struct.TYPE_12__* %8)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @GSS_C_NO_OID, align 4
  store i32 %52, i32* %13, align 4
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @rpc_gss_mech_to_oid(i8* %54, i32* %13)
  %56 = load i32, i32* %13, align 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @report_error(i32 %56, i32 %58, i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = call i32 @CLNT_DESTROY(%struct.TYPE_13__* %62)
  store i32 1, i32* %2, align 4
  br label %129

64:                                               ; preds = %30
  %65 = load i64, i64* @rpc_gss_svc_none, align 8
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %121, %64
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @rpc_gss_svc_privacy, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %124

70:                                               ; preds = %66
  %71 = bitcast [4 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %71, i8* align 16 bitcast ([4 x i8*]* @__const.gsstest_3.svc_names to i8*), i64 32, i1 false)
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @rpc_gss_set_defaults(i32* %72, i64 %73, i32* null)
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 5, i32* %78, align 8
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %79, align 8
  store i32 42, i32* %12, align 4
  br label %80

80:                                               ; preds = %109, %70
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 142
  br i1 %82, label %83, label %112

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %15, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = load i64, i64* @xdr_int, align 8
  %87 = trunc i64 %86 to i32
  %88 = bitcast i32* %15 to i8*
  %89 = load i64, i64* @xdr_int, align 8
  %90 = trunc i64 %89 to i32
  %91 = bitcast i32* %15 to i8*
  %92 = call i32 @CLNT_CALL(%struct.TYPE_13__* %85, i32 1, i32 %87, i8* %88, i32 %90, i8* %91, %struct.timeval* byval(%struct.timeval) align 8 %10)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @RPC_SUCCESS, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %83
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 100
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %15, align 4
  %103 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %101, %96
  br label %108

105:                                              ; preds = %83
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  br label %112

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %80

112:                                              ; preds = %105, %80
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, 142
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %115, %112
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %11, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %11, align 8
  br label %66

124:                                              ; preds = %66
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @AUTH_DESTROY(i32* %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = call i32 @CLNT_RELEASE(%struct.TYPE_13__* %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %124, %48, %28
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.TYPE_13__* @gsstest_get_rpc(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @getcredhostname(i32, i8*, i32) #1

declare dso_local i32* @rpc_gss_seccreate(%struct.TYPE_13__*, i32, i8*, i8*, i64, i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @rpc_gss_mech_to_oid(i8*, i32*) #1

declare dso_local i32 @report_error(i32, i32, i32) #1

declare dso_local i32 @CLNT_DESTROY(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rpc_gss_set_defaults(i32*, i64, i32*) #1

declare dso_local i32 @CLNT_CALL(%struct.TYPE_13__*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @AUTH_DESTROY(i32*) #1

declare dso_local i32 @CLNT_RELEASE(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
