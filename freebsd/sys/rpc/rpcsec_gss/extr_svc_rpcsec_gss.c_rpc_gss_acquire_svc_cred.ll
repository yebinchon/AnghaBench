; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_acquire_svc_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_acquire_svc_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_svc_name = type { i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i32 }

@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@GSS_C_ACCEPT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rpc_gss_svc_name*)* @rpc_gss_acquire_svc_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_gss_acquire_svc_cred(%struct.svc_rpc_gss_svc_name* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rpc_gss_svc_name*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  store %struct.svc_rpc_gss_svc_name* %0, %struct.svc_rpc_gss_svc_name** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %3, align 8
  %15 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %3, align 8
  %20 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @strlen(i64 %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @GSS_C_NT_HOSTBASED_SERVICE, align 4
  %25 = call i64 @gss_import_name(i64* %5, %struct.TYPE_5__* %6, i32 %24, i32* %7)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @GSS_S_COMPLETE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %59

31:                                               ; preds = %1
  %32 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %3, align 8
  %33 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %3, align 8
  %39 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %38, i32 0, i32 0
  %40 = call i32 @gss_release_cred(i64* %5, i32* %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %3, align 8
  %44 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GSS_C_ACCEPT, align 4
  %47 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %3, align 8
  %48 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %47, i32 0, i32 0
  %49 = call i64 @gss_acquire_cred(i64* %5, i32 %42, i32 %45, %struct.TYPE_6__* %8, i32 %46, i32* %48, i32* null, i32* null)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @GSS_S_COMPLETE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = call i32 @gss_release_name(i64* %5, i32* %7)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %41
  %57 = call i32 @gss_release_name(i64* %5, i32* %7)
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %53, %29
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @gss_import_name(i64*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @gss_release_cred(i64*, i32*) #1

declare dso_local i64 @gss_acquire_cred(i64*, i32, i32, %struct.TYPE_6__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gss_release_name(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
