; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_impl.c_kgss_transfer_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_impl.c_kgss_transfer_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.export_sec_context_res = type { i32, i32 }
%struct.export_sec_context_args = type { i64 }

@kgss_gssd_handle = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@xdr_export_sec_context_res = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgss_transfer_context(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.export_sec_context_res, align 4
  %5 = alloca %struct.export_sec_context_args, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* @kgss_gssd_handle, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.export_sec_context_args, %struct.export_sec_context_args* %5, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = call i32 @bzero(%struct.export_sec_context_res* %4, i32 8)
  %18 = load i32, i32* @kgss_gssd_handle, align 4
  %19 = call i32 @gssd_export_sec_context_1(%struct.export_sec_context_args* %5, %struct.export_sec_context_res* %4, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RPC_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %12
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.export_sec_context_res, %struct.export_sec_context_res* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.export_sec_context_res, %struct.export_sec_context_res* %4, i32 0, i32 0
  %30 = call i32 @KGSS_IMPORT(%struct.TYPE_4__* %26, i32 %28, i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* @xdr_export_sec_context_res, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @xdr_free(i32 %34, %struct.export_sec_context_res* %4)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %25, %23, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @bzero(%struct.export_sec_context_res*, i32) #1

declare dso_local i32 @gssd_export_sec_context_1(%struct.export_sec_context_args*, %struct.export_sec_context_res*, i32) #1

declare dso_local i32 @KGSS_IMPORT(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @xdr_free(i32, %struct.export_sec_context_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
