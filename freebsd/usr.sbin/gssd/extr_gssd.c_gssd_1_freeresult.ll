; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_1_freeresult.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_1_freeresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_11__ }
%struct.TYPE_18__ = type { %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_11__ }

@xdr_init_sec_context_res = common dso_local global i64 0, align 8
@xdr_accept_sec_context_res = common dso_local global i64 0, align 8
@xdr_delete_sec_context_res = common dso_local global i64 0, align 8
@xdr_export_sec_context_res = common dso_local global i64 0, align 8
@xdr_export_name_res = common dso_local global i64 0, align 8
@xdr_acquire_cred_res = common dso_local global i64 0, align 8
@xdr_pname_to_uid_res = common dso_local global i64 0, align 8
@xdr_display_status_res = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gssd_1_freeresult(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @xdr_init_sec_context_res, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %8, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = call i32 @gss_release_buffer(i32* %7, %struct.TYPE_11__* %23)
  br label %127

25:                                               ; preds = %3
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @xdr_accept_sec_context_res, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %9, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = call i32 @gss_release_buffer(i32* %7, %struct.TYPE_11__* %33)
  br label %126

35:                                               ; preds = %25
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @xdr_delete_sec_context_res, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %10, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = call i32 @gss_release_buffer(i32* %7, %struct.TYPE_11__* %43)
  br label %125

45:                                               ; preds = %35
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @xdr_export_sec_context_res, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %11, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @memset(i32 %61, i32 0, i64 %65)
  br label %67

67:                                               ; preds = %57, %49
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = call i32 @gss_release_buffer(i32* %7, %struct.TYPE_11__* %69)
  br label %124

71:                                               ; preds = %45
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @xdr_export_name_res, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* %6, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %12, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = call i32 @gss_release_buffer(i32* %7, %struct.TYPE_11__* %79)
  br label %123

81:                                               ; preds = %71
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @xdr_acquire_cred_res, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i64, i64* %6, align 8
  %87 = inttoptr i64 %86 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %87, %struct.TYPE_19__** %13, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = call i32 @gss_release_oid_set(i32* %7, i32* %89)
  br label %122

91:                                               ; preds = %81
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @xdr_pname_to_uid_res, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i64, i64* %6, align 8
  %97 = inttoptr i64 %96 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %14, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @free(i64 %107)
  br label %109

109:                                              ; preds = %103, %95
  br label %121

110:                                              ; preds = %91
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @xdr_display_status_res, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i64, i64* %6, align 8
  %116 = inttoptr i64 %115 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %15, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = call i32 @gss_release_buffer(i32* %7, %struct.TYPE_11__* %118)
  br label %120

120:                                              ; preds = %114, %110
  br label %121

121:                                              ; preds = %120, %109
  br label %122

122:                                              ; preds = %121, %85
  br label %123

123:                                              ; preds = %122, %75
  br label %124

124:                                              ; preds = %123, %67
  br label %125

125:                                              ; preds = %124, %39
  br label %126

126:                                              ; preds = %125, %29
  br label %127

127:                                              ; preds = %126, %19
  %128 = load i32, i32* @TRUE, align 4
  ret i32 %128
}

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @gss_release_oid_set(i32*, i32*) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
