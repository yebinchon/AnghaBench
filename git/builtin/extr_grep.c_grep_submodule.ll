; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_submodule.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.grep_opt = type { %struct.repository* }
%struct.repository = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pathspec = type { i32 }
%struct.object_id = type { i32 }
%struct.submodule = type { i32 }
%struct.object = type { i64, %struct.object_id }
%struct.tree_desc = type { i32 }

@null_oid = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@tree_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to read tree (%s)\00", align 1
@OBJ_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, %struct.pathspec*, %struct.object_id*, i8*, i8*, i32)* @grep_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_submodule(%struct.grep_opt* %0, %struct.pathspec* %1, %struct.object_id* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.grep_opt*, align 8
  %9 = alloca %struct.pathspec*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.repository, align 8
  %15 = alloca %struct.repository*, align 8
  %16 = alloca %struct.submodule*, align 8
  %17 = alloca %struct.grep_opt, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.object*, align 8
  %20 = alloca %struct.tree_desc, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.strbuf, align 4
  store %struct.grep_opt* %0, %struct.grep_opt** %8, align 8
  store %struct.pathspec* %1, %struct.pathspec** %9, align 8
  store %struct.object_id* %2, %struct.object_id** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %25 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %24, i32 0, i32 0
  %26 = load %struct.repository*, %struct.repository** %25, align 8
  store %struct.repository* %26, %struct.repository** %15, align 8
  %27 = load %struct.repository*, %struct.repository** %15, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call %struct.submodule* @submodule_from_path(%struct.repository* %27, i32* @null_oid, i8* %28)
  store %struct.submodule* %29, %struct.submodule** %16, align 8
  %30 = call i32 (...) @grep_read_lock()
  %31 = load %struct.repository*, %struct.repository** %15, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @is_submodule_active(%struct.repository* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %6
  %36 = call i32 (...) @grep_read_unlock()
  store i32 0, i32* %7, align 4
  br label %106

37:                                               ; preds = %6
  %38 = load %struct.repository*, %struct.repository** %15, align 8
  %39 = load %struct.submodule*, %struct.submodule** %16, align 8
  %40 = call i64 @repo_submodule_init(%struct.repository* %14, %struct.repository* %38, %struct.submodule* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (...) @grep_read_unlock()
  store i32 0, i32* %7, align 4
  br label %106

44:                                               ; preds = %37
  %45 = call i32 @repo_read_gitmodules(%struct.repository* %14)
  %46 = getelementptr inbounds %struct.repository, %struct.repository* %14, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @add_to_alternates_memory(i32 %51)
  %53 = call i32 (...) @grep_read_unlock()
  %54 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %55 = call i32 @memcpy(%struct.grep_opt* %17, %struct.grep_opt* %54, i32 8)
  %56 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %17, i32 0, i32 0
  store %struct.repository* %14, %struct.repository** %56, align 8
  %57 = load %struct.object_id*, %struct.object_id** %10, align 8
  %58 = icmp ne %struct.object_id* %57, null
  br i1 %58, label %59, label %99

59:                                               ; preds = %44
  %60 = bitcast %struct.strbuf* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %61 = load %struct.object_id*, %struct.object_id** %10, align 8
  %62 = load %struct.object_id*, %struct.object_id** %10, align 8
  %63 = call i32 @oid_to_hex(%struct.object_id* %62)
  %64 = call %struct.object* @parse_object_or_die(%struct.object_id* %61, i32 %63)
  store %struct.object* %64, %struct.object** %19, align 8
  %65 = call i32 (...) @grep_read_lock()
  %66 = load %struct.object*, %struct.object** %19, align 8
  %67 = getelementptr inbounds %struct.object, %struct.object* %66, i32 0, i32 1
  %68 = load i32, i32* @tree_type, align 4
  %69 = call i8* @read_object_with_reference(%struct.repository* %14, %struct.object_id* %67, i32 %68, i64* %22, i32* null)
  store i8* %69, i8** %21, align 8
  %70 = call i32 (...) @grep_read_unlock()
  %71 = load i8*, i8** %21, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %59
  %74 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.object*, %struct.object** %19, align 8
  %76 = getelementptr inbounds %struct.object, %struct.object* %75, i32 0, i32 1
  %77 = call i32 @oid_to_hex(%struct.object_id* %76)
  %78 = call i32 @die(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %59
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @strbuf_addstr(%struct.strbuf* %23, i8* %80)
  %82 = call i32 @strbuf_addch(%struct.strbuf* %23, i8 signext 47)
  %83 = load i8*, i8** %21, align 8
  %84 = load i64, i64* %22, align 8
  %85 = call i32 @init_tree_desc(%struct.tree_desc* %20, i8* %83, i64 %84)
  %86 = load %struct.pathspec*, %struct.pathspec** %9, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.object*, %struct.object** %19, align 8
  %90 = getelementptr inbounds %struct.object, %struct.object* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @OBJ_COMMIT, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @grep_tree(%struct.grep_opt* %17, %struct.pathspec* %86, %struct.tree_desc* %20, %struct.strbuf* %23, i32 %88, i32 %94)
  store i32 %95, i32* %18, align 4
  %96 = call i32 @strbuf_release(%struct.strbuf* %23)
  %97 = load i8*, i8** %21, align 8
  %98 = call i32 @free(i8* %97)
  br label %103

99:                                               ; preds = %44
  %100 = load %struct.pathspec*, %struct.pathspec** %9, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @grep_cache(%struct.grep_opt* %17, %struct.pathspec* %100, i32 %101)
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %99, %79
  %104 = call i32 @repo_clear(%struct.repository* %14)
  %105 = load i32, i32* %18, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %103, %42, %35
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.submodule* @submodule_from_path(%struct.repository*, i32*, i8*) #1

declare dso_local i32 @grep_read_lock(...) #1

declare dso_local i32 @is_submodule_active(%struct.repository*, i8*) #1

declare dso_local i32 @grep_read_unlock(...) #1

declare dso_local i64 @repo_submodule_init(%struct.repository*, %struct.repository*, %struct.submodule*) #1

declare dso_local i32 @repo_read_gitmodules(%struct.repository*) #1

declare dso_local i32 @add_to_alternates_memory(i32) #1

declare dso_local i32 @memcpy(%struct.grep_opt*, %struct.grep_opt*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.object* @parse_object_or_die(%struct.object_id*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @read_object_with_reference(%struct.repository*, %struct.object_id*, i32, i64*, i32*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i8*, i64) #1

declare dso_local i32 @grep_tree(%struct.grep_opt*, %struct.pathspec*, %struct.tree_desc*, %struct.strbuf*, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @grep_cache(%struct.grep_opt*, %struct.pathspec*, i32) #1

declare dso_local i32 @repo_clear(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
