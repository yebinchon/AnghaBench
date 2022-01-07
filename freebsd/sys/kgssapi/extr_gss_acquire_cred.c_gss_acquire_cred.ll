; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_acquire_cred.c_gss_acquire_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_acquire_cred.c_gss_acquire_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.acquire_cred_res = type { i64, i64, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.acquire_cred_args = type { i32, i32, i64, i64, i32 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.TYPE_13__* null, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@xdr_acquire_cred_res = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_acquire_cred(i64* %0, %struct.TYPE_11__* %1, i64 %2, i32 %3, i32 %4, %struct.TYPE_12__** %5, i32* %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.acquire_cred_res, align 8
  %20 = alloca %struct.acquire_cred_args, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i64* %0, i64** %10, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_12__** %5, %struct.TYPE_12__*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64* %7, i64** %17, align 8
  %25 = load i64*, i64** %10, align 8
  store i64 0, i64* %25, align 8
  %26 = call i32* (...) @kgss_gssd_client()
  store i32* %26, i32** %24, align 8
  %27 = load i32*, i32** %24, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %30, i64* %9, align 8
  br label %138

31:                                               ; preds = %8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curthread, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.acquire_cred_args, %struct.acquire_cred_args* %20, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.acquire_cred_args, %struct.acquire_cred_args* %20, i32 0, i32 3
  store i64 %43, i64* %44, align 8
  br label %47

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.acquire_cred_args, %struct.acquire_cred_args* %20, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.acquire_cred_args, %struct.acquire_cred_args* %20, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = getelementptr inbounds %struct.acquire_cred_args, %struct.acquire_cred_args* %20, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %14, align 4
  %53 = getelementptr inbounds %struct.acquire_cred_args, %struct.acquire_cred_args* %20, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = call i32 @bzero(%struct.acquire_cred_res* %19, i32 40)
  %55 = load i32*, i32** %24, align 8
  %56 = call i32 @gssd_acquire_cred_1(%struct.acquire_cred_args* %20, %struct.acquire_cred_res* %19, i32* %55)
  store i32 %56, i32* %21, align 4
  %57 = load i32*, i32** %24, align 8
  %58 = call i32 @CLNT_RELEASE(i32* %57)
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* @RPC_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = load i32, i32* %21, align 4
  %64 = zext i32 %63 to i64
  %65 = load i64*, i64** %10, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %66, i64* %9, align 8
  br label %138

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.acquire_cred_res, %struct.acquire_cred_res* %19, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @GSS_S_COMPLETE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.acquire_cred_res, %struct.acquire_cred_res* %19, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %10, align 8
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.acquire_cred_res, %struct.acquire_cred_res* %19, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %9, align 8
  br label %138

78:                                               ; preds = %67
  %79 = load i32, i32* @M_GSSAPI, align 4
  %80 = load i32, i32* @M_WAITOK, align 4
  %81 = call %struct.TYPE_12__* @malloc(i32 4, i32 %79, i32 %80)
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %22, align 8
  %82 = getelementptr inbounds %struct.acquire_cred_res, %struct.acquire_cred_res* %19, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %15, align 8
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %87, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %126

90:                                               ; preds = %78
  %91 = load i64*, i64** %10, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = call i64 @gss_create_empty_oid_set(i64* %91, i32* %92)
  store i64 %93, i64* %18, align 8
  %94 = load i64, i64* %18, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i64, i64* %18, align 8
  store i64 %97, i64* %9, align 8
  br label %138

98:                                               ; preds = %90
  store i32 0, i32* %23, align 4
  br label %99

99:                                               ; preds = %122, %98
  %100 = load i32, i32* %23, align 4
  %101 = getelementptr inbounds %struct.acquire_cred_res, %struct.acquire_cred_res* %19, i32 0, i32 3
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %99
  %107 = load i64*, i64** %10, align 8
  %108 = getelementptr inbounds %struct.acquire_cred_res, %struct.acquire_cred_res* %19, i32 0, i32 3
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %23, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32*, i32** %16, align 8
  %116 = call i64 @gss_add_oid_set_member(i64* %107, i32* %114, i32* %115)
  store i64 %116, i64* %18, align 8
  %117 = load i64, i64* %18, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load i64, i64* %18, align 8
  store i64 %120, i64* %9, align 8
  br label %138

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %23, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %23, align 4
  br label %99

125:                                              ; preds = %99
  br label %126

126:                                              ; preds = %125, %78
  %127 = load i64*, i64** %17, align 8
  %128 = icmp ne i64* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.acquire_cred_res, %struct.acquire_cred_res* %19, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %17, align 8
  store i64 %131, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i64, i64* @xdr_acquire_cred_res, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @xdr_free(i32 %135, %struct.acquire_cred_res* %19)
  %137 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %137, i64* %9, align 8
  br label %138

138:                                              ; preds = %133, %119, %96, %72, %62, %29
  %139 = load i64, i64* %9, align 8
  ret i64 %139
}

declare dso_local i32* @kgss_gssd_client(...) #1

declare dso_local i32 @bzero(%struct.acquire_cred_res*, i32) #1

declare dso_local i32 @gssd_acquire_cred_1(%struct.acquire_cred_args*, %struct.acquire_cred_res*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local %struct.TYPE_12__* @malloc(i32, i32, i32) #1

declare dso_local i64 @gss_create_empty_oid_set(i64*, i32*) #1

declare dso_local i64 @gss_add_oid_set_member(i64*, i32*, i32*) #1

declare dso_local i32 @xdr_free(i32, %struct.acquire_cred_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
