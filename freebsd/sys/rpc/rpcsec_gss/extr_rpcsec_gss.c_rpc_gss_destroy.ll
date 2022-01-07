; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { i32, %struct.TYPE_2__, i32*, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"in rpc_gss_destroy()\00", align 1
@TRUE = common dso_local global i32 0, align 4
@M_RPC = common dso_local global i32 0, align 4
@xdr_gss_buffer_desc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_gss_data*)* @rpc_gss_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_gss_destroy(%struct.rpc_gss_data* %0) #0 {
  %2 = alloca %struct.rpc_gss_data*, align 8
  %3 = alloca %struct.rpc_gss_data*, align 8
  store %struct.rpc_gss_data* %0, %struct.rpc_gss_data** %2, align 8
  %4 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %2, align 8
  %6 = call %struct.rpc_gss_data* @AUTH_PRIVATE(%struct.rpc_gss_data* %5)
  store %struct.rpc_gss_data* %6, %struct.rpc_gss_data** %3, align 8
  %7 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %7, i32 0, i32 6
  %9 = call i32 @refcount_release(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %60

12:                                               ; preds = %1
  %13 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %2, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @rpc_gss_destroy_context(%struct.rpc_gss_data* %13, i32 %14)
  %16 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CLNT_RELEASE(i32 %18)
  %20 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %21 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @crfree(i32 %22)
  %24 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @M_RPC, align 4
  %28 = call i32 @free(i32* %26, i32 %27)
  %29 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %12
  %34 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @M_RPC, align 4
  %38 = call i32 @free(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %12
  %40 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %41 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i64, i64* @xdr_gss_buffer_desc, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %49 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %48, i32 0, i32 1
  %50 = bitcast %struct.TYPE_2__* %49 to i8*
  %51 = call i32 @xdr_free(i32 %47, i8* %50)
  br label %52

52:                                               ; preds = %45, %39
  %53 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %54 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %53, i32 0, i32 0
  %55 = call i32 @mtx_destroy(i32* %54)
  %56 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %57 = call i32 @mem_free(%struct.rpc_gss_data* %56, i32 48)
  %58 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %2, align 8
  %59 = call i32 @mem_free(%struct.rpc_gss_data* %58, i32 48)
  br label %60

60:                                               ; preds = %52, %11
  ret void
}

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(%struct.rpc_gss_data*) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i32 @rpc_gss_destroy_context(%struct.rpc_gss_data*, i32) #1

declare dso_local i32 @CLNT_RELEASE(i32) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @xdr_free(i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @mem_free(%struct.rpc_gss_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
