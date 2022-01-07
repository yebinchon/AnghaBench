; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_server_program_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_server_program_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }

@RPCSEC_GSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"svc=%d, mech=%s, uid=%d, gid=%d, gids={\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@xdr_void = common dso_local global i32 0, align 4
@xdr_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_req*, i32*)* @server_program_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_program_1(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %10 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RPCSEC_GSS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %17 = call i32 @svcerr_weakauth(%struct.svc_req* %16)
  br label %111

18:                                               ; preds = %2
  %19 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %20 = call i32 @rpc_gss_getcred(%struct.svc_req* %19, %struct.TYPE_8__** %5, %struct.TYPE_7__** %6, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %24 = call i32 @svcerr_systemerr(%struct.svc_req* %23)
  br label %111

25:                                               ; preds = %18
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %31, i32 %34, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %59, %25
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %39

62:                                               ; preds = %39
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %65 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %105 [
    i32 0, label %67
    i32 1, label %84
  ]

67:                                               ; preds = %62
  %68 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %69 = load i32, i32* @xdr_void, align 4
  %70 = call i32 @svc_getargs(%struct.svc_req* %68, i32 %69, i8* null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %74 = call i32 @svcerr_decode(%struct.svc_req* %73)
  br label %108

75:                                               ; preds = %67
  %76 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %77 = load i32, i32* @xdr_void, align 4
  %78 = call i32 @svc_sendreply(%struct.svc_req* %76, i32 %77, i8* null)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %82 = call i32 @svcerr_systemerr(%struct.svc_req* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %108

84:                                               ; preds = %62
  %85 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %86 = load i32, i32* @xdr_int, align 4
  %87 = bitcast i32* %8 to i8*
  %88 = call i32 @svc_getargs(%struct.svc_req* %85, i32 %86, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %92 = call i32 @svcerr_decode(%struct.svc_req* %91)
  br label %108

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 100
  store i32 %95, i32* %8, align 4
  %96 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %97 = load i32, i32* @xdr_int, align 4
  %98 = bitcast i32* %8 to i8*
  %99 = call i32 @svc_sendreply(%struct.svc_req* %96, i32 %97, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %103 = call i32 @svcerr_systemerr(%struct.svc_req* %102)
  br label %104

104:                                              ; preds = %101, %93
  br label %108

105:                                              ; preds = %62
  %106 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %107 = call i32 @svcerr_noproc(%struct.svc_req* %106)
  br label %108

108:                                              ; preds = %105, %104, %90, %83, %72
  %109 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %110 = call i32 @svc_freereq(%struct.svc_req* %109)
  br label %111

111:                                              ; preds = %108, %22, %15
  ret void
}

declare dso_local i32 @svcerr_weakauth(%struct.svc_req*) #1

declare dso_local i32 @rpc_gss_getcred(%struct.svc_req*, %struct.TYPE_8__**, %struct.TYPE_7__**, i32*) #1

declare dso_local i32 @svcerr_systemerr(%struct.svc_req*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @svc_getargs(%struct.svc_req*, i32, i8*) #1

declare dso_local i32 @svcerr_decode(%struct.svc_req*) #1

declare dso_local i32 @svc_sendreply(%struct.svc_req*, i32, i8*) #1

declare dso_local i32 @svcerr_noproc(%struct.svc_req*) #1

declare dso_local i32 @svc_freereq(%struct.svc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
