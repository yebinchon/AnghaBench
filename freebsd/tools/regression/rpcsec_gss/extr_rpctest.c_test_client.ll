; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/rpcsec_gss/extr_rpctest.c_test_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/rpcsec_gss/extr_rpctest.c_test_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32*, i32, i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"rpc_createerr.cf_stat = %d\0A\00", align 1
@rpc_createerr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"rpc_createerr.cf_error.re_errno = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@GSS_C_MUTUAL_FLAG = common dso_local global i32 0, align 4
@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@rpc_gss_svc_none = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"rpc_gss_seccreate\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Can't authenticate with server %s.\0A\00", align 1
@rpc_gss_svc_privacy = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"rpc_gss_svc_default\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"rpc_gss_svc_none\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"rpc_gss_svc_integrity\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"rpc_gss_svc_privacy\00", align 1
@__const.test_client.svc_names = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)], align 16
@xdr_int = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"succeeded with %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"unexpected reply %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"call failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @test_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_client(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [133 x i8], align 16
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.timeval, align 8
  %17 = alloca i32, align 4
  %18 = alloca [4 x i8*], align 16
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 123456, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlcpy(i8* %23, i8* %26, i32 128)
  br label %31

28:                                               ; preds = %2
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %30 = call i32 @gethostname(i8* %29, i32 128)
  br label %31

31:                                               ; preds = %28, %22
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call %struct.TYPE_13__* @clnt_create(i8* %32, i32 %33, i32 %34, i8* %35)
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %10, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @rpc_createerr, i32 0, i32 0), align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @rpc_createerr, i32 0, i32 1, i32 0), align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %134

44:                                               ; preds = %31
  %45 = getelementptr inbounds [133 x i8], [133 x i8]* %9, i64 0, i64 0
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %47 = getelementptr inbounds [133 x i8], [133 x i8]* %9, i64 0, i64 0
  %48 = call i32 @strcat(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %49 = getelementptr inbounds [133 x i8], [133 x i8]* %9, i64 0, i64 0
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %51 = call i32 @strcat(i8* %49, i8* %50)
  %52 = call i8** (...) @rpc_gss_get_mechanisms()
  store i8** %52, i8*** %12, align 8
  store i32* null, i32** %11, align 8
  br label %53

53:                                               ; preds = %73, %44
  %54 = load i8**, i8*** %12, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 600, i32* %60, align 8
  %61 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = getelementptr inbounds [133 x i8], [133 x i8]* %9, i64 0, i64 0
  %66 = load i8**, i8*** %12, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i64, i64* @rpc_gss_svc_none, align 8
  %69 = call i32* @rpc_gss_seccreate(%struct.TYPE_13__* %64, i8* %65, i8* %67, i64 %68, i32* null, %struct.TYPE_12__* %13, i32* %14)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %76

73:                                               ; preds = %57
  %74 = load i8**, i8*** %12, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %12, align 8
  br label %53

76:                                               ; preds = %72, %53
  %77 = load i32*, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = call i32 @clnt_pcreateerror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  %83 = call i32 @exit(i32 1) #4
  unreachable

84:                                               ; preds = %76
  %85 = load i32*, i32** %11, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load i64, i64* @rpc_gss_svc_none, align 8
  store i64 %88, i64* %15, align 8
  br label %89

89:                                               ; preds = %126, %84
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @rpc_gss_svc_privacy, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %129

93:                                               ; preds = %89
  %94 = bitcast [4 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %94, i8* align 16 bitcast ([4 x i8*]* @__const.test_client.svc_names to i8*), i64 32, i1 false)
  %95 = load i32*, i32** %11, align 8
  %96 = load i64, i64* %15, align 8
  %97 = call i32 @rpc_gss_set_defaults(i32* %95, i64 %96, i32* null)
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i32 5, i32* %98, align 8
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i64 0, i64* %99, align 8
  store i32 42, i32* %19, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = load i64, i64* @xdr_int, align 8
  %102 = trunc i64 %101 to i32
  %103 = bitcast i32* %19 to i8*
  %104 = load i64, i64* @xdr_int, align 8
  %105 = trunc i64 %104 to i32
  %106 = bitcast i32* %19 to i8*
  %107 = call i32 @CLNT_CALL(%struct.TYPE_13__* %100, i32 1, i32 %102, i8* %103, i32 %105, i8* %106, %struct.timeval* byval(%struct.timeval) align 8 %16)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @RPC_SUCCESS, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %93
  %112 = load i64, i64* %15, align 8
  %113 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %114)
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 142
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* %19, align 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %111
  br label %125

122:                                              ; preds = %93
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = call i32 @clnt_perror(%struct.TYPE_13__* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %121
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %15, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %15, align 8
  br label %89

129:                                              ; preds = %89
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @AUTH_DESTROY(i32* %130)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %133 = call i32 @CLNT_DESTROY(%struct.TYPE_13__* %132)
  br label %134

134:                                              ; preds = %129, %39
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local %struct.TYPE_13__* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8** @rpc_gss_get_mechanisms(...) #1

declare dso_local i32* @rpc_gss_seccreate(%struct.TYPE_13__*, i8*, i8*, i64, i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @clnt_pcreateerror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @rpc_gss_set_defaults(i32*, i64, i32*) #1

declare dso_local i32 @CLNT_CALL(%struct.TYPE_13__*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @AUTH_DESTROY(i32*) #1

declare dso_local i32 @CLNT_DESTROY(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
