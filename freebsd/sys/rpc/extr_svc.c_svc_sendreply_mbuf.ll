; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_sendreply_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_sendreply_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.rpc_msg = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32 }

@REPLY = common dso_local global i32 0, align 4
@MSG_ACCEPTED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_sendreply_mbuf(%struct.svc_req* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.rpc_msg, align 8
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %7 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 3
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @REPLY, align 4
  %11 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @MSG_ACCEPTED, align 4
  %13 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %16 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @SUCCESS, align 4
  %21 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load i64, i64* @xdr_void, align 8
  %27 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %32 = call i32 @svc_sendreply_common(%struct.svc_req* %30, %struct.rpc_msg* %5, %struct.mbuf* %31)
  ret i32 %32
}

declare dso_local i32 @svc_sendreply_common(%struct.svc_req*, %struct.rpc_msg*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
