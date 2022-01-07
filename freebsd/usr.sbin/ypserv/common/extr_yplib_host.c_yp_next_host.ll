; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_next_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_next_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_key_val = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ypreq_key = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.timeval = type { i64, i32 }

@_yplib_host_timeout = common dso_local global i32 0, align 4
@YPPROC_NEXT = common dso_local global i32 0, align 4
@xdr_ypreq_key = common dso_local global i64 0, align 8
@xdr_ypresp_key_val = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"yp_next_host: clnt_call\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_next_host(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8** %5, i32* %6, i8** %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.ypresp_key_val, align 4
  %20 = alloca %struct.ypreq_key, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8** %5, i8*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8** %7, i8*** %17, align 8
  store i32* %8, i32** %18, align 8
  %23 = load i8**, i8*** %17, align 8
  store i8* null, i8** %23, align 8
  %24 = load i8**, i8*** %15, align 8
  store i8* null, i8** %24, align 8
  %25 = load i32*, i32** %18, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %16, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @_yplib_host_timeout, align 4
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %20, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %20, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %20, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = getelementptr inbounds %struct.ypreq_key, %struct.ypreq_key* %20, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = call i32 @memset(%struct.ypresp_key_val* %19, i32 0, i32 20)
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* @YPPROC_NEXT, align 4
  %43 = load i64, i64* @xdr_ypreq_key, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* @xdr_ypresp_key_val, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @clnt_call(i32* %41, i32 %42, i32 %44, %struct.ypreq_key* %20, i32 %46, %struct.ypresp_key_val* %19, %struct.timeval* byval(%struct.timeval) align 8 %21)
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* @RPC_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %9
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @clnt_perror(i32* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %9
  %55 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %19, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ypprot_err(i32 %56)
  store i32 %57, i32* %22, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %106, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %19, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %16, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i8* @malloc(i32 %66)
  %68 = load i8**, i8*** %15, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i8**, i8*** %15, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %19, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i8* %70, i32 %73, i32 %75)
  %77 = load i8**, i8*** %15, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 0, i8* %82, align 1
  %83 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %19, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %18, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %18, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i8* @malloc(i32 %89)
  %91 = load i8**, i8*** %17, align 8
  store i8* %90, i8** %91, align 8
  %92 = load i8**, i8*** %17, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %19, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %18, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(i8* %93, i32 %96, i32 %98)
  %100 = load i8**, i8*** %17, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %59, %54
  %107 = load i64, i64* @xdr_ypresp_key_val, align 8
  %108 = trunc i64 %107 to i32
  %109 = bitcast %struct.ypresp_key_val* %19 to i8*
  %110 = call i32 @xdr_free(i32 %108, i8* %109)
  %111 = load i32, i32* %22, align 4
  ret i32 %111
}

declare dso_local i32 @memset(%struct.ypresp_key_val*, i32, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, %struct.ypreq_key*, i32, %struct.ypresp_key_val*, %struct.timeval* byval(%struct.timeval) align 8) #1

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
