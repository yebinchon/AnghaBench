; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_ping.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._dom_binding = type { i32, i8*, i64, i32, i64 }
%struct.timeval = type { i64, i8* }

@RPC_ANYSOCK = common dso_local global i32 0, align 4
@FAIL_THRESHOLD = common dso_local global i8* null, align 8
@YPPROG = common dso_local global i32 0, align 4
@YPVERS = common dso_local global i32 0, align 4
@RPCSMALLMSGSIZE = common dso_local global i32 0, align 4
@YPPROC_DOMAIN = common dso_local global i32 0, align 4
@xdr_domainname = common dso_local global i64 0, align 8
@xdr_bool = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ping(%struct._dom_binding* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._dom_binding*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct._dom_binding* %0, %struct._dom_binding** %3, align 8
  %11 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** @FAIL_THRESHOLD, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i8*, i8** @FAIL_THRESHOLD, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %19 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %74

23:                                               ; preds = %1
  %24 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %25 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %24, i32 0, i32 3
  %26 = load i32, i32* @YPPROG, align 4
  %27 = load i32, i32* @YPVERS, align 4
  %28 = load i32, i32* @RPCSMALLMSGSIZE, align 4
  %29 = load i32, i32* @RPCSMALLMSGSIZE, align 4
  %30 = bitcast %struct.timeval* %5 to { i64, i8* }*
  %31 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %30, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32* @clntudp_bufcreate(i32* %25, i32 %26, i32 %27, i64 %32, i8* %34, i32* %8, i32 %28, i32 %29)
  store i32* %35, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %39 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %41 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %43 = call i32 @broadcast(%struct._dom_binding* %42)
  store i32 1, i32* %2, align 4
  br label %74

44:                                               ; preds = %23
  %45 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %46 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %10, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @YPPROC_DOMAIN, align 4
  %50 = load i64, i64* @xdr_domainname, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* @xdr_bool, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @clnt_call(i32* %48, i32 %49, i32 %51, i8** %10, i32 %53, i64* %4, %struct.timeval* byval(%struct.timeval) align 8 %6)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @RPC_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %44
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @FALSE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58, %44
  %63 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %64 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %66 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @clnt_destroy(i32* %67)
  %69 = load %struct._dom_binding*, %struct._dom_binding** %3, align 8
  %70 = call i32 @broadcast(%struct._dom_binding* %69)
  store i32 1, i32* %2, align 4
  br label %74

71:                                               ; preds = %58
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @clnt_destroy(i32* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %62, %37, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32* @clntudp_bufcreate(i32*, i32, i32, i64, i8*, i32*, i32, i32) #1

declare dso_local i32 @broadcast(%struct._dom_binding*) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i8**, i32, i64*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
