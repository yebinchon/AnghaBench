; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_all_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_all_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypall_callback = type { i64, i32 }
%struct.ypreq_nokey = type { i8*, i8* }
%struct.timeval = type { i64, i32 }

@_yplib_host_timeout = common dso_local global i32 0, align 4
@ypresp_allfn = common dso_local global i32 0, align 4
@ypresp_data = common dso_local global i8* null, align 8
@YPPROC_ALL = common dso_local global i32 0, align 4
@xdr_ypreq_nokey = common dso_local global i64 0, align 8
@xdr_ypresp_all_seq = common dso_local global i64 0, align 8
@YP_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_all_host(i32* %0, i8* %1, i8* %2, %struct.ypall_callback* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ypall_callback*, align 8
  %10 = alloca %struct.ypreq_nokey, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.ypall_callback* %3, %struct.ypall_callback** %9, align 8
  %13 = load i32, i32* @_yplib_host_timeout, align 4
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %10, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %10, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load %struct.ypall_callback*, %struct.ypall_callback** %9, align 8
  %21 = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* @ypresp_allfn, align 4
  %23 = load %struct.ypall_callback*, %struct.ypall_callback** %9, align 8
  %24 = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @ypresp_data, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @YPPROC_ALL, align 4
  %29 = load i64, i64* @xdr_ypreq_nokey, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* @xdr_ypresp_all_seq, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @clnt_call(i32* %27, i32 %28, i32 %30, %struct.ypreq_nokey* %10, i32 %32, i64* %12, %struct.timeval* byval(%struct.timeval) align 8 %11)
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @YP_FALSE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @ypprot_err(i64 %38)
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @clnt_call(i32*, i32, i32, %struct.ypreq_nokey*, i32, i64*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @ypprot_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
