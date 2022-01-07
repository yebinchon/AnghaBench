; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_check_replay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_check_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { i64, i32*, i32 }

@SVC_RPC_GSS_SEQWINDOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rpc_gss_client*, i64)* @svc_rpc_gss_check_replay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rpc_gss_check_replay(%struct.svc_rpc_gss_client* %0, i64 %1) #0 {
  %3 = alloca %struct.svc_rpc_gss_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %10 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %9, i32 0, i32 2
  %11 = call i32 @sx_xlock(i32* %10)
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %14 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %19 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = sub nsw i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SVC_RPC_GSS_SEQWINDOW, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %8, align 4
  br label %50

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = sdiv i32 %30, 32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = srem i32 %32, 32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %35 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %45, %27
  %51 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %52 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %51, i32 0, i32 2
  %53 = call i32 @sx_xunlock(i32* %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
