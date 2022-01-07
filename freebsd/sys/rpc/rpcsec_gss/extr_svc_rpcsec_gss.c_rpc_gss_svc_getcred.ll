; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_svc_getcred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_svc_getcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { %struct.svc_rpc_gss_cookedcred*, %struct.TYPE_3__ }
%struct.svc_rpc_gss_cookedcred = type { %struct.svc_rpc_gss_client* }
%struct.svc_rpc_gss_client = type { i32, %struct.ucred*, %struct.TYPE_4__ }
%struct.ucred = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@RPCSEC_GSS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@prison0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_req*, %struct.ucred**, i32*)* @rpc_gss_svc_getcred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_gss_svc_getcred(%struct.svc_req* %0, %struct.ucred** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca %struct.ucred**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.svc_rpc_gss_cookedcred*, align 8
  %10 = alloca %struct.svc_rpc_gss_client*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %5, align 8
  store %struct.ucred** %1, %struct.ucred*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %13 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RPCSEC_GSS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %86

20:                                               ; preds = %3
  %21 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 0
  %23 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %22, align 8
  store %struct.svc_rpc_gss_cookedcred* %23, %struct.svc_rpc_gss_cookedcred** %9, align 8
  %24 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %9, align 8
  %25 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %24, i32 0, i32 0
  %26 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %25, align 8
  store %struct.svc_rpc_gss_client* %26, %struct.svc_rpc_gss_client** %10, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %31 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %36 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %35, i32 0, i32 1
  %37 = load %struct.ucred*, %struct.ucred** %36, align 8
  %38 = icmp ne %struct.ucred* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %41 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %40, i32 0, i32 1
  %42 = load %struct.ucred*, %struct.ucred** %41, align 8
  %43 = call %struct.ucred* @crhold(%struct.ucred* %42)
  %44 = load %struct.ucred**, %struct.ucred*** %6, align 8
  store %struct.ucred* %43, %struct.ucred** %44, align 8
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %4, align 4
  br label %86

46:                                               ; preds = %34
  %47 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %48 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %47, i32 0, i32 2
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %11, align 8
  %49 = call %struct.ucred* (...) @crget()
  %50 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %10, align 8
  %51 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %50, i32 0, i32 1
  store %struct.ucred* %49, %struct.ucred** %51, align 8
  store %struct.ucred* %49, %struct.ucred** %8, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ucred*, %struct.ucred** %8, align 8
  %56 = getelementptr inbounds %struct.ucred, %struct.ucred* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ucred*, %struct.ucred** %8, align 8
  %58 = getelementptr inbounds %struct.ucred, %struct.ucred* %57, i32 0, i32 4
  store i32 %54, i32* %58, align 4
  %59 = load %struct.ucred*, %struct.ucred** %8, align 8
  %60 = getelementptr inbounds %struct.ucred, %struct.ucred* %59, i32 0, i32 5
  store i32 %54, i32* %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ucred*, %struct.ucred** %8, align 8
  %65 = getelementptr inbounds %struct.ucred, %struct.ucred* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ucred*, %struct.ucred** %8, align 8
  %67 = getelementptr inbounds %struct.ucred, %struct.ucred* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 4
  %68 = load %struct.ucred*, %struct.ucred** %8, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @crsetgroups(%struct.ucred* %68, i32 %71, i32 %74)
  %76 = load %struct.ucred*, %struct.ucred** %8, align 8
  %77 = getelementptr inbounds %struct.ucred, %struct.ucred* %76, i32 0, i32 0
  store i32* @prison0, i32** %77, align 8
  %78 = load %struct.ucred*, %struct.ucred** %8, align 8
  %79 = getelementptr inbounds %struct.ucred, %struct.ucred* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @prison_hold(i32* %80)
  %82 = load %struct.ucred*, %struct.ucred** %8, align 8
  %83 = call %struct.ucred* @crhold(%struct.ucred* %82)
  %84 = load %struct.ucred**, %struct.ucred*** %6, align 8
  store %struct.ucred* %83, %struct.ucred** %84, align 8
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %46, %39, %18
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.ucred* @crhold(%struct.ucred*) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local i32 @crsetgroups(%struct.ucred*, i32, i32) #1

declare dso_local i32 @prison_hold(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
