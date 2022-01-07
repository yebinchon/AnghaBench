; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_clnt_rpcbind_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_clnt_rpcbind_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.netbuf = type { i32 }
%struct.netconfig = type { i32 }

@clnt_rpcbind_create.tlist = internal global [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"circuit_n\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"circuit_v\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"datagram_v\00", align 1
@RPC_SUCCESS = common dso_local global i64 0, align 8
@rpc_createerr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RPC_UNKNOWNPROTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, %struct.netbuf**)* @clnt_rpcbind_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clnt_rpcbind_create(i8* %0, i32 %1, %struct.netbuf** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netbuf**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netconfig*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netbuf** %2, %struct.netbuf*** %6, align 8
  store i32* null, i32** %9, align 8
  %11 = load i64, i64* @RPC_SUCCESS, align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i8*], [3 x i8*]* @clnt_rpcbind_create.tlist, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @__rpc_setconf(i8* %19)
  store i8* %20, i8** %10, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %51

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  %29 = call %struct.netconfig* @__rpc_getconf(i8* %28)
  store %struct.netconfig* %29, %struct.netconfig** %8, align 8
  %30 = icmp eq %struct.netconfig* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  %33 = load i64, i64* @RPC_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @RPC_UNKNOWNPROTO, align 8
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0), align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %44

38:                                               ; preds = %27
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.netbuf**, %struct.netbuf*** %6, align 8
  %43 = call i32* @getclnthandle(i8* %39, %struct.netconfig* %40, i32 %41, %struct.netbuf** %42)
  store i32* %43, i32** %9, align 8
  br label %24

44:                                               ; preds = %37, %24
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %54

48:                                               ; preds = %44
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @__rpc_endconf(i8* %49)
  br label %51

51:                                               ; preds = %48, %22
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %12

54:                                               ; preds = %47, %12
  %55 = load i32*, i32** %9, align 8
  ret i32* %55
}

declare dso_local i8* @__rpc_setconf(i8*) #1

declare dso_local %struct.netconfig* @__rpc_getconf(i8*) #1

declare dso_local i32* @getclnthandle(i8*, %struct.netconfig*, i32, %struct.netbuf**) #1

declare dso_local i32 @__rpc_endconf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
