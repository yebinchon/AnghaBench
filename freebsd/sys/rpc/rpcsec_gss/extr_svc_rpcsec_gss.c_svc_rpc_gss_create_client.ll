; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_create_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_create_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.svc_rpc_gss_client_list = type { i32 }
%struct.svc_rpc_gss_client = type { %struct.TYPE_3__, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"in svc_rpc_gss_create_client()\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"GSS-client\00", align 1
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@svc_rpc_gss_next_clientid = common dso_local global i32 0, align 4
@CLIENT_NEW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@svc_rpc_gss_client_hash = common dso_local global %struct.svc_rpc_gss_client_list* null, align 8
@svc_rpc_gss_client_hash_size = common dso_local global i64 0, align 8
@svc_rpc_gss_lock = common dso_local global i32 0, align 4
@cl_link = common dso_local global i32 0, align 4
@svc_rpc_gss_clients = common dso_local global %struct.svc_rpc_gss_client_list zeroinitializer, align 4
@cl_alllink = common dso_local global i32 0, align 4
@svc_rpc_gss_client_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_rpc_gss_client* ()* @svc_rpc_gss_create_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_rpc_gss_client* @svc_rpc_gss_create_client() #0 {
  %1 = alloca %struct.svc_rpc_gss_client*, align 8
  %2 = alloca %struct.svc_rpc_gss_client_list*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i64, align 8
  %5 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %6 = call %struct.svc_rpc_gss_client* @mem_alloc(i32 48)
  store %struct.svc_rpc_gss_client* %6, %struct.svc_rpc_gss_client** %1, align 8
  %7 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %8 = call i32 @memset(%struct.svc_rpc_gss_client* %7, i32 0, i32 48)
  %9 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %10 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %9, i32 0, i32 5
  %11 = call i32 @refcount_init(i32* %10, i32 2)
  %12 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %13 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %12, i32 0, i32 4
  %14 = call i32 @sx_init(i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @getcredhostid(i32 %17, i64* %4)
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %21 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = call i32 @getboottime(%struct.timeval* %3)
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %27 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @svc_rpc_gss_next_clientid, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @svc_rpc_gss_next_clientid, align 4
  %31 = sext i32 %29 to i64
  %32 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %33 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 %31, i64* %34, align 8
  %35 = load i32, i32* @CLIENT_NEW, align 4
  %36 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %37 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %40 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* @time_uptime, align 8
  %42 = add nsw i64 %41, 300
  %43 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %44 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client_list** @svc_rpc_gss_client_hash, align 8
  %46 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %47 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @svc_rpc_gss_client_hash_size, align 8
  %51 = urem i64 %49, %50
  %52 = getelementptr inbounds %struct.svc_rpc_gss_client_list, %struct.svc_rpc_gss_client_list* %45, i64 %51
  store %struct.svc_rpc_gss_client_list* %52, %struct.svc_rpc_gss_client_list** %2, align 8
  %53 = call i32 @sx_xlock(i32* @svc_rpc_gss_lock)
  %54 = load %struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client_list** %2, align 8
  %55 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %56 = load i32, i32* @cl_link, align 4
  %57 = call i32 @TAILQ_INSERT_HEAD(%struct.svc_rpc_gss_client_list* %54, %struct.svc_rpc_gss_client* %55, i32 %56)
  %58 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %59 = load i32, i32* @cl_alllink, align 4
  %60 = call i32 @TAILQ_INSERT_HEAD(%struct.svc_rpc_gss_client_list* @svc_rpc_gss_clients, %struct.svc_rpc_gss_client* %58, i32 %59)
  %61 = load i32, i32* @svc_rpc_gss_client_count, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @svc_rpc_gss_client_count, align 4
  %63 = call i32 @sx_xunlock(i32* @svc_rpc_gss_lock)
  %64 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  ret %struct.svc_rpc_gss_client* %64
}

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

declare dso_local %struct.svc_rpc_gss_client* @mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.svc_rpc_gss_client*, i32, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @getcredhostid(i32, i64*) #1

declare dso_local i32 @getboottime(%struct.timeval*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
