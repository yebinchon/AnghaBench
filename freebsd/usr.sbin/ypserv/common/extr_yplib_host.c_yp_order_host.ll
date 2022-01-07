; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_order_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_order_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_order = type { i32, i32 }
%struct.ypreq_nokey = type { i8*, i8* }
%struct.timeval = type { i64, i32 }

@_yplib_host_timeout = common dso_local global i32 0, align 4
@YPPROC_ORDER = common dso_local global i32 0, align 4
@xdr_ypreq_nokey = common dso_local global i64 0, align 8
@xdr_ypresp_order = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"yp_order_host: clnt_call\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_order_host(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ypresp_order, align 4
  %10 = alloca %struct.ypreq_nokey, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @_yplib_host_timeout, align 4
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %10, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %10, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = call i32 @memset(%struct.ypresp_order* %9, i32 0, i32 8)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @YPPROC_ORDER, align 4
  %23 = load i64, i64* @xdr_ypreq_nokey, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* @xdr_ypresp_order, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @clnt_call(i32* %21, i32 %22, i32 %24, %struct.ypreq_nokey* %10, i32 %26, %struct.ypresp_order* %9, %struct.timeval* byval(%struct.timeval) align 8 %11)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @RPC_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @clnt_perror(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %4
  %35 = getelementptr inbounds %struct.ypresp_order, %struct.ypresp_order* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i64, i64* @xdr_ypresp_order, align 8
  %39 = trunc i64 %38 to i32
  %40 = bitcast %struct.ypresp_order* %9 to i8*
  %41 = call i32 @xdr_free(i32 %39, i8* %40)
  %42 = getelementptr inbounds %struct.ypresp_order, %struct.ypresp_order* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ypprot_err(i32 %43)
  ret i32 %44
}

declare dso_local i32 @memset(%struct.ypresp_order*, i32, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, %struct.ypreq_nokey*, i32, %struct.ypresp_order*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32*, i8*) #1

declare dso_local i32 @xdr_free(i32, i8*) #1

declare dso_local i32 @ypprot_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
