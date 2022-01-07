; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_import_name.c_gss_import_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_import_name.c_gss_import_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.import_name_res = type { i64, i64, i32 }
%struct.import_name_args = type { i32, i32 }

@GSS_C_NO_NAME = common dso_local global %struct.TYPE_5__* null, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_import_name(i64* %0, i32* %1, i32 %2, %struct.TYPE_5__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.import_name_res, align 8
  %11 = alloca %struct.import_name_args, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  %15 = load i64*, i64** %6, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_C_NO_NAME, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %17, align 8
  %18 = call i32* (...) @kgss_gssd_client()
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %22, i64* %5, align 8
  br label %65

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.import_name_args, %struct.import_name_args* %11, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.import_name_args, %struct.import_name_args* %11, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = call i32 @bzero(%struct.import_name_res* %10, i32 24)
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @gssd_import_name_1(%struct.import_name_args* %11, %struct.import_name_res* %10, i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @CLNT_RELEASE(i32* %32)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @RPC_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %41, i64* %5, align 8
  br label %65

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.import_name_res, %struct.import_name_res* %10, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GSS_S_COMPLETE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.import_name_res, %struct.import_name_res* %10, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.import_name_res, %struct.import_name_res* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %5, align 8
  br label %65

53:                                               ; preds = %42
  %54 = load i32, i32* @M_GSSAPI, align 4
  %55 = load i32, i32* @M_WAITOK, align 4
  %56 = call %struct.TYPE_5__* @malloc(i32 4, i32 %54, i32 %55)
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %13, align 8
  %57 = getelementptr inbounds %struct.import_name_res, %struct.import_name_res* %10, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i64*, i64** %6, align 8
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %63, align 8
  %64 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %53, %47, %37, %21
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @bzero(%struct.import_name_res*, i32) #1

declare dso_local i32 @gssd_import_name_1(%struct.import_name_args*, %struct.import_name_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
