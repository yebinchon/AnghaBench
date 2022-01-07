; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.rpc_gss_data = type { i64, i32 }

@RPCSEC_GSS_DESTROYING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MSG_DENIED = common dso_local global i64 0, align 8
@AUTH_ERROR = common dso_local global i64 0, align 8
@RPCSEC_GSS_CREDPROBLEM = common dso_local global i64 0, align 8
@RPCSEC_GSS_CTXPROBLEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @rpc_gss_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_gss_refresh(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rpc_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_gss_data*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rpc_msg*
  store %struct.rpc_msg* %10, %struct.rpc_msg** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %11)
  store %struct.rpc_gss_data* %12, %struct.rpc_gss_data** %8, align 8
  %13 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %8, align 8
  %14 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %13, i32 0, i32 1
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %8, align 8
  %17 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RPCSEC_GSS_DESTROYING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %8, align 8
  %23 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %22, i32 0, i32 1
  %24 = call i32 @mtx_unlock(i32* %23)
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %69

26:                                               ; preds = %2
  %27 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %8, align 8
  %28 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %27, i32 0, i32 1
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %31 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MSG_DENIED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %26
  %37 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %38 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AUTH_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %36
  %45 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %46 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RPCSEC_GSS_CREDPROBLEM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %54 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RPCSEC_GSS_CTXPROBLEM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52, %44
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @rpc_gss_destroy_context(i32* %61, i32 %62)
  %64 = call i32 @memset(i32* %7, i32 0, i32 4)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @rpc_gss_init(i32* %65, i32* %7)
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %52, %36, %26
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %60, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @rpc_gss_destroy_context(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rpc_gss_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
