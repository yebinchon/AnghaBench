; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_export_name.c_gss_export_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_export_name.c_gss_export_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.export_name_res = type { i64, i64, i32 }
%struct.export_name_args = type { i32 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@xdr_export_name_res = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_export_name(i64* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.export_name_res, align 8
  %9 = alloca %struct.export_name_args, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64*, i64** %5, align 8
  store i64 0, i64* %12, align 8
  %13 = call i32* (...) @kgss_gssd_client()
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %17, i64* %4, align 8
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.export_name_args, %struct.export_name_args* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = call i32 @bzero(%struct.export_name_res* %8, i32 24)
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @gssd_export_name_1(%struct.export_name_args* %9, %struct.export_name_res* %8, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @CLNT_RELEASE(i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @RPC_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64*, i64** %5, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %35, i64* %4, align 8
  br label %55

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.export_name_res, %struct.export_name_res* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GSS_S_COMPLETE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.export_name_res, %struct.export_name_res* %8, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.export_name_res, %struct.export_name_res* %8, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %4, align 8
  br label %55

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.export_name_res, %struct.export_name_res* %8, i32 0, i32 2
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @kgss_copy_buffer(i32* %48, i32 %49)
  %51 = load i64, i64* @xdr_export_name_res, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @xdr_free(i32 %52, %struct.export_name_res* %8)
  %54 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %47, %41, %31, %16
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @bzero(%struct.export_name_res*, i32) #1

declare dso_local i32 @gssd_export_name_1(%struct.export_name_args*, %struct.export_name_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @kgss_copy_buffer(i32*, i32) #1

declare dso_local i32 @xdr_free(i32, %struct.export_name_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
