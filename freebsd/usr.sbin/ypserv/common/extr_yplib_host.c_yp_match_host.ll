; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_match_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_match_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_val = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ypreq_key = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.timeval = type { i64, i32 }

@_yplib_host_timeout = common dso_local global i32 0, align 4
@YPPROC_MATCH = common dso_local global i32 0, align 4
@xdr_ypreq_key = common dso_local global i64 0, align 8
@xdr_ypresp_val = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"yp_match_host: clnt_call\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_match_host(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8** %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ypresp_val, align 4
  %16 = alloca %struct.ypreq_key, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i8**, i8*** %13, align 8
  store i8* null, i8** %19, align 8
  %20 = load i32*, i32** %14, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @_yplib_host_timeout, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %16, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %16, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %16, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %16, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = call i32 @memset(%struct.ypresp_val* %15, i32 0, i32 12)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @YPPROC_MATCH, align 4
  %37 = load i64, i64* @xdr_ypreq_key, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* @xdr_ypresp_val, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @clnt_call(i32* %35, i32 %36, i32 %38, %struct.ypreq_key* %16, i32 %40, %struct.ypresp_val* %15, %struct.timeval* byval(%struct.timeval) align 8 %17)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @RPC_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %7
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @clnt_perror(i32* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %7
  %49 = getelementptr inbounds %struct.ypresp_val, %struct.ypresp_val* %15, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ypprot_err(i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ypresp_val, %struct.ypresp_val* %15, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %14, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i8* @malloc(i32 %60)
  %62 = load i8**, i8*** %13, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i8**, i8*** %13, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds %struct.ypresp_val, %struct.ypresp_val* %15, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i8* %64, i32 %67, i32 %69)
  %71 = load i8**, i8*** %13, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %53, %48
  %78 = load i64, i64* @xdr_ypresp_val, align 8
  %79 = trunc i64 %78 to i32
  %80 = bitcast %struct.ypresp_val* %15 to i8*
  %81 = call i32 @xdr_free(i32 %79, i8* %80)
  %82 = load i32, i32* %18, align 4
  ret i32 %82
}

declare dso_local i32 @memset(%struct.ypresp_val*, i32, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, %struct.ypreq_key*, i32, %struct.ypresp_val*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32*, i8*) #1

declare dso_local i32 @ypprot_err(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @xdr_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
