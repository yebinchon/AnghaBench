; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_getclnthandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_getclnthandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.netconfig = type { i32 }
%struct.netbuf = type { i32, i32, i8* }
%struct.addrinfo = type { i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"rpcbind\00", align 1
@RPC_N2AXLATEFAILURE = common dso_local global i64 0, align 8
@rpc_createerr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@RPC_ANYFD = common dso_local global i32 0, align 4
@RPCBPROG = common dso_local global i32 0, align 4
@RPC_TLIERROR = common dso_local global i64 0, align 8
@RPC_RPCBFAILURE = common dso_local global i64 0, align 8
@RPC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.netconfig*, i32, %struct.netbuf**)* @getclnthandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getclnthandle(i8* %0, %struct.netconfig* %1, i32 %2, %struct.netbuf** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.netconfig*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netbuf**, align 8
  %10 = alloca %struct.netbuf, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.netconfig* %1, %struct.netconfig** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netbuf** %3, %struct.netbuf*** %9, align 8
  store i32* null, i32** %13, align 8
  %14 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 16)
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @getaddrinfo(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %11, %struct.addrinfo** %12)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @RPC_N2AXLATEFAILURE, align 8
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 8
  store i32* null, i32** %5, align 8
  br label %95

20:                                               ; preds = %4
  %21 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %10, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %10, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* @RPC_ANYFD, align 4
  %31 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %32 = load i32, i32* @RPCBPROG, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32* @clnt_tli_create(i32 %30, %struct.netconfig* %31, %struct.netbuf* %10, i32 %32, i32 %33, i32 0, i32 0)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %83

37:                                               ; preds = %20
  %38 = load %struct.netbuf**, %struct.netbuf*** %9, align 8
  %39 = icmp ne %struct.netbuf** %38, null
  br i1 %39, label %40, label %82

40:                                               ; preds = %37
  %41 = call i64 @malloc(i32 16)
  %42 = inttoptr i64 %41 to %struct.netbuf*
  %43 = load %struct.netbuf**, %struct.netbuf*** %9, align 8
  store %struct.netbuf* %42, %struct.netbuf** %43, align 8
  %44 = load %struct.netbuf**, %struct.netbuf*** %9, align 8
  %45 = load %struct.netbuf*, %struct.netbuf** %44, align 8
  %46 = icmp ne %struct.netbuf* %45, null
  br i1 %46, label %47, label %81

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.netbuf**, %struct.netbuf*** %9, align 8
  %51 = load %struct.netbuf*, %struct.netbuf** %50, align 8
  %52 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.netbuf**, %struct.netbuf*** %9, align 8
  %56 = load %struct.netbuf*, %struct.netbuf** %55, align 8
  %57 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @malloc(i32 %59)
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.netbuf**, %struct.netbuf*** %9, align 8
  %63 = load %struct.netbuf*, %struct.netbuf** %62, align 8
  %64 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %63, i32 0, i32 2
  store i8* %61, i8** %64, align 8
  %65 = load %struct.netbuf**, %struct.netbuf*** %9, align 8
  %66 = load %struct.netbuf*, %struct.netbuf** %65, align 8
  %67 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %47
  %71 = load %struct.netbuf**, %struct.netbuf*** %9, align 8
  %72 = load %struct.netbuf*, %struct.netbuf** %71, align 8
  %73 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %10, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i8* %74, i8* %76, i32 %78)
  br label %80

80:                                               ; preds = %70, %47
  br label %81

81:                                               ; preds = %80, %40
  br label %82

82:                                               ; preds = %81, %37
  br label %91

83:                                               ; preds = %20
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 8
  %85 = load i64, i64* @RPC_TLIERROR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i64, i64* @RPC_RPCBFAILURE, align 8
  store i64 %88, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 8
  %89 = load i32, i32* @RPC_FAILED, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 1, i32 0), align 8
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %90, %82
  %92 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %93 = call i32 @freeaddrinfo(%struct.addrinfo* %92)
  %94 = load i32*, i32** %13, align 8
  store i32* %94, i32** %5, align 8
  br label %95

95:                                               ; preds = %91, %18
  %96 = load i32*, i32** %5, align 8
  ret i32* %96
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32* @clnt_tli_create(i32, %struct.netconfig*, %struct.netbuf*, i32, i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
