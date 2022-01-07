; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_backchannel_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_backchannel_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.rpc_msg = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.cf_conn = type { %struct.mbuf* }
%struct.ct_data = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.rpc_msg*, %struct.sockaddr**, %struct.mbuf**)* @svc_vc_backchannel_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_vc_backchannel_recv(%struct.TYPE_4__* %0, %struct.rpc_msg* %1, %struct.sockaddr** %2, %struct.mbuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.rpc_msg*, align 8
  %8 = alloca %struct.sockaddr**, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca %struct.cf_conn*, align 8
  %11 = alloca %struct.ct_data*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %7, align 8
  store %struct.sockaddr** %2, %struct.sockaddr*** %8, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.cf_conn*
  store %struct.cf_conn* %17, %struct.cf_conn** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @sx_xlock(i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ct_data*
  store %struct.ct_data* %24, %struct.ct_data** %11, align 8
  %25 = load %struct.ct_data*, %struct.ct_data** %11, align 8
  %26 = icmp eq %struct.ct_data* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @sx_xunlock(i32* %29)
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %5, align 4
  br label %78

32:                                               ; preds = %4
  %33 = load %struct.ct_data*, %struct.ct_data** %11, align 8
  %34 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %33, i32 0, i32 0
  %35 = call i32 @mtx_lock(i32* %34)
  %36 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %37 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %36, i32 0, i32 0
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  store %struct.mbuf* %38, %struct.mbuf** %12, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = call i32 @xprt_inactive_self(%struct.TYPE_4__* %42)
  %44 = load %struct.ct_data*, %struct.ct_data** %11, align 8
  %45 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %44, i32 0, i32 0
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @sx_xunlock(i32* %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %78

51:                                               ; preds = %32
  %52 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  %55 = load %struct.cf_conn*, %struct.cf_conn** %10, align 8
  %56 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %55, i32 0, i32 0
  store %struct.mbuf* %54, %struct.mbuf** %56, align 8
  %57 = load %struct.ct_data*, %struct.ct_data** %11, align 8
  %58 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %57, i32 0, i32 0
  %59 = call i32 @mtx_unlock(i32* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @sx_xunlock(i32* %61)
  %63 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %64 = load i32, i32* @XDR_DECODE, align 4
  %65 = call i32 @xdrmbuf_create(i32* %13, %struct.mbuf* %63, i32 %64)
  %66 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %67 = call i32 @xdr_callmsg(i32* %13, %struct.rpc_msg* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %51
  %70 = call i32 @XDR_DESTROY(i32* %13)
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %5, align 4
  br label %78

72:                                               ; preds = %51
  %73 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %73, align 8
  %74 = call %struct.mbuf* @xdrmbuf_getall(i32* %13)
  %75 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* %74, %struct.mbuf** %75, align 8
  %76 = call i32 @XDR_DESTROY(i32* %13)
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %72, %69, %41, %27
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xprt_inactive_self(%struct.TYPE_4__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xdrmbuf_create(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @xdr_callmsg(i32*, %struct.rpc_msg*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local %struct.mbuf* @xdrmbuf_getall(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
