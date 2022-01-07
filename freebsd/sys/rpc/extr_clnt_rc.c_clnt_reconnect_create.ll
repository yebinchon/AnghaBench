; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_rc.c_clnt_reconnect_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_rc.c_clnt_reconnect_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, i32*, i32, i64, i32* }
%struct.netconfig = type { i32 }
%struct.sockaddr = type { i64 }
%struct.rc_data = type { i64, i64, i8*, i32*, i32, i8*, i8*, i64, i8*, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, %struct.netconfig*, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@RPC_UNKNOWNADDR = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"rc->rc_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"rpcrecv\00", align 1
@curthread = common dso_local global %struct.TYPE_11__* null, align 8
@clnt_reconnect_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @clnt_reconnect_create(%struct.netconfig* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.netconfig*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.rc_data*, align 8
  store %struct.netconfig* %0, %struct.netconfig** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  store %struct.rc_data* null, %struct.rc_data** %15, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %17 = icmp eq %struct.sockaddr* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @RPC_UNKNOWNADDR, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 0), align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %104

20:                                               ; preds = %6
  %21 = call i8* @mem_alloc(i32 48)
  %22 = bitcast i8* %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %14, align 8
  %23 = call i8* @mem_alloc(i32 128)
  %24 = bitcast i8* %23 to %struct.rc_data*
  store %struct.rc_data* %24, %struct.rc_data** %15, align 8
  %25 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %26 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %25, i32 0, i32 16
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %27)
  %29 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %30 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %29, i32 0, i32 15
  %31 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @memcpy(i32* %30, %struct.sockaddr* %31, i64 %34)
  %36 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  %37 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %38 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %37, i32 0, i32 14
  store %struct.netconfig* %36, %struct.netconfig** %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %41 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %40, i32 0, i32 13
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %44 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %47 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %50 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %52 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  %54 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %55 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %54, i32 0, i32 11
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 -1, i32* %56, align 4
  %57 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %58 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 3, i32* %59, align 8
  %60 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %61 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %60, i32 0, i32 10
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @INT_MAX, align 4
  %64 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %65 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** @FALSE, align 8
  %67 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %68 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %67, i32 0, i32 8
  store i8* %66, i8** %68, align 8
  %69 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %70 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %69, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %72 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %71, i32 0, i32 7
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** @FALSE, align 8
  %74 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %75 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @FALSE, align 8
  %77 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %78 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curthread, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @crdup(i32 %81)
  %83 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %84 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %86 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %85, i32 0, i32 3
  store i32* null, i32** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 5
  store i32* @clnt_reconnect_ops, i32** %90, align 8
  %91 = load %struct.rc_data*, %struct.rc_data** %15, align 8
  %92 = bitcast %struct.rc_data* %91 to i8*
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  store i64 %93, i64* %95, align 8
  %96 = call i32 (...) @authnone_create()
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %7, align 8
  br label %104

104:                                              ; preds = %20, %18
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %105
}

declare dso_local i8* @mem_alloc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i64) #1

declare dso_local i32 @crdup(i32) #1

declare dso_local i32 @authnone_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
