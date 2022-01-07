; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_yp_ping.c___pmap_getport.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_yp_ping.c___pmap_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sockaddr_in = type { i64 }
%struct.pmap = type { i64, i32, i8*, i8* }

@PMAPPORT = common dso_local global i32 0, align 4
@PMAPPROG = common dso_local global i32 0, align 4
@PMAPVERS = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@RPCSMALLMSGSIZE = common dso_local global i32 0, align 4
@PMAPPROC_GETPORT = common dso_local global i32 0, align 4
@xdr_pmap = common dso_local global i64 0, align 8
@xdr_u_short = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8
@RPC_PMAPFAILURE = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RPC_PROGNOTREGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sockaddr_in*, i8*, i8*, i32)* @__pmap_getport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__pmap_getport(%struct.sockaddr_in* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pmap, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 -1, i32* %10, align 4
  %13 = load i32, i32* @PMAPPORT, align 4
  %14 = call i64 @htons(i32 %13)
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %18 = load i32, i32* @PMAPPROG, align 4
  %19 = load i32, i32* @PMAPVERS, align 4
  %20 = load i32, i32* @timeout, align 4
  %21 = load i32, i32* @RPCSMALLMSGSIZE, align 4
  %22 = load i32, i32* @RPCSMALLMSGSIZE, align 4
  %23 = call i32* @clntudp_bufcreate(%struct.sockaddr_in* %17, i32 %18, i32 %19, i32 %20, i32* %10, i32 %21, i32 %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds %struct.pmap, %struct.pmap* %12, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds %struct.pmap, %struct.pmap* %12, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.pmap, %struct.pmap* %12, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.pmap, %struct.pmap* %12, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @PMAPPROC_GETPORT, align 4
  %36 = load i64, i64* @xdr_pmap, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* @xdr_u_short, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @tottimeout, align 4
  %41 = call i64 @CLNT_CALL(i32* %34, i32 %35, i32 %37, %struct.pmap* %12, i32 %39, i64* %9, i32 %40)
  %42 = load i64, i64* @RPC_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %26
  %45 = load i32, i32* @RPC_PMAPFAILURE, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @clnt_geterr(i32* %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 1))
  br label %54

48:                                               ; preds = %26
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @RPC_PROGNOTREGISTERED, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 4
  br label %53

53:                                               ; preds = %51, %48
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @CLNT_DESTROY(i32* %55)
  br label %57

57:                                               ; preds = %54, %4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @close(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %9, align 8
  ret i64 %66
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32* @clntudp_bufcreate(%struct.sockaddr_in*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @CLNT_CALL(i32*, i32, i32, %struct.pmap*, i32, i64*, i32) #1

declare dso_local i32 @clnt_geterr(i32*, i32*) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
