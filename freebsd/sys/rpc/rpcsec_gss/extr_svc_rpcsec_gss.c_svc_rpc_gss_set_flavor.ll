; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_set_flavor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_set_flavor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.svc_rpc_gss_client = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@svc_rpc_gss_set_flavor.krb5_mech_oid = internal global %struct.TYPE_5__ { i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\12\01\02\02\00", align 1
@RPCSEC_GSS_KRB5 = common dso_local global i32 0, align 4
@RPCSEC_GSS_KRB5I = common dso_local global i32 0, align 4
@RPCSEC_GSS_KRB5P = common dso_local global i32 0, align 4
@RPCSEC_GSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rpc_gss_client*)* @svc_rpc_gss_set_flavor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rpc_gss_set_flavor(%struct.svc_rpc_gss_client* %0) #0 {
  %2 = alloca %struct.svc_rpc_gss_client*, align 8
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %2, align 8
  %3 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %4 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @kgss_oid_equal(i32 %5, %struct.TYPE_5__* @svc_rpc_gss_set_flavor.krb5_mech_oid)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %10 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %25 [
    i32 131, label %13
    i32 129, label %13
    i32 130, label %17
    i32 128, label %21
  ]

13:                                               ; preds = %8, %8
  %14 = load i32, i32* @RPCSEC_GSS_KRB5, align 4
  %15 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %16 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %25

17:                                               ; preds = %8
  %18 = load i32, i32* @RPCSEC_GSS_KRB5I, align 4
  %19 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %20 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %8
  %22 = load i32, i32* @RPCSEC_GSS_KRB5P, align 4
  %23 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %24 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %8, %21, %17, %13
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @RPCSEC_GSS, align 4
  %28 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %29 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %25
  ret void
}

declare dso_local i64 @kgss_oid_equal(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
