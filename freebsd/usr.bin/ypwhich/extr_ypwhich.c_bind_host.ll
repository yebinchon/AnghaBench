; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ypwhich/extr_ypwhich.c_bind_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ypwhich/extr_ypwhich.c_bind_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.hostent = type { i8* }
%struct.ypbind_resp = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.in_addr = type { i32 }
%struct.timeval = type { i32, i64 }

@RPC_ANYSOCK = common dso_local global i32 0, align 4
@YPBINDPROG = common dso_local global i32 0, align 4
@YPBINDVERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"host is not bound to a ypmaster\00", align 1
@YPERR_YPBIND = common dso_local global i32 0, align 4
@YPBINDPROC_DOMAIN = common dso_local global i32 0, align 4
@xdr_domainname = common dso_local global i64 0, align 8
@xdr_ypbind_resp = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"can't clnt_call: %s\00", align 1
@YPBIND_SUCC_VAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"can't yp_bind: reason: %s\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_in*)* @bind_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_host(i8* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.ypbind_resp, align 8
  %8 = alloca %struct.in_addr, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  store %struct.hostent* null, %struct.hostent** %6, align 8
  %13 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 15, i32* %14, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %17 = load i32, i32* @YPBINDPROG, align 4
  %18 = load i32, i32* @YPBINDVERS, align 4
  %19 = bitcast %struct.timeval* %9 to { i32, i64 }*
  %20 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32* @clntudp_create(%struct.sockaddr_in* %16, i32 %17, i32 %18, i32 %21, i64 %23, i32* %11)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @YPERR_YPBIND, align 4
  store i32 %29, i32* %3, align 4
  br label %90

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 5, i32* %31, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @YPBINDPROC_DOMAIN, align 4
  %35 = load i64, i64* @xdr_domainname, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* @xdr_ypbind_resp, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @clnt_call(i32* %33, i32 %34, i32 %36, i8** %4, i32 %38, %struct.ypbind_resp* %7, %struct.timeval* byval(%struct.timeval) align 8 %9)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @RPC_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load i32, i32* @YPERR_YPBIND, align 4
  %45 = call i32 @yperr_string(i32 %44)
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @clnt_destroy(i32* %47)
  %49 = load i32, i32* @YPERR_YPBIND, align 4
  store i32 %49, i32* %3, align 4
  br label %90

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct.ypbind_resp, %struct.ypbind_resp* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @YPBIND_SUCC_VAL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ypbind_resp, %struct.ypbind_resp* %7, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @yperr_string(i32 %58)
  %60 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @clnt_destroy(i32* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %90

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @clnt_destroy(i32* %66)
  %68 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %69 = getelementptr inbounds %struct.ypbind_resp, %struct.ypbind_resp* %7, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @memmove(i32* %68, i32* %71, i32 4)
  %73 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %74 = bitcast i32* %73 to i8*
  %75 = load i32, i32* @AF_INET, align 4
  %76 = call %struct.hostent* @gethostbyaddr(i8* %74, i32 4, i32 %75)
  store %struct.hostent* %76, %struct.hostent** %6, align 8
  %77 = load %struct.hostent*, %struct.hostent** %6, align 8
  %78 = icmp ne %struct.hostent* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %65
  %80 = load %struct.hostent*, %struct.hostent** %6, align 8
  %81 = getelementptr inbounds %struct.hostent, %struct.hostent* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %89

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @inet_ntoa(i32 %86)
  %88 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %84, %79
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %55, %43, %27
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32* @clntudp_create(%struct.sockaddr_in*, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i8**, i32, %struct.ypbind_resp*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @yperr_string(i32) #1

declare dso_local i32 @clnt_destroy(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
