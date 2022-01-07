; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypset/extr_ypset.c_bind_tohost.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypset/extr_ypset.c_bind_tohost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.ypbind_setdom = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.in_addr = type { i32 }
%struct.hostent = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@YPPROG = common dso_local global i32 0, align 4
@YPPROC_NULL = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s not running ypserv\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't find address for %s\00", align 1
@YPVERS = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@YPBINDPROG = common dso_local global i32 0, align 4
@YPBINDVERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"can't yp_bind, reason: %s\00", align 1
@YPERR_YPBIND = common dso_local global i32 0, align 4
@YPBINDPROC_SETDOM = common dso_local global i32 0, align 4
@xdr_ypbind_setdom = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [97 x i8] c"cannot ypset for domain %s on host %s: %s - make sure ypbind was started with -ypset or -ypsetme\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*, i8*, i8*)* @bind_tohost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_tohost(%struct.sockaddr_in* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ypbind_setdom, align 8
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @YPPROG, align 4
  %18 = load i32, i32* @YPPROC_NULL, align 4
  %19 = load i32, i32* @IPPROTO_UDP, align 4
  %20 = call i32 @getrpcport(i8* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @htons(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = call i32 @memset(%struct.ypbind_setdom* %8, i32 0, i32 24)
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @inet_aton(i8* %30, %struct.in_addr* %9)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = call %struct.hostent* @gethostbyname(i8* %34)
  store %struct.hostent* %35, %struct.hostent** %10, align 8
  %36 = load %struct.hostent*, %struct.hostent** %10, align 8
  %37 = icmp eq %struct.hostent* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %43 = load %struct.hostent*, %struct.hostent** %10, align 8
  %44 = getelementptr inbounds %struct.hostent, %struct.hostent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memmove(i32* %42, i32 %45, i32 4)
  br label %47

47:                                               ; preds = %41, %26
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds %struct.ypbind_setdom, %struct.ypbind_setdom* %8, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %51 = getelementptr inbounds %struct.ypbind_setdom, %struct.ypbind_setdom* %8, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @bcopy(i32* %50, i32* %52, i32 4)
  %54 = getelementptr inbounds %struct.ypbind_setdom, %struct.ypbind_setdom* %8, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @bcopy(i32* %14, i32* %55, i32 4)
  %57 = load i32, i32* @YPVERS, align 4
  %58 = getelementptr inbounds %struct.ypbind_setdom, %struct.ypbind_setdom* %8, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 15, i32* %59, align 8
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %61, i32* %13, align 4
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %63 = load i32, i32* @YPBINDPROG, align 4
  %64 = load i32, i32* @YPBINDVERS, align 4
  %65 = bitcast %struct.timeval* %11 to { i32, i64 }*
  %66 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %65, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call %struct.TYPE_7__* @clntudp_create(%struct.sockaddr_in* %62, i32 %63, i32 %64, i32 %67, i64 %69, i32* %13)
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %12, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %72 = icmp eq %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %47
  %74 = load i32, i32* @YPERR_YPBIND, align 4
  %75 = call i32 @yperr_string(i32 %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @YPERR_YPBIND, align 4
  store i32 %79, i32* %4, align 4
  br label %105

80:                                               ; preds = %47
  %81 = call i32 (...) @authunix_create_default()
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %85 = load i32, i32* @YPBINDPROC_SETDOM, align 4
  %86 = load i64, i64* @xdr_ypbind_setdom, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* @xdr_void, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @clnt_call(%struct.TYPE_7__* %84, i32 %85, i32 %87, %struct.ypbind_setdom* %8, i32 %89, i32* null, %struct.timeval* byval(%struct.timeval) align 8 %11)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %80
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @clnt_sperrno(i32 %96)
  %98 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i8* %94, i8* %95, i32 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %100 = call i32 @clnt_destroy(%struct.TYPE_7__* %99)
  %101 = load i32, i32* @YPERR_YPBIND, align 4
  store i32 %101, i32* %4, align 4
  br label %105

102:                                              ; preds = %80
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %104 = call i32 @clnt_destroy(%struct.TYPE_7__* %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %93, %73
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @getrpcport(i8*, i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(%struct.ypbind_setdom*, i32, i32) #1

declare dso_local i64 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memmove(i32*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_7__* @clntudp_create(%struct.sockaddr_in*, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @yperr_string(i32) #1

declare dso_local i32 @authunix_create_default(...) #1

declare dso_local i32 @clnt_call(%struct.TYPE_7__*, i32, i32, %struct.ypbind_setdom*, i32, i32*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_sperrno(i32) #1

declare dso_local i32 @clnt_destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
