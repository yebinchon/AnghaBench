; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_prune.c_cmd_prune.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_prune.c_cmd_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.option = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

@show_only = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"do not remove, show only\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"report pruned objects\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@show_progress = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"show progress\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"expire\00", align 1
@expire = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"expire objects older than <time>\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"exclude-promisor-objects\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"limit traversal to objects outside promisor packfiles\00", align 1
@TIME_MAX = common dso_local global i32 0, align 4
@save_commit_buffer = common dso_local global i64 0, align 8
@read_replace_refs = common dso_local global i64 0, align 8
@ref_paranoia = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@prune_usage = common dso_local global i32 0, align 4
@repository_format_precious_objects = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"cannot prune in a precious-objects repo\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"unrecognized argument: %s\00", align 1
@fetch_if_missing = common dso_local global i64 0, align 8
@prune_object = common dso_local global i32 0, align 4
@prune_cruft = common dso_local global i32 0, align 4
@prune_subdir = common dso_local global i32 0, align 4
@PRUNE_PACKED_DRY_RUN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"%s/pack\00", align 1
@PRUNE_SHOW_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_prune(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rev_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x %struct.option], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.object*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %15 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @OPT__DRY_RUN(i64* @show_only, i32 %15)
  %17 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %19 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @OPT__VERBOSE(i32* @verbose, i32 %19)
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %23 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* @show_progress, i32 %23)
  %25 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %27 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %28 = call i32 @OPT_EXPIRY_DATE(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* @expire, i32 %27)
  %29 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %31 = call i32 @N_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %32 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32* %8, i32 %31)
  %33 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %35 = call i32 (...) @OPT_END()
  %36 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @TIME_MAX, align 4
  store i32 %37, i32* @expire, align 4
  store i64 0, i64* @save_commit_buffer, align 8
  store i64 0, i64* @read_replace_refs, align 8
  store i32 1, i32* @ref_paranoia, align 4
  %38 = load i32, i32* @the_repository, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @repo_init_revisions(i32 %38, %struct.rev_info* %7, i8* %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %45 = load i32, i32* @prune_usage, align 4
  %46 = call i32 @parse_options(i32 %41, i8** %42, i8* %43, %struct.option* %44, i32 %45, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @repository_format_precious_objects, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %3
  %50 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @die(i8* %52)
  br label %54

54:                                               ; preds = %49, %3
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %4, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %5, align 8
  %62 = load i8*, i8** %60, align 8
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @get_oid(i8* %63, %struct.object_id* %11)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load i8*, i8** %12, align 8
  %68 = call %struct.object* @parse_object_or_die(%struct.object_id* %11, i8* %67)
  store %struct.object* %68, %struct.object** %13, align 8
  %69 = load %struct.object*, %struct.object** %13, align 8
  %70 = call i32 @add_pending_object(%struct.rev_info* %7, %struct.object* %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  br label %74

71:                                               ; preds = %59
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %66
  br label %55

75:                                               ; preds = %55
  %76 = load i32, i32* @show_progress, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @isatty(i32 2)
  store i32 %79, i32* @show_progress, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  store i64 0, i64* @fetch_if_missing, align 8
  %84 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 0
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i8* (...) @get_object_directory()
  %87 = load i32, i32* @prune_object, align 4
  %88 = load i32, i32* @prune_cruft, align 4
  %89 = load i32, i32* @prune_subdir, align 4
  %90 = call i32 @for_each_loose_file_in_objdir(i8* %86, i32 %87, i32 %88, i32 %89, %struct.rev_info* %7)
  %91 = load i64, i64* @show_only, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @PRUNE_PACKED_DRY_RUN, align 4
  br label %96

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = call i32 @prune_packed_objects(i32 %97)
  %99 = call i8* (...) @get_object_directory()
  %100 = call i32 @remove_temporary_files(i8* %99)
  %101 = call i8* (...) @get_object_directory()
  %102 = call i8* @mkpathdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %101)
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @remove_temporary_files(i8* %103)
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* @the_repository, align 4
  %108 = call i64 @is_repository_shallow(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %96
  %111 = call i32 @perform_reachability_traversal(%struct.rev_info* %7)
  %112 = load i64, i64* @show_only, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @PRUNE_SHOW_ONLY, align 4
  br label %117

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = call i32 @prune_shallow(i32 %118)
  br label %120

120:                                              ; preds = %117, %96
  ret i32 0
}

declare dso_local i32 @OPT__DRY_RUN(i64*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT__VERBOSE(i32*, i32) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_EXPIRY_DATE(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.object* @parse_object_or_die(%struct.object_id*, i8*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @for_each_loose_file_in_objdir(i8*, i32, i32, i32, %struct.rev_info*) #1

declare dso_local i8* @get_object_directory(...) #1

declare dso_local i32 @prune_packed_objects(i32) #1

declare dso_local i32 @remove_temporary_files(i8*) #1

declare dso_local i8* @mkpathdup(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @is_repository_shallow(i32) #1

declare dso_local i32 @perform_reachability_traversal(%struct.rev_info*) #1

declare dso_local i32 @prune_shallow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
