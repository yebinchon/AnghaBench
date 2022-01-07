; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_set_svc_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_set_svc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_svc_name = type { i32, i8*, i8*, i32, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@M_RPC = common dso_local global i32 0, align 4
@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@svc_rpc_gss_lock = common dso_local global i32 0, align 4
@svc_rpc_gss_svc_names = common dso_local global i32 0, align 4
@sn_link = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_gss_set_svc_name(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.svc_rpc_gss_svc_name*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @rpc_gss_mech_to_oid(i8* %14, i32* %13)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %6, align 4
  br label %65

19:                                               ; preds = %5
  %20 = call %struct.svc_rpc_gss_svc_name* @mem_alloc(i32 48)
  store %struct.svc_rpc_gss_svc_name* %20, %struct.svc_rpc_gss_svc_name** %12, align 8
  %21 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %22 = icmp ne %struct.svc_rpc_gss_svc_name* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %6, align 4
  br label %65

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @M_RPC, align 4
  %28 = call i32 @strdup(i8* %26, i32 %27)
  %29 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %30 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %33 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %36 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %38 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %39 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %42 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %45 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %47 = call i32 @rpc_gss_acquire_svc_cred(%struct.svc_rpc_gss_svc_name* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %25
  %50 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %51 = getelementptr inbounds %struct.svc_rpc_gss_svc_name, %struct.svc_rpc_gss_svc_name* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @M_RPC, align 4
  %54 = call i32 @free(i32 %52, i32 %53)
  %55 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %56 = call i32 @mem_free(%struct.svc_rpc_gss_svc_name* %55, i32 48)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  br label %65

58:                                               ; preds = %25
  %59 = call i32 @sx_xlock(i32* @svc_rpc_gss_lock)
  %60 = load %struct.svc_rpc_gss_svc_name*, %struct.svc_rpc_gss_svc_name** %12, align 8
  %61 = load i32, i32* @sn_link, align 4
  %62 = call i32 @SLIST_INSERT_HEAD(i32* @svc_rpc_gss_svc_names, %struct.svc_rpc_gss_svc_name* %60, i32 %61)
  %63 = call i32 @sx_xunlock(i32* @svc_rpc_gss_lock)
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %58, %49, %23, %17
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @rpc_gss_mech_to_oid(i8*, i32*) #1

declare dso_local %struct.svc_rpc_gss_svc_name* @mem_alloc(i32) #1

declare dso_local i32 @strdup(i8*, i32) #1

declare dso_local i32 @rpc_gss_acquire_svc_cred(%struct.svc_rpc_gss_svc_name*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @mem_free(%struct.svc_rpc_gss_svc_name*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.svc_rpc_gss_svc_name*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
