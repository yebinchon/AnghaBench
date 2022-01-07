; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_cmd_fast_export.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_cmd_fast_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rev_info = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.string_list*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.commit = type { i32 }
%struct.option = type { i32 }

@OBJECT_ARRAY_INIT = common dso_local global %struct.object_array zeroinitializer, align 4
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@progress = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"show progress after <n> objects\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"signed-tags\00", align 1
@signed_tag_mode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"select handling of signed tags\00", align 1
@parse_opt_signed_tag_mode = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"tag-of-filtered-object\00", align 1
@tag_of_filtered_mode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"select handling of tags that tag filtered objects\00", align 1
@parse_opt_tag_of_filtered_mode = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"reencode\00", align 1
@reencode_mode = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"select handling of commit messages in an alternate encoding\00", align 1
@parse_opt_reencode_mode = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"export-marks\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Dump marks to this file\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"import-marks\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Import marks from this file\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"import-marks-if-exists\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Import marks from this file if it exists\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"fake-missing-tagger\00", align 1
@fake_missing_tagger = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"Fake a tagger when tags lack one\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"full-tree\00", align 1
@full_tree = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [33 x i8] c"Output full tree for each commit\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"use-done-feature\00", align 1
@use_done_feature = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [45 x i8] c"Use the done feature to terminate the stream\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"no-data\00", align 1
@no_data = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [25 x i8] c"Skip output of blob data\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"refspec\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Apply refspec to exported refs\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"anonymize\00", align 1
@anonymize = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"anonymize output\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"reference-excluded-parents\00", align 1
@reference_excluded_commits = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [67 x i8] c"Reference parents which are not in fast-export stream by object id\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"show-original-ids\00", align 1
@show_original_ids = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [42 x i8] c"Show original object ids of blobs/commits\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"mark-tags\00", align 1
@mark_tags = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [25 x i8] c"Label tags with mark ids\00", align 1
@fast_export_usage = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@revision_sources = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@refspecs = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [14 x i8] c"feature done\0A\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"Cannot pass both --import-marks and --import-marks-if-exists\00", align 1
@last_idnum = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@show_filemodify = common dso_local global i32 0, align 4
@extra_refs = common dso_local global i32 0, align 4
@tag_refs = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_fast_export(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rev_info, align 8
  %8 = alloca %struct.object_array, align 4
  %9 = alloca %struct.commit*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.string_list, align 8
  %15 = alloca %struct.string_list, align 8
  %16 = alloca [17 x %struct.option], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = bitcast %struct.object_array* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %19 = bitcast %struct.string_list* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 16, i1 false)
  %20 = bitcast %struct.string_list* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %21 = getelementptr inbounds [17 x %struct.option], [17 x %struct.option]* %16, i64 0, i64 0
  %22 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* @progress, i32 %22)
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %26 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* @parse_opt_signed_tag_mode, align 4
  %29 = call i32 @OPT_CALLBACK(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* @signed_tag_mode, i32 %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %32 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @N_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %34 = load i32, i32* @parse_opt_tag_of_filtered_mode, align 4
  %35 = call i32 @OPT_CALLBACK(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* @tag_of_filtered_mode, i32 %32, i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %38 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @N_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %40 = load i32, i32* @parse_opt_reencode_mode, align 4
  %41 = call i32 @OPT_CALLBACK(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* @reencode_mode, i32 %38, i32 %39, i32 %40)
  %42 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %44 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %45 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %46 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %10, i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.option, %struct.option* %43, i64 1
  %49 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %50 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %51 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %11, i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.option, %struct.option* %48, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.option, %struct.option* %48, i64 1
  %54 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %55 = call i32 @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  %56 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8** %12, i32 %54, i32 %55)
  %57 = getelementptr inbounds %struct.option, %struct.option* %53, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.option, %struct.option* %53, i64 1
  %59 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %60 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32* @fake_missing_tagger, i32 %59)
  %61 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.option, %struct.option* %58, i64 1
  %63 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  %64 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32* @full_tree, i32 %63)
  %65 = getelementptr inbounds %struct.option, %struct.option* %62, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.option, %struct.option* %62, i64 1
  %67 = call i32 @N_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0))
  %68 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32* @use_done_feature, i32 %67)
  %69 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.option, %struct.option* %66, i64 1
  %71 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  %72 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32* @no_data, i32 %71)
  %73 = getelementptr inbounds %struct.option, %struct.option* %70, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.option, %struct.option* %70, i64 1
  %75 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %76 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0))
  %77 = call i32 @OPT_STRING_LIST(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), %struct.string_list* %14, i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.option, %struct.option* %74, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.option, %struct.option* %74, i64 1
  %80 = call i32 @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %81 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32* @anonymize, i32 %80)
  %82 = getelementptr inbounds %struct.option, %struct.option* %79, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.option, %struct.option* %79, i64 1
  %84 = call i32 @N_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.29, i64 0, i64 0))
  %85 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32* @reference_excluded_commits, i32 %84)
  %86 = getelementptr inbounds %struct.option, %struct.option* %83, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.option, %struct.option* %83, i64 1
  %88 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0))
  %89 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32* @show_original_ids, i32 %88)
  %90 = getelementptr inbounds %struct.option, %struct.option* %87, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.option, %struct.option* %87, i64 1
  %92 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0))
  %93 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32* @mark_tags, i32 %92)
  %94 = getelementptr inbounds %struct.option, %struct.option* %91, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds %struct.option, %struct.option* %91, i64 1
  %96 = call i32 (...) @OPT_END()
  %97 = getelementptr inbounds %struct.option, %struct.option* %95, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %3
  %101 = load i32, i32* @fast_export_usage, align 4
  %102 = getelementptr inbounds [17 x %struct.option], [17 x %struct.option]* %16, i64 0, i64 0
  %103 = call i32 @usage_with_options(i32 %101, %struct.option* %102)
  br label %104

