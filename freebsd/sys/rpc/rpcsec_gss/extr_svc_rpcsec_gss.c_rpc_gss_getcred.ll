; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_getcred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_getcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { %struct.svc_rpc_gss_cookedcred*, %struct.TYPE_2__ }
%struct.svc_rpc_gss_cookedcred = type { %struct.svc_rpc_gss_client* }
%struct.svc_rpc_gss_client = type { i8*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@RPCSEC_GSS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_gss_getcred(%struct.svc_req* %0, i32** %1, i32** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.svc_rpc_gss_cookedcred*, align 8
  %11 = alloca %struct.svc_rpc_gss_client*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %13 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RPCSEC_GSS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %50

20:                                               ; preds = %4
  %21 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 0
  %23 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %22, align 8
  store %struct.svc_rpc_gss_cookedcred* %23, %struct.svc_rpc_gss_cookedcred** %10, align 8
  %24 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %10, align 8
  %25 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %24, i32 0, i32 0
  %26 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %25, align 8
  store %struct.svc_rpc_gss_client* %26, %struct.svc_rpc_gss_client** %11, align 8
  %27 = load i32**, i32*** %7, align 8
  %28 = icmp ne i32** %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %11, align 8
  %31 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %30, i32 0, i32 2
  %32 = load i32**, i32*** %7, align 8
  store i32* %31, i32** %32, align 8
  br label %33

33:                                               ; preds = %29, %20
  %34 = load i32**, i32*** %8, align 8
  %35 = icmp ne i32** %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %11, align 8
  %38 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %37, i32 0, i32 1
  %39 = load i32**, i32*** %8, align 8
  store i32* %38, i32** %39, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i8**, i8*** %9, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %11, align 8
  %45 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** %9, align 8
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
