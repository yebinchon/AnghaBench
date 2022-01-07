; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_delete_sec_context.c_gss_delete_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_delete_sec_context.c_gss_delete_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.delete_sec_context_res = type { i32 }
%struct.delete_sec_context_args = type { i64 }

@kgss_gssd_handle = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@xdr_delete_sec_context_res = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_delete_sec_context(i32* %0, %struct.TYPE_8__** %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.delete_sec_context_res, align 4
  %9 = alloca %struct.delete_sec_context_args, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @kgss_gssd_handle, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %17, i32* %4, align 4
  br label %82

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %71

22:                                               ; preds = %18
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %22
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.delete_sec_context_args, %struct.delete_sec_context_args* %9, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = call i32* (...) @kgss_gssd_client()
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %38, i32* %4, align 4
  br label %82

39:                                               ; preds = %29
  %40 = call i32 @bzero(%struct.delete_sec_context_res* %8, i32 4)
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @gssd_delete_sec_context_1(%struct.delete_sec_context_args* %9, %struct.delete_sec_context_res* %8, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @CLNT_RELEASE(i32* %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @RPC_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %51, i32* %4, align 4
  br label %82

52:                                               ; preds = %39
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = icmp ne %struct.TYPE_9__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.delete_sec_context_res, %struct.delete_sec_context_res* %8, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = call i32 @kgss_copy_buffer(i32* %56, %struct.TYPE_9__* %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i64, i64* @xdr_delete_sec_context_res, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @xdr_free(i32 %61, %struct.delete_sec_context_res* %8)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = call i32 @kgss_delete_context(%struct.TYPE_8__* %63, %struct.TYPE_9__* null)
  br label %69

65:                                               ; preds = %22
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = call i32 @kgss_delete_context(%struct.TYPE_8__* %66, %struct.TYPE_9__* %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %70, align 8
  br label %80

71:                                               ; preds = %18
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = icmp ne %struct.TYPE_9__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %74, %71
  br label %80

80:                                               ; preds = %79, %69
  %81 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %48, %37, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @bzero(%struct.delete_sec_context_res*, i32) #1

declare dso_local i32 @gssd_delete_sec_context_1(%struct.delete_sec_context_args*, %struct.delete_sec_context_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @kgss_copy_buffer(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @xdr_free(i32, %struct.delete_sec_context_res*) #1

declare dso_local i32 @kgss_delete_context(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
