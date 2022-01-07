; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_release_name.c_gss_release_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_release_name.c_gss_release_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.release_name_res = type { i64, i64 }
%struct.release_name_args = type { i32 }

@kgss_gssd_handle = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@M_GSSAPI = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_release_name(i64* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca %struct.release_name_res, align 8
  %7 = alloca %struct.release_name_args, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %5, align 8
  %11 = load i64*, i64** %4, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @kgss_gssd_handle, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %15, i64* %3, align 8
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %9, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.release_name_args, %struct.release_name_args* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = call i32* (...) @kgss_gssd_client()
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %31, i64* %3, align 8
  br label %63

32:                                               ; preds = %20
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @gssd_release_name_1(%struct.release_name_args* %7, %struct.release_name_res* %6, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @CLNT_RELEASE(i32* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RPC_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64*, i64** %4, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %44, i64* %3, align 8
  br label %63

45:                                               ; preds = %32
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = load i32, i32* @M_GSSAPI, align 4
  %48 = call i32 @free(%struct.TYPE_4__* %46, i32 %47)
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %49, align 8
  %50 = getelementptr inbounds %struct.release_name_res, %struct.release_name_res* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @GSS_S_COMPLETE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.release_name_res, %struct.release_name_res* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %4, align 8
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.release_name_res, %struct.release_name_res* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %3, align 8
  br label %63

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %16
  %62 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %54, %40, %30, %14
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @gssd_release_name_1(%struct.release_name_args*, %struct.release_name_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
