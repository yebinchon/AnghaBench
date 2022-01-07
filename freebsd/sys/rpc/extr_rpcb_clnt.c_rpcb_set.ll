; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpcb_clnt.c_rpcb_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpcb_clnt.c_rpcb_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.netconfig = type { i32 }
%struct.netbuf = type { i32 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@RPC_UNKNOWNPROTO = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@RPC_UNKNOWNADDR = common dso_local global i32 0, align 4
@RPC_N2AXLATEFAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RPCBPROC_SET = common dso_local global i64 0, align 8
@xdr_rpcb = common dso_local global i64 0, align 8
@xdr_bool = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4
@M_RPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_set(i32 %0, i32 %1, %struct.netconfig* %2, %struct.netbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netconfig*, align 8
  %9 = alloca %struct.netbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca %struct.netconfig, align 4
  %14 = alloca %struct.netbuf, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.netconfig* %2, %struct.netconfig** %8, align 8
  store %struct.netbuf* %3, %struct.netbuf** %9, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %17 = icmp eq %struct.netconfig* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @RPC_UNKNOWNPROTO, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %78

21:                                               ; preds = %4
  %22 = load %struct.netbuf*, %struct.netbuf** %9, align 8
  %23 = icmp eq %struct.netbuf* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @RPC_UNKNOWNADDR, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %5, align 4
  br label %78

27:                                               ; preds = %21
  %28 = call i32* (...) @local_rpcb()
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %5, align 4
  br label %78

33:                                               ; preds = %27
  %34 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %35 = bitcast %struct.netconfig* %13 to i8*
  %36 = bitcast %struct.netconfig* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load %struct.netbuf*, %struct.netbuf** %9, align 8
  %38 = bitcast %struct.netbuf* %14 to i8*
  %39 = bitcast %struct.netbuf* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = call i32 @taddr2uaddr(%struct.netconfig* %13, %struct.netbuf* %14)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %33
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @CLNT_DESTROY(i32* %46)
  %48 = load i32, i32* @RPC_N2AXLATEFAILURE, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpc_createerr, i32 0, i32 0), align 4
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %5, align 4
  br label %78

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 %53, i32* %54, align 8
  %55 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %56 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %59, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i64, i64* @RPCBPROC_SET, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* @xdr_rpcb, align 8
  %64 = trunc i64 %63 to i32
  %65 = bitcast %struct.TYPE_3__* %12 to i8*
  %66 = load i64, i64* @xdr_bool, align 8
  %67 = trunc i64 %66 to i32
  %68 = bitcast i32* %11 to i8*
  %69 = load i32, i32* @tottimeout, align 4
  %70 = call i32 @CLNT_CALL(i32* %60, i32 %62, i32 %64, i8* %65, i32 %67, i8* %68, i32 %69)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @CLNT_DESTROY(i32* %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @M_RPC, align 4
  %76 = call i32 @free(i32 %74, i32 %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %50, %45, %31, %24, %18
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32* @local_rpcb(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @taddr2uaddr(%struct.netconfig*, %struct.netbuf*) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
