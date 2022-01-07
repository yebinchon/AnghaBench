; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_pname_to_uid.c_gss_pname_to_unix_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_pname_to_uid.c_gss_pname_to_unix_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pname_to_uid_res = type { i64, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.pname_to_uid_args = type { i32, i32 }

@GSS_C_NO_NAME = common dso_local global %struct.TYPE_6__* null, align 8
@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@xdr_pname_to_uid_res = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_pname_to_unix_cred(i64* %0, %struct.TYPE_6__* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.pname_to_uid_res, align 8
  %17 = alloca %struct.pname_to_uid_args, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i64* %0, i64** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i64*, i64** %9, align 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GSS_C_NO_NAME, align 8
  %25 = icmp eq %struct.TYPE_6__* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %27, i64* %8, align 8
  br label %109

28:                                               ; preds = %7
  %29 = call i32* (...) @kgss_gssd_client()
  store i32* %29, i32** %21, align 8
  %30 = load i32*, i32** %21, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %33, i64* %8, align 8
  br label %109

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.pname_to_uid_args, %struct.pname_to_uid_args* %17, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = getelementptr inbounds %struct.pname_to_uid_args, %struct.pname_to_uid_args* %17, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = call i32 @bzero(%struct.pname_to_uid_res* %16, i32 40)
  %42 = load i32*, i32** %21, align 8
  %43 = call i32 @gssd_pname_to_uid_1(%struct.pname_to_uid_args* %17, %struct.pname_to_uid_res* %16, i32* %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32*, i32** %21, align 8
  %45 = call i32 @CLNT_RELEASE(i32* %44)
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @RPC_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %34
  %50 = load i32, i32* %18, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %53, i64* %8, align 8
  br label %109

54:                                               ; preds = %34
  %55 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %16, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GSS_S_COMPLETE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %16, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %16, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %8, align 8
  br label %109

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %16, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %12, align 8
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %16, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %13, align 8
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %16, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %20, align 4
  br label %82

82:                                               ; preds = %79, %65
  store i32 0, i32* %19, align 4
  br label %83

83:                                               ; preds = %99, %82
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %20, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.pname_to_uid_res, %struct.pname_to_uid_res* %16, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %87
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  br label %83

102:                                              ; preds = %83
  %103 = load i32, i32* %20, align 4
  %104 = load i32*, i32** %14, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i64, i64* @xdr_pname_to_uid_res, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @xdr_free(i32 %106, %struct.pname_to_uid_res* %16)
  %108 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %102, %59, %49, %32, %26
  %110 = load i64, i64* %8, align 8
  ret i64 %110
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @bzero(%struct.pname_to_uid_res*, i32) #1

declare dso_local i32 @gssd_pname_to_uid_1(%struct.pname_to_uid_args*, %struct.pname_to_uid_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, %struct.pname_to_uid_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
