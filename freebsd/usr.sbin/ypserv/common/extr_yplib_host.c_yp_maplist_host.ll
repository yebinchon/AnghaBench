; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_maplist_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_maplist_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypmaplist = type { i32 }
%struct.ypresp_maplist = type { i32, %struct.ypmaplist* }
%struct.timeval = type { i64, i32 }

@_yplib_host_timeout = common dso_local global i32 0, align 4
@YPPROC_MAPLIST = common dso_local global i32 0, align 4
@xdr_domainname = common dso_local global i64 0, align 8
@xdr_ypresp_maplist = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"yp_maplist: clnt_call\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_maplist_host(i32* %0, i8* %1, %struct.ypmaplist** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ypmaplist**, align 8
  %7 = alloca %struct.ypresp_maplist, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ypmaplist** %2, %struct.ypmaplist*** %6, align 8
  %10 = load i32, i32* @_yplib_host_timeout, align 4
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = call i32 @memset(%struct.ypresp_maplist* %7, i32 0, i32 16)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @YPPROC_MAPLIST, align 4
  %16 = load i64, i64* @xdr_domainname, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* @xdr_ypresp_maplist, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @clnt_call(i32* %14, i32 %15, i32 %17, i8** %5, i32 %19, %struct.ypresp_maplist* %7, %struct.timeval* byval(%struct.timeval) align 8 %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @RPC_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @clnt_perror(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %3
  %28 = getelementptr inbounds %struct.ypresp_maplist, %struct.ypresp_maplist* %7, i32 0, i32 1
  %29 = load %struct.ypmaplist*, %struct.ypmaplist** %28, align 8
  %30 = load %struct.ypmaplist**, %struct.ypmaplist*** %6, align 8
  store %struct.ypmaplist* %29, %struct.ypmaplist** %30, align 8
  %31 = getelementptr inbounds %struct.ypresp_maplist, %struct.ypresp_maplist* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ypprot_err(i32 %32)
  ret i32 %33
}

declare dso_local i32 @memset(%struct.ypresp_maplist*, i32, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i8**, i32, %struct.ypresp_maplist*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32*, i8*) #1

declare dso_local i32 @ypprot_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
