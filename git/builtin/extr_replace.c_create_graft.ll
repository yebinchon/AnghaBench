; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_create_graft.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_create_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"not a valid object name: '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"could not parse %s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"the original commit '%s' has a gpg signature\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"the signature will be removed in the replacement commit!\00", align 1
@commit_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"could not write replacement commit for: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"graft for '%s' unnecessary\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"new commit is the same as the old one: '%s'\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"replacement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i32)* @create_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_graft(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i8**, i8*** %7, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  %20 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %21 = load i8*, i8** %12, align 8
  %22 = call i64 @get_oid(i8* %21, %struct.object_id* %10)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @error(i32 %25, i8* %26)
  store i32 %27, i32* %5, align 4
  br label %115

28:                                               ; preds = %4
  %29 = load i32, i32* @the_repository, align 4
  %30 = call %struct.commit* @lookup_commit_reference(i32 %29, %struct.object_id* %10)
  store %struct.commit* %30, %struct.commit** %13, align 8
  %31 = load %struct.commit*, %struct.commit** %13, align 8
  %32 = icmp ne %struct.commit* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @error(i32 %34, i8* %35)
  store i32 %36, i32* %5, align 4
  br label %115

37:                                               ; preds = %28
  %38 = load %struct.commit*, %struct.commit** %13, align 8
  %39 = call i8* @get_commit_buffer(%struct.commit* %38, i64* %16)
  store i8* %39, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %40, i64 %41)
  %43 = load %struct.commit*, %struct.commit** %13, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @unuse_commit_buffer(%struct.commit* %43, i8* %44)
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = call i64 @replace_parents(%struct.strbuf* %14, i32 %47, i8** %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = call i32 @strbuf_release(%struct.strbuf* %14)
  store i32 -1, i32* %5, align 4
  br label %115

54:                                               ; preds = %37
  %55 = call i64 @remove_signature(%struct.strbuf* %14)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 (i32, ...) @warning(i32 %58, i8* %59)
  %61 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 (i32, ...) @warning(i32 %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load %struct.commit*, %struct.commit** %13, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i8**, i8*** %7, align 8
  %67 = call i64 @check_mergetags(%struct.commit* %64, i32 %65, i8** %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @strbuf_release(%struct.strbuf* %14)
  store i32 -1, i32* %5, align 4
  br label %115

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @commit_type, align 4
  %77 = call i64 @write_object_file(i32 %73, i32 %75, i32 %76, %struct.object_id* %11)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = call i32 @strbuf_release(%struct.strbuf* %14)
  %81 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @error(i32 %81, i8* %82)
  store i32 %83, i32* %5, align 4
  br label %115

84:                                               ; preds = %71
  %85 = call i32 @strbuf_release(%struct.strbuf* %14)
  %86 = load %struct.commit*, %struct.commit** %13, align 8
  %87 = getelementptr inbounds %struct.commit, %struct.commit* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i64 @oideq(i32* %88, %struct.object_id* %11)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.commit*, %struct.commit** %13, align 8
  %97 = getelementptr inbounds %struct.commit, %struct.commit* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i8* @oid_to_hex(i32* %98)
  %100 = call i32 (i32, ...) @warning(i32 %95, i8* %99)
  store i32 0, i32* %5, align 4
  br label %115

101:                                              ; preds = %91
  %102 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %103 = load %struct.commit*, %struct.commit** %13, align 8
  %104 = getelementptr inbounds %struct.commit, %struct.commit* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i8* @oid_to_hex(i32* %105)
  %107 = call i32 @error(i32 %102, i8* %106)
  store i32 %107, i32* %5, align 4
  br label %115

108:                                              ; preds = %84
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.commit*, %struct.commit** %13, align 8
  %111 = getelementptr inbounds %struct.commit, %struct.commit* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @replace_object_oid(i8* %109, i32* %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.object_id* %11, i32 %113)
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %108, %101, %94, %79, %69, %52, %33, %24
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #2

declare dso_local i8* @get_commit_buffer(%struct.commit*, i64*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #2

declare dso_local i64 @replace_parents(%struct.strbuf*, i32, i8**) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @remove_signature(%struct.strbuf*) #2

declare dso_local i32 @warning(i32, ...) #2

declare dso_local i64 @check_mergetags(%struct.commit*, i32, i8**) #2

declare dso_local i64 @write_object_file(i32, i32, i32, %struct.object_id*) #2

declare dso_local i64 @oideq(i32*, %struct.object_id*) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @replace_object_oid(i8*, i32*, i8*, %struct.object_id*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
