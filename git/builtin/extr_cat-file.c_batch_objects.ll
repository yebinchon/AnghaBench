; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_cat-file.c_batch_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_cat-file.c_batch_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_info = type { i32 }
%struct.oidset = type { i32 }
%struct.oid_array = type { %struct.oidset*, %struct.strbuf*, %struct.expand_data*, %struct.batch_options* }
%struct.expand_data = type { i32, i32, i32, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.batch_options = type { i8*, i64, i64, i64, i64 }
%struct.object_cb_data = type { %struct.oidset*, %struct.strbuf*, %struct.expand_data*, %struct.batch_options* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [42 x i8] c"%(objectname) %(objecttype) %(objectsize)\00", align 1
@expand_format = common dso_local global i32 0, align 4
@OBJECT_INFO_INIT = common dso_local global %struct.object_info zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"This repository uses promisor remotes. Some objects may not be loaded.\00", align 1
@OIDSET_INIT = common dso_local global %struct.oidset zeroinitializer, align 4
@batch_unordered_loose = common dso_local global i32 0, align 4
@batch_unordered_packed = common dso_local global i32 0, align 4
@FOR_EACH_OBJECT_PACK_ORDER = common dso_local global i32 0, align 4
@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 8
@collect_loose_object = common dso_local global i32 0, align 4
@collect_packed_object = common dso_local global i32 0, align 4
@batch_object_cb = common dso_local global i32 0, align 4
@warn_on_object_refname_ambiguity = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batch_options*)* @batch_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batch_objects(%struct.batch_options* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.batch_options*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca %struct.expand_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_info, align 4
  %10 = alloca %struct.object_cb_data, align 8
  %11 = alloca %struct.oidset, align 4
  %12 = alloca %struct.oid_array, align 8
  %13 = alloca i8*, align 8
  store %struct.batch_options* %0, %struct.batch_options** %3, align 8
  %14 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %16 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %17 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %22 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = call i32 @memset(%struct.expand_data* %6, i32 0, i32 40)
  %25 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %6, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %27 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @expand_format, align 4
  %30 = call i32 @strbuf_expand(%struct.strbuf* %5, i8* %28, i32 %29, %struct.expand_data* %6)
  %31 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %6, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = call i32 @strbuf_release(%struct.strbuf* %5)
  %33 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %34 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %6, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %23
  %40 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %41 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = bitcast %struct.object_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 bitcast (%struct.object_info* @OBJECT_INFO_INIT to i8*), i64 4, i1 false)
  %46 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %6, i32 0, i32 5
  %47 = call i32 @memcmp(%struct.TYPE_2__* %46, %struct.object_info* %9, i32 4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %6, i32 0, i32 2
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %54 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %6, i32 0, i32 4
  %59 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %6, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %63 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %61
  %67 = call i64 (...) @has_promisor_remote()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @warning(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %73 = getelementptr inbounds %struct.object_cb_data, %struct.object_cb_data* %10, i32 0, i32 3
  store %struct.batch_options* %72, %struct.batch_options** %73, align 8
  %74 = getelementptr inbounds %struct.object_cb_data, %struct.object_cb_data* %10, i32 0, i32 2
  store %struct.expand_data* %6, %struct.expand_data** %74, align 8
  %75 = getelementptr inbounds %struct.object_cb_data, %struct.object_cb_data* %10, i32 0, i32 1
  store %struct.strbuf* %5, %struct.strbuf** %75, align 8
  %76 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %77 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %71
  %81 = bitcast %struct.oidset* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 bitcast (%struct.oidset* @OIDSET_INIT to i8*), i64 4, i1 false)
  %82 = getelementptr inbounds %struct.object_cb_data, %struct.object_cb_data* %10, i32 0, i32 0
  store %struct.oidset* %11, %struct.oidset** %82, align 8
  %83 = load i32, i32* @batch_unordered_loose, align 4
  %84 = bitcast %struct.object_cb_data* %10 to %struct.oid_array*
  %85 = call i32 @for_each_loose_object(i32 %83, %struct.oid_array* %84, i32 0)
  %86 = load i32, i32* @batch_unordered_packed, align 4
  %87 = bitcast %struct.object_cb_data* %10 to %struct.oid_array*
  %88 = load i32, i32* @FOR_EACH_OBJECT_PACK_ORDER, align 4
  %89 = call i32 @for_each_packed_object(i32 %86, %struct.oid_array* %87, i32 %88)
  %90 = call i32 @oidset_clear(%struct.oidset* %11)
  br label %101

91:                                               ; preds = %71
  %92 = bitcast %struct.oid_array* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 32, i1 false)
  %93 = load i32, i32* @collect_loose_object, align 4
  %94 = call i32 @for_each_loose_object(i32 %93, %struct.oid_array* %12, i32 0)
  %95 = load i32, i32* @collect_packed_object, align 4
  %96 = call i32 @for_each_packed_object(i32 %95, %struct.oid_array* %12, i32 0)
  %97 = load i32, i32* @batch_object_cb, align 4
  %98 = bitcast %struct.object_cb_data* %10 to %struct.oid_array*
  %99 = call i32 @oid_array_for_each_unique(%struct.oid_array* %12, i32 %97, %struct.oid_array* %98)
  %100 = call i32 @oid_array_clear(%struct.oid_array* %12)
  br label %101

101:                                              ; preds = %91, %80
  %102 = call i32 @strbuf_release(%struct.strbuf* %5)
  store i32 0, i32* %2, align 4
  br label %150

103:                                              ; preds = %61
  %104 = load i32, i32* @warn_on_object_refname_ambiguity, align 4
  store i32 %104, i32* %7, align 4
  store i32 0, i32* @warn_on_object_refname_ambiguity, align 4
  br label %105

105:                                              ; preds = %140, %103
  %106 = load i32, i32* @stdin, align 4
  %107 = call i64 @strbuf_getline(%struct.strbuf* %4, i32 %106)
  %108 = load i64, i64* @EOF, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %145

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %6, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @strpbrk(i32 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %117, i8** %13, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %137

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %133, %120
  %122 = load i8*, i8** %13, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %13, align 8
  %128 = load i8, i8* %127, align 1
  %129 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8 signext %128)
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i1 [ false, %121 ], [ %130, %126 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i8*, i8** %13, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %13, align 8
  store i8 0, i8* %134, align 1
  br label %121

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136, %114
  %138 = load i8*, i8** %13, align 8
  %139 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %6, i32 0, i32 3
  store i8* %138, i8** %139, align 8
  br label %140

140:                                              ; preds = %137, %110
  %141 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %144 = call i32 @batch_one_object(i32 %142, %struct.strbuf* %5, %struct.batch_options* %143, %struct.expand_data* %6)
  br label %105

145:                                              ; preds = %105
  %146 = call i32 @strbuf_release(%struct.strbuf* %4)
  %147 = call i32 @strbuf_release(%struct.strbuf* %5)
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* @warn_on_object_refname_ambiguity, align 4
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %145, %101
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.expand_data*, i32, i32) #2

declare dso_local i32 @strbuf_expand(%struct.strbuf*, i8*, i32, %struct.expand_data*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @memcmp(%struct.TYPE_2__*, %struct.object_info*, i32) #2

declare dso_local i64 @has_promisor_remote(...) #2

declare dso_local i32 @warning(i8*) #2

declare dso_local i32 @for_each_loose_object(i32, %struct.oid_array*, i32) #2

declare dso_local i32 @for_each_packed_object(i32, %struct.oid_array*, i32) #2

declare dso_local i32 @oidset_clear(%struct.oidset*) #2

declare dso_local i32 @oid_array_for_each_unique(%struct.oid_array*, i32, %struct.oid_array*) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32) #2

declare dso_local i8* @strpbrk(i32, i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @batch_one_object(i32, %struct.strbuf*, %struct.batch_options*, %struct.expand_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
