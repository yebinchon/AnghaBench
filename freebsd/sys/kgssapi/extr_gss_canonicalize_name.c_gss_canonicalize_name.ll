; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_canonicalize_name.c_gss_canonicalize_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_canonicalize_name.c_gss_canonicalize_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.canonicalize_name_res = type { i64, i64, i32 }
%struct.canonicalize_name_args = type { i32, i32 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_canonicalize_name(i64* %0, %struct.TYPE_5__* %1, i32 %2, %struct.TYPE_5__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.canonicalize_name_res, align 8
  %11 = alloca %struct.canonicalize_name_args, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  %15 = load i64*, i64** %6, align 8
  store i64 0, i64* %15, align 8
  %16 = call i32* (...) @kgss_gssd_client()
  store i32* %16, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %20, i64* %5, align 8
  br label %63

21:                                               ; preds = %4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.canonicalize_name_args, %struct.canonicalize_name_args* %11, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.canonicalize_name_args, %struct.canonicalize_name_args* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = call i32 @bzero(%struct.canonicalize_name_res* %10, i32 24)
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @gssd_canonicalize_name_1(%struct.canonicalize_name_args* %11, %struct.canonicalize_name_res* %10, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @CLNT_RELEASE(i32* %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @RPC_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %40, i64* %5, align 8
  br label %63

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.canonicalize_name_res, %struct.canonicalize_name_res* %10, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GSS_S_COMPLETE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.canonicalize_name_res, %struct.canonicalize_name_res* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.canonicalize_name_res, %struct.canonicalize_name_res* %10, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %5, align 8
  br label %63

52:                                               ; preds = %41
  %53 = load i32, i32* @M_GSSAPI, align 4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = call %struct.TYPE_5__* @malloc(i32 4, i32 %53, i32 %54)
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %13, align 8
  %56 = getelementptr inbounds %struct.canonicalize_name_res, %struct.canonicalize_name_res* %10, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %61, align 8
  %62 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %52, %46, %36, %19
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @bzero(%struct.canonicalize_name_res*, i32) #1

declare dso_local i32 @gssd_canonicalize_name_1(%struct.canonicalize_name_args*, %struct.canonicalize_name_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
