; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svcerr_progvers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svcerr_progvers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.rpc_msg = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@REPLY = common dso_local global i32 0, align 4
@MSG_ACCEPTED = common dso_local global i32 0, align 4
@PROG_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svcerr_progvers(%struct.svc_req* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.rpc_msg, align 8
  store %struct.svc_req* %0, %struct.svc_req** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %10 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %13 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @REPLY, align 4
  %17 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MSG_ACCEPTED, align 4
  %19 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @PROG_MISMATCH, align 4
  %27 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %3
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %52 = call i32 @svc_getrpccaller(%struct.svc_req* %51)
  %53 = call i32 @replay_setreply(i64 %50, %struct.rpc_msg* %8, i32 %52, i32* null)
  br label %54

54:                                               ; preds = %45, %3
  %55 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %56 = call i32 @svc_sendreply_common(%struct.svc_req* %55, %struct.rpc_msg* %8, i32* null)
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
