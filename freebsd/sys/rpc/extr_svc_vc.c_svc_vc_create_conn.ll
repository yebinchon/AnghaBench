; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_create_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_create_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32*, i32*, %struct.cf_conn*, %struct.socket*, i32* }
%struct.cf_conn = type { i32 }
%struct.socket = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.sockaddr = type { i32 }
%struct.sockopt = type { i32*, i32, i32, i64, i8* }

@SOPT_SET = common dso_local global i8* null, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TCP_NODELAY = common dso_local global i32 0, align 4
@XPRT_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"xprt->xp_lock\00", align 1
@svc_vc_ops = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@svc_vc_soupcall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @svc_vc_create_conn(i32* %0, %struct.socket* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.cf_conn*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockopt, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %10, align 8
  store i32 1, i32* %12, align 4
  %14 = call i32 @bzero(%struct.sockopt* %11, i32 32)
  %15 = load i8*, i8** @SOPT_SET, align 8
  %16 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 4
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* @SOL_SOCKET, align 8
  %18 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 3
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* @SO_KEEPALIVE, align 4
  %20 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 0
  store i32* %12, i32** %21, align 8
  %22 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 1
  store i32 4, i32* %22, align 8
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = call i32 @sosetopt(%struct.socket* %23, %struct.sockopt* %11)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %143

28:                                               ; preds = %3
  %29 = load %struct.socket*, %struct.socket** %6, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IPPROTO_TCP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = call i32 @bzero(%struct.sockopt* %11, i32 32)
  %38 = load i8*, i8** @SOPT_SET, align 8
  %39 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* @IPPROTO_TCP, align 8
  %41 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 3
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @TCP_NODELAY, align 4
  %43 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 0
  store i32* %12, i32** %44, align 8
  %45 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 1
  store i32 4, i32* %45, align 8
  %46 = load %struct.socket*, %struct.socket** %6, align 8
  %47 = call i32 @sosetopt(%struct.socket* %46, %struct.sockopt* %11)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %143

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %28
  %53 = call %struct.cf_conn* @mem_alloc(i32 4)
  store %struct.cf_conn* %53, %struct.cf_conn** %9, align 8
  %54 = load i32, i32* @XPRT_IDLE, align 4
  %55 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %56 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = call %struct.TYPE_12__* (...) @svc_xprt_alloc()
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %8, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = call i32 @sx_init(i32* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 9
  store i32* %61, i32** %63, align 8
  %64 = load %struct.socket*, %struct.socket** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 8
  store %struct.socket* %64, %struct.socket** %66, align 8
  %67 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 7
  store %struct.cf_conn* %67, %struct.cf_conn** %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 6
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 5
  store i32* @svc_vc_ops, i32** %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 360, i32* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  %78 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %79 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %80 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i32* %77, %struct.sockaddr* %78, i32 %81)
  %83 = load %struct.socket*, %struct.socket** %6, align 8
  %84 = getelementptr inbounds %struct.socket, %struct.socket* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @CURVNET_SET(i32 %85)
  %87 = load %struct.socket*, %struct.socket** %6, align 8
  %88 = getelementptr inbounds %struct.socket, %struct.socket* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %92, align 8
  %94 = load %struct.socket*, %struct.socket** %6, align 8
  %95 = call i32 %93(%struct.socket* %94, %struct.sockaddr** %10)
  store i32 %95, i32* %13, align 4
  %96 = call i32 (...) @CURVNET_RESTORE()
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %52
  br label %135

100:                                              ; preds = %52
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %104 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %105 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(i32* %102, %struct.sockaddr* %103, i32 %106)
  %108 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %109 = load i32, i32* @M_SONAME, align 4
  %110 = call i32 @free(%struct.sockaddr* %108, i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = call i32 @xprt_register(%struct.TYPE_12__* %111)
  %113 = load %struct.socket*, %struct.socket** %6, align 8
  %114 = getelementptr inbounds %struct.socket, %struct.socket* %113, i32 0, i32 0
  %115 = call i32 @SOCKBUF_LOCK(i32* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load %struct.socket*, %struct.socket** %6, align 8
  %119 = load i32, i32* @SO_RCV, align 4
  %120 = load i32, i32* @svc_vc_soupcall, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %122 = call i32 @soupcall_set(%struct.socket* %118, i32 %119, i32 %120, %struct.TYPE_12__* %121)
  %123 = load %struct.socket*, %struct.socket** %6, align 8
  %124 = getelementptr inbounds %struct.socket, %struct.socket* %123, i32 0, i32 0
  %125 = call i32 @SOCKBUF_UNLOCK(i32* %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = call i32 @sx_xlock(i32* %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = call i32 @xprt_active(%struct.TYPE_12__* %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = call i32 @sx_xunlock(i32* %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %134, %struct.TYPE_12__** %4, align 8
  br label %143

135:                                              ; preds = %99
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = call i32 @sx_destroy(i32* %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %140 = call i32 @svc_xprt_free(%struct.TYPE_12__* %139)
  %141 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %142 = call i32 @mem_free(%struct.cf_conn* %141, i32 4)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %143

143:                                              ; preds = %135, %100, %50, %27
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %144
}

declare dso_local i32 @bzero(%struct.sockopt*, i32) #1

declare dso_local i32 @sosetopt(%struct.socket*, %struct.sockopt*) #1

declare dso_local %struct.cf_conn* @mem_alloc(i32) #1

declare dso_local %struct.TYPE_12__* @svc_xprt_alloc(...) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local i32 @xprt_register(%struct.TYPE_12__*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @soupcall_set(%struct.socket*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @xprt_active(%struct.TYPE_12__*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @svc_xprt_free(%struct.TYPE_12__*) #1

declare dso_local i32 @mem_free(%struct.cf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
