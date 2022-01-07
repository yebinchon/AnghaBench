; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_sendreply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_sendreply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32, i32 }
%struct.rpc_msg = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 (i32*, i8*)*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32 }

@REPLY = common dso_local global i32 0, align 4
@MSG_ACCEPTED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @svc_sendreply(%struct.svc_req* %0, i64 (i32*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca i64 (i32*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rpc_msg, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.svc_req* %0, %struct.svc_req** %5, align 8
  store i64 (i32*, i8*)* %1, i64 (i32*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %13 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @REPLY, align 4
  %17 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MSG_ACCEPTED, align 4
  %19 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @SUCCESS, align 4
  %27 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load i64, i64* @xdr_void, align 8
  %33 = inttoptr i64 %32 to i64 (i32*, i8*)*
  %34 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %8, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i64 (i32*, i8*)* %33, i64 (i32*, i8*)** %36, align 8
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = load i32, i32* @MT_DATA, align 4
  %39 = call %struct.mbuf* @m_getcl(i32 %37, i32 %38, i32 0)
  store %struct.mbuf* %39, %struct.mbuf** %9, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %41 = load i32, i32* @XDR_ENCODE, align 4
  %42 = call i32 @xdrmbuf_create(i32* %10, %struct.mbuf* %40, i32 %41)
  %43 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 %43(i32* %10, i8* %44)
  store i64 %45, i64* %11, align 8
  %46 = call i32 @XDR_DESTROY(i32* %10)
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %3
  %50 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %52 = call i64 @svc_sendreply_common(%struct.svc_req* %50, %struct.rpc_msg* %8, %struct.mbuf* %51)
  store i64 %52, i64* %4, align 8
  br label %57

53:                                               ; preds = %3
  %54 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %55 = call i32 @m_freem(%struct.mbuf* %54)
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @xdrmbuf_create(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local i64 @svc_sendreply_common(%struct.svc_req*, %struct.rpc_msg*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
