; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_destroy_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_destroy_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { i32, i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.svc_rpc_gss_client* }

@.str = private unnamed_addr constant [32 x i8] c"in svc_rpc_gss_destroy_client()\00", align 1
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rpc_gss_client*)* @svc_rpc_gss_destroy_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rpc_gss_destroy_client(%struct.svc_rpc_gss_client* %0) #0 {
  %2 = alloca %struct.svc_rpc_gss_client*, align 8
  %3 = alloca i32, align 4
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %2, align 8
  %4 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %6 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %11 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %10, i32 0, i32 5
  %12 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %13 = call i32 @gss_delete_sec_context(i32* %3, i32* %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %16 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %21 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %20, i32 0, i32 4
  %22 = call i32 @gss_release_name(i32* %3, i32* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %25 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %26, align 8
  %28 = icmp ne %struct.svc_rpc_gss_client* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %31 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %32, align 8
  %34 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %35 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %36, align 8
  %38 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add i64 32, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @mem_free(%struct.svc_rpc_gss_client* %33, i32 %42)
  br label %44

44:                                               ; preds = %29, %23
  %45 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %46 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %51 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @crfree(i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %56 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %55, i32 0, i32 1
  %57 = call i32 @sx_destroy(i32* %56)
  %58 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %59 = call i32 @mem_free(%struct.svc_rpc_gss_client* %58, i32 32)
  ret void
}

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i32*, i32) #1

declare dso_local i32 @gss_release_name(i32*, i32*) #1

declare dso_local i32 @mem_free(%struct.svc_rpc_gss_client*, i32) #1

declare dso_local i32 @crfree(i64) #1

declare dso_local i32 @sx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
