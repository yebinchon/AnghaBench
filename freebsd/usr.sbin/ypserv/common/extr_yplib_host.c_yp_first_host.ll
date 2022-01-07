; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_first_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_first_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_key_val = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ypreq_nokey = type { i8*, i8* }
%struct.timeval = type { i64, i32 }

@_yplib_host_timeout = common dso_local global i32 0, align 4
@YPPROC_FIRST = common dso_local global i32 0, align 4
@xdr_ypreq_nokey = common dso_local global i64 0, align 8
@xdr_ypresp_key_val = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"yp_first_host: clnt_call\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_first_host(i32* %0, i8* %1, i8* %2, i8** %3, i32* %4, i8** %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ypresp_key_val, align 4
  %16 = alloca %struct.ypreq_nokey, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i8**, i8*** %13, align 8
  store i8* null, i8** %19, align 8
  %20 = load i8**, i8*** %11, align 8
  store i8* null, i8** %20, align 8
  %21 = load i32*, i32** %14, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %12, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @_yplib_host_timeout, align 4
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %16, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %16, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = call i32 @memset(%struct.ypresp_key_val* %15, i32 0, i32 20)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @YPPROC_FIRST, align 4
  %33 = load i64, i64* @xdr_ypreq_nokey, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @xdr_ypresp_key_val, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @clnt_call(i32* %31, i32 %32, i32 %34, %struct.ypreq_nokey* %16, i32 %36, %struct.ypresp_key_val* %15, %struct.timeval* byval(%struct.timeval) align 8 %17)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @RPC_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %7
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @clnt_perror(i32* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %7
  %45 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %15, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ypprot_err(i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %96, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %15, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %12, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i8* @malloc(i32 %56)
  %58 = load i8**, i8*** %11, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i8**, i8*** %11, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %15, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i8* %60, i32 %63, i32 %65)
  %67 = load i8**, i8*** %11, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 0, i8* %72, align 1
  %73 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %15, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %14, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i8* @malloc(i32 %79)
  %81 = load i8**, i8*** %13, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i8**, i8*** %13, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds %struct.ypresp_key_val, %struct.ypresp_key_val* %15, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i8* %83, i32 %86, i32 %88)
  %90 = load i8**, i8*** %13, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %49, %44
  %97 = load i64, i64* @xdr_ypresp_key_val, align 8
  %98 = trunc i64 %97 to i32
  %99 = bitcast %struct.ypresp_key_val* %15 to i8*
  %100 = call i32 @xdr_free(i32 %98, i8* %99)
  %101 = load i32, i32* %18, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.ypresp_key_val*, i32, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, %struct.ypreq_nokey*, i32, %struct.ypresp_key_val*, %struct.timeval* byval(%struct.timeval) align 8) #1

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
