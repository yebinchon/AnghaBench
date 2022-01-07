; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_auth.c__authenticate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_auth.c__authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.rpc_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }

@svc_auth_null_ops = common dso_local global i32 0, align 4
@AUTH_REJECTEDCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_authenticate(%struct.svc_req* %0, %struct.rpc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.rpc_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %4, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %5, align 8
  %8 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %9 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %8, i32 0, i32 0
  %10 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_4__* %9 to i8*
  %14 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %16 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32* @svc_auth_null_ops, i32** %17, align 8
  %18 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %19 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %46 [
    i32 131, label %26
    i32 129, label %31
    i32 130, label %36
    i32 128, label %41
  ]

26:                                               ; preds = %2
  %27 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %28 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %29 = call i32 @_svcauth_null(%struct.svc_req* %27, %struct.rpc_msg* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %2
  %32 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %33 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %34 = call i32 @_svcauth_unix(%struct.svc_req* %32, %struct.rpc_msg* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %2
  %37 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %38 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %39 = call i32 @_svcauth_short(%struct.svc_req* %37, %struct.rpc_msg* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %2
  %42 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %43 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %44 = call i32 @_svcauth_rpcsec_gss(%struct.svc_req* %42, %struct.rpc_msg* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @AUTH_REJECTEDCRED, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %41, %36, %31, %26
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_svcauth_null(%struct.svc_req*, %struct.rpc_msg*) #2

declare dso_local i32 @_svcauth_unix(%struct.svc_req*, %struct.rpc_msg*) #2

declare dso_local i32 @_svcauth_short(%struct.svc_req*, %struct.rpc_msg*) #2

declare dso_local i32 @_svcauth_rpcsec_gss(%struct.svc_req*, %struct.rpc_msg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
