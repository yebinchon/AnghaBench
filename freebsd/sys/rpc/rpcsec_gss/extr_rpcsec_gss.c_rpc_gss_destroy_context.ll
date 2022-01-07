; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_destroy_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_destroy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { i64, i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.rpc_pending_request = type { i32 }
%struct.rpc_callextra = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"in rpc_gss_destroy_context()\00", align 1
@RPCSEC_GSS_ESTABLISHED = common dso_local global i64 0, align 8
@RPCSEC_GSS_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"gssstate\00", align 1
@RPCSEC_GSS_DESTROYING = common dso_local global i64 0, align 8
@RPCSEC_GSS_DESTROY = common dso_local global i32 0, align 4
@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@AUTH_TIMEOUT = common dso_local global i32 0, align 4
@pr_link = common dso_local global i32 0, align 4
@xdr_gss_buffer_desc = common dso_local global i64 0, align 8
@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @rpc_gss_destroy_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_gss_destroy_context(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rpc_gss_data*, align 8
  %6 = alloca %struct.rpc_pending_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_callextra, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i32 @rpc_gss_log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %10)
  store %struct.rpc_gss_data* %11, %struct.rpc_gss_data** %5, align 8
  %12 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %13 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %12, i32 0, i32 2
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %16 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RPCSEC_GSS_ESTABLISHED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %35, %20
  %22 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %23 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RPCSEC_GSS_START, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %29 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RPCSEC_GSS_ESTABLISHED, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ false, %21 ], [ %32, %27 ]
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %37 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %38 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %37, i32 0, i32 2
  %39 = call i32 @msleep(%struct.rpc_gss_data* %36, i32* %38, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %21

40:                                               ; preds = %33
  %41 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %42 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %41, i32 0, i32 2
  %43 = call i32 @mtx_unlock(i32* %42)
  br label %116

44:                                               ; preds = %2
  %45 = load i64, i64* @RPCSEC_GSS_DESTROYING, align 8
  %46 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %47 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %49 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %48, i32 0, i32 2
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = load i32, i32* @RPCSEC_GSS_DESTROY, align 4
  %55 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %56 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = call i32 @bzero(%struct.rpc_callextra* %8, i32 8)
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds %struct.rpc_callextra, %struct.rpc_callextra* %8, i32 0, i32 0
  store i32* %59, i32** %60, align 8
  %61 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %62 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NULLPROC, align 4
  %65 = load i64, i64* @xdr_void, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* @xdr_void, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @AUTH_TIMEOUT, align 4
  %70 = call i32 @CLNT_CALL_EXT(i32 %63, %struct.rpc_callextra* %8, i32 %64, i32 %66, i32* null, i32 %68, i32* null, i32 %69)
  br label %71

71:                                               ; preds = %53, %44
  br label %72

72:                                               ; preds = %77, %71
  %73 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %74 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %73, i32 0, i32 4
  %75 = call %struct.rpc_pending_request* @LIST_FIRST(i32* %74)
  store %struct.rpc_pending_request* %75, %struct.rpc_pending_request** %6, align 8
  %76 = icmp ne %struct.rpc_pending_request* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.rpc_pending_request*, %struct.rpc_pending_request** %6, align 8
  %79 = load i32, i32* @pr_link, align 4
  %80 = call i32 @LIST_REMOVE(%struct.rpc_pending_request* %78, i32 %79)
  %81 = load %struct.rpc_pending_request*, %struct.rpc_pending_request** %6, align 8
  %82 = call i32 @mem_free(%struct.rpc_pending_request* %81, i32 4)
  br label %72

83:                                               ; preds = %72
  %84 = load i64, i64* @xdr_gss_buffer_desc, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %87 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = bitcast %struct.TYPE_3__* %88 to i8*
  %90 = call i32 @xdr_free(i32 %85, i8* %89)
  %91 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %92 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %96 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %83
  %101 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %102 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %101, i32 0, i32 1
  %103 = call i32 @gss_delete_sec_context(i32* %7, i64* %102, i32* null)
  br label %104

104:                                              ; preds = %100, %83
  %105 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %106 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %105, i32 0, i32 2
  %107 = call i32 @mtx_lock(i32* %106)
  %108 = load i64, i64* @RPCSEC_GSS_START, align 8
  %109 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %110 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %112 = call i32 @wakeup(%struct.rpc_gss_data* %111)
  %113 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %114 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %113, i32 0, i32 2
  %115 = call i32 @mtx_unlock(i32* %114)
  br label %116

116:                                              ; preds = %104, %40
  ret void
}

declare dso_local i32 @rpc_gss_log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(%struct.rpc_gss_data*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bzero(%struct.rpc_callextra*, i32) #1

declare dso_local i32 @CLNT_CALL_EXT(i32, %struct.rpc_callextra*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local %struct.rpc_pending_request* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.rpc_pending_request*, i32) #1

declare dso_local i32 @mem_free(%struct.rpc_pending_request*, i32) #1

declare dso_local i32 @xdr_free(i32, i8*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i64*, i32*) #1

declare dso_local i32 @wakeup(%struct.rpc_gss_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