104:                                              ; preds = %100, %3
  %105 = load i32, i32* @git_default_config, align 4
  %106 = call i32 @git_config(i32 %105, i32* null)
  %107 = load i32, i32* @the_repository, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @repo_init_revisions(i32 %107, %struct.rev_info* %7, i8* %108)
  %110 = call i32 @init_revision_sources(i32* @revision_sources)
  %111 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 5
  store i32* @revision_sources, i32** %112, align 8
  %113 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i8**, i8*** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds [17 x %struct.option], [17 x %struct.option]* %16, i64 0, i64 0
  %118 = load i32, i32* @fast_export_usage, align 4
  %119 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %120 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @parse_options(i32 %114, i8** %115, i8* %116, %struct.option* %117, i32 %118, i32 %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i8**, i8*** %5, align 8
  %125 = call i32 @setup_revisions(i32 %123, i8** %124, %struct.rev_info* %7, i32* null)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %132

128:                                              ; preds = %104
  %129 = load i32, i32* @fast_export_usage, align 4
  %130 = getelementptr inbounds [17 x %struct.option], [17 x %struct.option]* %16, i64 0, i64 0
  %131 = call i32 @usage_with_options(i32 %129, %struct.option* %130)
  br label %132

132:                                              ; preds = %128, %104
  %133 = getelementptr inbounds %struct.string_list, %struct.string_list* %14, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %132
  store i32 0, i32* %17, align 4
  br label %137

137:                                              ; preds = %151, %136
  %138 = load i32, i32* %17, align 4
  %139 = getelementptr inbounds %struct.string_list, %struct.string_list* %14, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.string_list, %struct.string_list* %14, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @refspec_append(i32* @refspecs, i32 %149)
  br label %151

151:                                              ; preds = %142
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  br label %137

154:                                              ; preds = %137
  %155 = call i32 @string_list_clear(%struct.string_list* %14, i32 1)
  br label %156

156:                                              ; preds = %154, %132
  %157 = load i32, i32* @use_done_feature, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %156
  %162 = load i8*, i8** %11, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i8*, i8** %12, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0))
  %169 = call i32 @die(i8* %168)
  br label %170

