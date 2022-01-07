; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svcerr_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svcerr_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.rpc_msg = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@REPLY = common dso_local global i32 0, align 4
@MSG_DENIED = common dso_local global i32 0, align 4
@AUTH_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svcerr_auth(%struct.svc_req* %0, i32 %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.rpc_msg, align 4
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %8 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %11 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @REPLY, align 4
  %15 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @MSG_DENIED, align 4
  %17 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @AUTH_ERROR, align 4
  %20 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %38 = call i32 @svc_getrpccaller(%struct.svc_req* %37)
  %39 = call i32 @replay_setreply(i64 %36, %struct.rpc_msg* %6, i32 %38, i32* null)
  br label %40

40:                                               ; preds = %31, %2
  %41 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %42 = call i32 @svc_sendreply_common(%struct.svc_req* %41, %struct.rpc_msg* %6, i32* null)
  ret void
}

declare dso_local i32 @replay_setreply(i64, %struct.rpc_msg*, i32, i32*) #1

declare dso_local i32 @svc_getrpccaller(%struct.svc_req*) #1

declare dso_local i32 @svc_sendreply_common(%struct.svc_req*, %struct.rpc_msg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
