; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_svc_max_data_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_svc_max_data_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { %struct.svc_rpc_gss_cookedcred* }
%struct.svc_rpc_gss_cookedcred = type { %struct.svc_rpc_gss_client* }
%struct.svc_rpc_gss_client = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"gss_wrap_size_limit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_gss_svc_max_data_length(%struct.svc_req* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rpc_gss_cookedcred*, align 8
  %7 = alloca %struct.svc_rpc_gss_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %14 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %13, i32 0, i32 0
  %15 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %14, align 8
  store %struct.svc_rpc_gss_cookedcred* %15, %struct.svc_rpc_gss_cookedcred** %6, align 8
  %16 = load %struct.svc_rpc_gss_cookedcred*, %struct.svc_rpc_gss_cookedcred** %6, align 8
  %17 = getelementptr inbounds %struct.svc_rpc_gss_cookedcred, %struct.svc_rpc_gss_cookedcred* %16, i32 0, i32 0
  %18 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %17, align 8
  store %struct.svc_rpc_gss_client* %18, %struct.svc_rpc_gss_client** %7, align 8
  %19 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %7, align 8
  %20 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %29 [
    i32 129, label %23
    i32 131, label %25
    i32 130, label %25
    i32 128, label %27
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %3, align 4
  br label %58

25:                                               ; preds = %2, %2
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %8, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

30:                                               ; preds = %27, %25
  %31 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %7, align 8
  %32 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %7, align 8
  %36 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @gss_wrap_size_limit(i64* %11, i32 %33, i32 %34, i32 %37, i32 %38, i64* %9)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @GSS_S_COMPLETE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %3, align 4
  br label %58

51:                                               ; preds = %30
  %52 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %7, align 8
  %53 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @rpc_gss_log_status(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %55, i64 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %49, %29, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @gss_wrap_size_limit(i64*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @rpc_gss_log_status(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