170:                                              ; preds = %167, %164, %161
  %171 = load i8*, i8** %11, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i8*, i8** %11, align 8
  %175 = call i32 @import_marks(i8* %174, i32 0)
  br label %183

176:                                              ; preds = %170
  %177 = load i8*, i8** %12, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i8*, i8** %12, align 8
  %181 = call i32 @import_marks(i8* %180, i32 1)
  br label %182

182:                                              ; preds = %179, %176
  br label %183

183:                                              ; preds = %182, %173
  %184 = load i64, i64* @last_idnum, align 8
  store i64 %184, i64* %13, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store i32 1, i32* @full_tree, align 4
  br label %193

193:                                              ; preds = %192, %187, %183
  %194 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 3
  %195 = call i32 @get_tags_and_duplicates(i32* %194)
  %196 = call i64 @prepare_revision_walk(%struct.rev_info* %7)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %193
  %201 = load i32, i32* @show_filemodify, align 4
  %202 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  store %struct.string_list* %15, %struct.string_list** %205, align 8
  %206 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  br label %209

209:                                              ; preds = %224, %200
  %210 = call %struct.commit* @get_revision(%struct.rev_info* %7)
  store %struct.commit* %210, %struct.commit** %9, align 8
  %211 = icmp ne %struct.commit* %210, null
  br i1 %211, label %212, label %225

212:                                              ; preds = %209
  %213 = load %struct.commit*, %struct.commit** %9, align 8
  %214 = call i64 @has_unshown_parent(%struct.commit* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = load %struct.commit*, %struct.commit** %9, align 8
  %218 = getelementptr inbounds %struct.commit, %struct.commit* %217, i32 0, i32 0
  %219 = call i32 @add_object_array(i32* %218, i32* null, %struct.object_array* %8)
  br label %224

220:                                              ; preds = %212
  %221 = load %struct.commit*, %struct.commit** %9, align 8
  %222 = call i32 @handle_commit(%struct.commit* %221, %struct.rev_info* %7, %struct.string_list* %15)
  %223 = call i32 @handle_tail(%struct.object_array* %8, %struct.rev_info* %7, %struct.string_list* %15)
  br label %224

224:                                              ; preds = %220, %216
  br label %209

225:                                              ; preds = %209
  %226 = call i32 @handle_tags_and_duplicates(i32* @extra_refs)
  %227 = call i32 @handle_tags_and_duplicates(i32* @tag_refs)
  %228 = call i32 (...) @handle_deletes()
  %229 = load i8*, i8** %10, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %238

231:                                              ; preds = %225
  %232 = load i64, i64* %13, align 8
  %233 = load i64, i64* @last_idnum, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i8*, i8** %10, align 8
  %237 = call i32 @export_marks(i8* %236)
  br label %238

238:                                              ; preds = %235, %231, %225
  %239 = load i32, i32* @use_done_feature, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %238
  %244 = call i32 @refspec_clear(i32* @refspecs)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_INTEGER(i32, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_CALLBACK(i32, i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i32, i32) #2

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #2

declare dso_local i32 @OPT_STRING_LIST(i32, i8*, %struct.string_list*, i32, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #2

declare dso_local i32 @init_revision_sources(i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #2

declare dso_local i32 @refspec_append(i32*, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @import_marks(i8*, i32) #2

declare dso_local i32 @get_tags_and_duplicates(i32*) #2

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #2

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #2

declare dso_local i64 @has_unshown_parent(%struct.commit*) #2

declare dso_local i32 @add_object_array(i32*, i32*, %struct.object_array*) #2

declare dso_local i32 @handle_commit(%struct.commit*, %struct.rev_info*, %struct.string_list*) #2

declare dso_local i32 @handle_tail(%struct.object_array*, %struct.rev_info*, %struct.string_list*) #2

declare dso_local i32 @handle_tags_and_duplicates(i32*) #2

declare dso_local i32 @handle_deletes(...) #2

declare dso_local i32 @export_marks(i8*) #2

declare dso_local i32 @refspec_clear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
