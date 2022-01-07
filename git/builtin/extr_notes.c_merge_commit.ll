; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_merge_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_merge_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.notes_merge_options = type { i8* }
%struct.object_id = type { i32 }
%struct.notes_tree = type { i32 }
%struct.commit = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pretty_print_context = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"NOTES_MERGE_PARTIAL\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to read ref NOTES_MERGE_PARTIAL\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"could not find commit from NOTES_MERGE_PARTIAL.\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"could not parse commit from NOTES_MERGE_PARTIAL.\00", align 1
@combine_notes_overwrite = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"NOTES_MERGE_REF\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to resolve NOTES_MERGE_REF\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to finalize notes merge\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"notes: \00", align 1
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notes_merge_options*)* @merge_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_commit(%struct.notes_merge_options* %0) #0 {
  %2 = alloca %struct.notes_merge_options*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca %struct.object_id, align 4
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.notes_tree*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.pretty_print_context, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.notes_merge_options* %0, %struct.notes_merge_options** %2, align 8
  %11 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = call i64 @get_oid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.object_id* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @die(i32 %15)
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* @the_repository, align 4
  %19 = call %struct.commit* @lookup_commit_reference(i32 %18, %struct.object_id* %4)
  store %struct.commit* %19, %struct.commit** %7, align 8
  %20 = icmp ne %struct.commit* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @die(i32 %22)
  br label %32

24:                                               ; preds = %17
  %25 = load %struct.commit*, %struct.commit** %7, align 8
  %26 = call i64 @parse_commit(%struct.commit* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @die(i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %21
  br label %33

33:                                               ; preds = %32, %14
  %34 = load %struct.commit*, %struct.commit** %7, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.commit*, %struct.commit** %7, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @oidcpy(%struct.object_id* %5, i32* %45)
  br label %49

47:                                               ; preds = %33
  %48 = call i32 @oidclr(%struct.object_id* %5)
  br label %49

49:                                               ; preds = %47, %38
  %50 = call %struct.notes_tree* @xcalloc(i32 1, i32 4)
  store %struct.notes_tree* %50, %struct.notes_tree** %6, align 8
  %51 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %52 = load i32, i32* @combine_notes_overwrite, align 4
  %53 = call i32 @init_notes(%struct.notes_tree* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %52, i32 0)
  %54 = call i8* @resolve_refdup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, %struct.object_id* %4, i32* null)
  store i8* %54, i8** %9, align 8
  %55 = load %struct.notes_merge_options*, %struct.notes_merge_options** %2, align 8
  %56 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.notes_merge_options*, %struct.notes_merge_options** %2, align 8
  %58 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %63 = call i32 @die(i32 %62)
  br label %64

64:                                               ; preds = %61, %49
  %65 = load %struct.notes_merge_options*, %struct.notes_merge_options** %2, align 8
  %66 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %67 = load %struct.commit*, %struct.commit** %7, align 8
  %68 = call i64 @notes_merge_commit(%struct.notes_merge_options* %65, %struct.notes_tree* %66, %struct.commit* %67, %struct.object_id* %4)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %72 = call i32 @die(i32 %71)
  br label %73

73:                                               ; preds = %70, %64
  %74 = call i32 @memset(%struct.pretty_print_context* %8, i32 0, i32 4)
  %75 = load %struct.commit*, %struct.commit** %7, align 8
  %76 = call i32 @format_commit_message(%struct.commit* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.strbuf* %3, %struct.pretty_print_context* %8)
  %77 = call i32 @strbuf_trim(%struct.strbuf* %3)
  %78 = call i32 @strbuf_insert(%struct.strbuf* %3, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 7)
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.notes_merge_options*, %struct.notes_merge_options** %2, align 8
  %82 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @is_null_oid(%struct.object_id* %5)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %88

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %86
  %89 = phi %struct.object_id* [ null, %86 ], [ %5, %87 ]
  %90 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %91 = call i32 @update_ref(i32 %80, i8* %83, %struct.object_id* %4, %struct.object_id* %89, i32 0, i32 %90)
  %92 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %93 = call i32 @free_notes(%struct.notes_tree* %92)
  %94 = call i32 @strbuf_release(%struct.strbuf* %3)
  %95 = load %struct.notes_merge_options*, %struct.notes_merge_options** %2, align 8
  %96 = call i32 @merge_abort(%struct.notes_merge_options* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #2

declare dso_local i64 @parse_commit(%struct.commit*) #2

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #2

declare dso_local i32 @oidclr(%struct.object_id*) #2

declare dso_local %struct.notes_tree* @xcalloc(i32, i32) #2

declare dso_local i32 @init_notes(%struct.notes_tree*, i8*, i32, i32) #2

declare dso_local i8* @resolve_refdup(i8*, i32, %struct.object_id*, i32*) #2

declare dso_local i64 @notes_merge_commit(%struct.notes_merge_options*, %struct.notes_tree*, %struct.commit*, %struct.object_id*) #2

declare dso_local i32 @memset(%struct.pretty_print_context*, i32, i32) #2

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i32 @update_ref(i32, i8*, %struct.object_id*, %struct.object_id*, i32, i32) #2

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @free_notes(%struct.notes_tree*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @merge_abort(%struct.notes_merge_options*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
