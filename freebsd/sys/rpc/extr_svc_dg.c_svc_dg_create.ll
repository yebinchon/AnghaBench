; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_dg.c_svc_dg_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_dg.c_svc_dg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32*, i32*, %struct.socket*, i32*, i32 }
%struct.socket = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.sockaddr = type { i32 }
%struct.__rpc_sockinfo = type { i32, i32 }

@svc_dg_str = common dso_local global i8* null, align 8
@svc_dg_err1 = common dso_local global i32 0, align 4
@svc_dg_err2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"xprt->xp_lock\00", align 1
@svc_dg_ops = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@svc_dg_soupcall = common dso_local global i32 0, align 4
@__no_mem_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svc_dg_create(i32* %0, %struct.socket* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.__rpc_sockinfo, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = call i32 @__rpc_socket2sockinfo(%struct.socket* %14, %struct.__rpc_sockinfo* %11)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** @svc_dg_str, align 8
  %19 = load i32, i32* @svc_dg_err1, align 4
  %20 = call i32 @printf(i8* %18, i32 %19)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %110

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %11, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %11, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @__rpc_get_t_size(i32 %23, i32 %25, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %11, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %11, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @__rpc_get_t_size(i32 %30, i32 %32, i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %21
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %21
  %42 = load i8*, i8** @svc_dg_str, align 8
  %43 = load i32, i32* @svc_dg_err2, align 4
  %44 = call i32 @printf(i8* %42, i32 %43)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %110

45:                                               ; preds = %38
  %46 = call %struct.TYPE_11__* (...) @svc_xprt_alloc()
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %10, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 6
  %49 = call i32 @sx_init(i32* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 5
  store i32* %50, i32** %52, align 8
  %53 = load %struct.socket*, %struct.socket** %7, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  store %struct.socket* %53, %struct.socket** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32* @svc_dg_ops, i32** %61, align 8
  %62 = load %struct.socket*, %struct.socket** %7, align 8
  %63 = getelementptr inbounds %struct.socket, %struct.socket* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @CURVNET_SET(i32 %64)
  %66 = load %struct.socket*, %struct.socket** %7, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %71, align 8
  %73 = load %struct.socket*, %struct.socket** %7, align 8
  %74 = call i32 %72(%struct.socket* %73, %struct.sockaddr** %12)
  store i32 %74, i32* %13, align 4
  %75 = call i32 (...) @CURVNET_RESTORE()
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %45
  br label %104

79:                                               ; preds = %45
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %83 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %84 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i32* %81, %struct.sockaddr* %82, i32 %85)
  %87 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %88 = load i32, i32* @M_SONAME, align 4
  %89 = call i32 @free(%struct.sockaddr* %87, i32 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = call i32 @xprt_register(%struct.TYPE_11__* %90)
  %92 = load %struct.socket*, %struct.socket** %7, align 8
  %93 = getelementptr inbounds %struct.socket, %struct.socket* %92, i32 0, i32 0
  %94 = call i32 @SOCKBUF_LOCK(i32* %93)
  %95 = load %struct.socket*, %struct.socket** %7, align 8
  %96 = load i32, i32* @SO_RCV, align 4
  %97 = load i32, i32* @svc_dg_soupcall, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %99 = call i32 @soupcall_set(%struct.socket* %95, i32 %96, i32 %97, %struct.TYPE_11__* %98)
  %100 = load %struct.socket*, %struct.socket** %7, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 0
  %102 = call i32 @SOCKBUF_UNLOCK(i32* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %5, align 8
  br label %110

104:                                              ; preds = %78
  %105 = load i8*, i8** @svc_dg_str, align 8
  %106 = load i32, i32* @__no_mem_str, align 4
  %107 = call i32 @printf(i8* %105, i32 %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = call i32 @svc_xprt_free(%struct.TYPE_11__* %108)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %110

110:                                              ; preds = %104, %79, %41, %17
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %111
}

declare dso_local i32 @__rpc_socket2sockinfo(%struct.socket*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @__rpc_get_t_size(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @svc_xprt_alloc(...) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local i32 @xprt_register(%struct.TYPE_11__*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @soupcall_set(%struct.socket*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @svc_xprt_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
