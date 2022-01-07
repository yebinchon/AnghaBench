; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.mbuf = type { i32 }
%struct.svc_rpc_gss_cookedcred = type { i64, i32, %struct.svc_rpc_gss_client* }
%struct.svc_rpc_gss_client = type { i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"in svc_rpc_gss_wrap()\00", align 1
@CLIENT_ESTABLISHED = common dso_local global i64 0, align 8
@rpc_gss_svc_none = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.mbuf**)* @svc_rpc_gss_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rpc_gss_wrap(%struct.TYPE_3__* %0, %struct.mbuf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.svc_rpc_gss_cookedcred*, align 8
  %7 = alloca %struct.svc_rpc_gss_client*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  %8 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.svc_rpc_gss_cookedcred*
  store %struct.svc_rpc_gss_cookedcred* %12, %struct.svc_rpc_gss_cookedcred** %6, align 8
  %13 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %6, align 8
  %14 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %13, i32 0, i32 2
  %15 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %14, align 8
  store %struct.svc_rpc_gss_client* %15, %struct.svc_rpc_gss_client** %7, align 8
  %16 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %7, align 8
  %17 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CLIENT_ESTABLISHED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %6, align 8
  %23 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @rpc_gss_svc_none, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  %30 = icmp eq %struct.mbuf* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %21, %2
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %48

33:                                               ; preds = %27
  %34 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %35 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %7, align 8
  %36 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %7, align 8
  %39 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %6, align 8
  %42 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %6, align 8
  %45 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @xdr_rpc_gss_wrap_data(%struct.mbuf** %34, i32 %37, i32 %40, i64 %43, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %33, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

declare dso_local i32 @xdr_rpc_gss_wrap_data(%struct.mbuf**, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
