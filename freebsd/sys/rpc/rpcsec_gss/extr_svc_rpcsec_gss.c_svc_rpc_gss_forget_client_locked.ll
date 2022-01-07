; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_forget_client_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_forget_client_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client_list = type { i32 }
%struct.svc_rpc_gss_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@svc_rpc_gss_lock = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@svc_rpc_gss_client_hash = common dso_local global %struct.svc_rpc_gss_client_list* null, align 8
@svc_rpc_gss_client_hash_size = common dso_local global i64 0, align 8
@cl_link = common dso_local global i32 0, align 4
@svc_rpc_gss_clients = common dso_local global %struct.svc_rpc_gss_client_list zeroinitializer, align 4
@cl_alllink = common dso_local global i32 0, align 4
@svc_rpc_gss_client_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rpc_gss_client*)* @svc_rpc_gss_forget_client_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rpc_gss_forget_client_locked(%struct.svc_rpc_gss_client* %0) #0 {
  %2 = alloca %struct.svc_rpc_gss_client*, align 8
  %3 = alloca %struct.svc_rpc_gss_client_list*, align 8
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %2, align 8
  %4 = load i32, i32* @SX_XLOCKED, align 4
  %5 = call i32 @sx_assert(i32* @svc_rpc_gss_lock, i32 %4)
  %6 = load %struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client_list** @svc_rpc_gss_client_hash, align 8
  %7 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %8 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @svc_rpc_gss_client_hash_size, align 8
  %12 = urem i64 %10, %11
  %13 = getelementptr inbounds %struct.svc_rpc_gss_client_list, %struct.svc_rpc_gss_client_list* %6, i64 %12
  store %struct.svc_rpc_gss_client_list* %13, %struct.svc_rpc_gss_client_list** %3, align 8
  %14 = load %struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client_list** %3, align 8
  %15 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %16 = load i32, i32* @cl_link, align 4
  %17 = call i32 @TAILQ_REMOVE(%struct.svc_rpc_gss_client_list* %14, %struct.svc_rpc_gss_client* %15, i32 %16)
  %18 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %19 = load i32, i32* @cl_alllink, align 4
  %20 = call i32 @TAILQ_REMOVE(%struct.svc_rpc_gss_client_list* @svc_rpc_gss_clients, %struct.svc_rpc_gss_client* %18, i32 %19)
  %21 = load i32, i32* @svc_rpc_gss_client_count, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @svc_rpc_gss_client_count, align 4
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
