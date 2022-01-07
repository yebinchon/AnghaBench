; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_cmd_am.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_cmd_am.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32 }
%struct.am_state = type { i64, i64, i32, i64, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i32, i64 }
%struct.option = type { i8, i8*, i8*, i8*, i64, i32*, i32, i32*, i32 }

@PATCH_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"git am [<options>] [(<mbox> | <Maildir>)...]\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"git am [<options>] (--continue | --skip | --abort)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"run interactively\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"historical option -- no-op\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"3way\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"allow fall back on 3way merging if needed\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"be quiet\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"signoff\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"add a Signed-off-by line to the commit message\00", align 1
@SIGNOFF_EXPLICIT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"recode into utf8 (default)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"pass -k flag to git-mailinfo\00", align 1
@KEEP_TRUE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"keep-non-patch\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"pass -b flag to git-mailinfo\00", align 1
@KEEP_NON_PATCH = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"message-id\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"pass -m flag to git-mailinfo\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"keep-cr\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"pass --keep-cr flag to git-mailsplit for mbox format\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"no-keep-cr\00", align 1
@.str.22 = private unnamed_addr constant [69 x i8] c"do not pass --keep-cr flag to git-mailsplit independent of am.keepcr\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"scissors\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"strip everything before a scissors line\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"pass it through git-apply\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"ignore-space-change\00", align 1
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [18 x i8] c"ignore-whitespace\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"patch-format\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"format the patch(es) are in\00", align 1
@parse_opt_patchformat = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"resolvemsg\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"override error message when patch failure occurs\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"continue applying patches after resolving a conflict\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"resolved\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"synonyms for --continue\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"skip the current patch\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.50 = private unnamed_addr constant [62 x i8] c"restore the original branch and abort the patching operation.\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.52 = private unnamed_addr constant [56 x i8] c"abort the patching operation but keep HEAD where it is.\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"show-current-patch\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"show the patch being applied.\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"committer-date-is-author-date\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"lie about committer date\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"ignore-date\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"use current timestamp for author date\00", align 1
@OPTION_STRING = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [9 x i8] c"gpg-sign\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"key-id\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"GPG-sign commits\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@.str.62 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"rebasing\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"(internal use for git-rebase)\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@git_am_config = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [109 x i8] c"The -b/--binary option has been a no-op for long time, and\0Ait will be removed. Please do not use it anymore.\00", align 1
@IDENT_STRICT = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [25 x i8] c"failed to read the index\00", align 1
@.str.68 = private unnamed_addr constant [58 x i8] c"previous rebase directory %s still exists but mbox given.\00", align 1
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str.69 = private unnamed_addr constant [61 x i8] c"Stray %s directory found.\0AUse \22git am --abort\22 to remove it.\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"Resolve operation not in progress, we are not resuming.\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.72 = private unnamed_addr constant [54 x i8] c"interactive mode requires patches on the command line\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"invalid resume value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_am(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.am_state, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i8*], align 16
  %16 = alloca [35 x %struct.option], align 16
  %17 = alloca %struct.argv_array, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %19 = load i32, i32* @PATCH_FORMAT_UNKNOWN, align 4
  store i32 %19, i32* %11, align 4
  store i32 132, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  %21 = call i8* @N_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 1
  %23 = call i8* @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* null, i8** %24, align 8
  %25 = getelementptr inbounds [35 x %struct.option], [35 x %struct.option]* %16, i64 0, i64 0
  %26 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 3
  %27 = call i8* @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %25, i8 signext 105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* %26, i8* %27)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %29 = call i8* @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  call void @OPT_HIDDEN_BOOL(%struct.option* sret %28, i8 signext 98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %9, i8* %29)
  %30 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %31 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 15
  %32 = call i8* @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %30, i8 signext 51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64* %31, i8* %32)
  %33 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %34 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 14
  %35 = call i8* @N_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  call void @OPT__QUIET(%struct.option* sret %33, i32* %34, i8* %35)
  %36 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %37 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 0
  %38 = call i8* @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  %39 = load i64, i64* @SIGNOFF_EXPLICIT, align 8
  call void @OPT_SET_INT(%struct.option* sret %36, i8 signext 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64* %37, i8* %38, i64 %39)
  %40 = getelementptr inbounds %struct.option, %struct.option* %36, i64 1
  %41 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 13
  %42 = call i8* @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %40, i8 signext 117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64* %41, i8* %42)
  %43 = getelementptr inbounds %struct.option, %struct.option* %40, i64 1
  %44 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 1
  %45 = call i8* @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %46 = load i64, i64* @KEEP_TRUE, align 8
  call void @OPT_SET_INT(%struct.option* sret %43, i8 signext 107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64* %44, i8* %45, i64 %46)
  %47 = getelementptr inbounds %struct.option, %struct.option* %43, i64 1
  %48 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 1
  %49 = call i8* @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %50 = load i64, i64* @KEEP_NON_PATCH, align 8
  call void @OPT_SET_INT(%struct.option* sret %47, i8 signext 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i64* %48, i8* %49, i64 %50)
  %51 = getelementptr inbounds %struct.option, %struct.option* %47, i64 1
  %52 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 12
  %53 = call i8* @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %51, i8 signext 109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i64* %52, i8* %53)
  %54 = getelementptr inbounds %struct.option, %struct.option* %51, i64 1
  %55 = call i8* @N_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0))
  %56 = load i32, i32* @PARSE_OPT_NONEG, align 4
  call void @OPT_SET_INT_F(%struct.option* sret %54, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32* %10, i8* %55, i32 1, i32 %56)
  %57 = getelementptr inbounds %struct.option, %struct.option* %54, i64 1
  %58 = call i8* @N_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.22, i64 0, i64 0))
  %59 = load i32, i32* @PARSE_OPT_NONEG, align 4
  call void @OPT_SET_INT_F(%struct.option* sret %57, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32* %10, i8* %58, i32 0, i32 %59)
  %60 = getelementptr inbounds %struct.option, %struct.option* %57, i64 1
  %61 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 11
  %62 = call i8* @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %60, i8 signext 99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i64* %61, i8* %62)
  %63 = getelementptr inbounds %struct.option, %struct.option* %60, i64 1
  %64 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 10
  %65 = call i8* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %66 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  call void @OPT_PASSTHRU_ARGV(%struct.option* sret %63, i8 signext 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32* %64, i8* %65, i8* %66, i32 0)
  %67 = getelementptr inbounds %struct.option, %struct.option* %63, i64 1
  %68 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 10
  %69 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  %70 = load i32, i32* @PARSE_OPT_NOARG, align 4
  call void @OPT_PASSTHRU_ARGV(%struct.option* sret %67, i8 signext 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i32* %68, i8* null, i8* %69, i32 %70)
  %71 = getelementptr inbounds %struct.option, %struct.option* %67, i64 1
  %72 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 10
  %73 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  %74 = load i32, i32* @PARSE_OPT_NOARG, align 4
  call void @OPT_PASSTHRU_ARGV(%struct.option* sret %71, i8 signext 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32* %72, i8* null, i8* %73, i32 %74)
  %75 = getelementptr inbounds %struct.option, %struct.option* %71, i64 1
  %76 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 10
  %77 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %78 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  call void @OPT_PASSTHRU_ARGV(%struct.option* sret %75, i8 signext 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32* %76, i8* %77, i8* %78, i32 0)
  %79 = getelementptr inbounds %struct.option, %struct.option* %75, i64 1
  %80 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 10
  %81 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %82 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  call void @OPT_PASSTHRU_ARGV(%struct.option* sret %79, i8 signext 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32* %80, i8* %81, i8* %82, i32 0)
  %83 = getelementptr inbounds %struct.option, %struct.option* %79, i64 1
  %84 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 10
  %85 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %86 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  call void @OPT_PASSTHRU_ARGV(%struct.option* sret %83, i8 signext 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i32* %84, i8* %85, i8* %86, i32 0)
  %87 = getelementptr inbounds %struct.option, %struct.option* %83, i64 1
  %88 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 10
  %89 = call i8* @N_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  %90 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  call void @OPT_PASSTHRU_ARGV(%struct.option* sret %87, i8 signext 67, i8* null, i32* %88, i8* %89, i8* %90, i32 0)
  %91 = getelementptr inbounds %struct.option, %struct.option* %87, i64 1
  %92 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 10
  %93 = call i8* @N_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %94 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  call void @OPT_PASSTHRU_ARGV(%struct.option* sret %91, i8 signext 112, i8* null, i32* %92, i8* %93, i8* %94, i32 0)
  %95 = getelementptr inbounds %struct.option, %struct.option* %91, i64 1
  %96 = call i8* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  %97 = call i8* @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0))
  %98 = load i32, i32* @parse_opt_patchformat, align 4
  call void @OPT_CALLBACK(%struct.option* sret %95, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32* %11, i8* %96, i8* %97, i32 %98)
  %99 = getelementptr inbounds %struct.option, %struct.option* %95, i64 1
  %100 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 10
  %101 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  %102 = load i32, i32* @PARSE_OPT_NOARG, align 4
  call void @OPT_PASSTHRU_ARGV(%struct.option* sret %99, i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i32* %100, i8* null, i8* %101, i32 %102)
  %103 = getelementptr inbounds %struct.option, %struct.option* %99, i64 1
  %104 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 9
  %105 = call i8* @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.42, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %103, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32* %104, i32* null, i8* %105)
  %106 = getelementptr inbounds %struct.option, %struct.option* %103, i64 1
  %107 = call i8* @N_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %106, i8 signext 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i32* %12, i8* %107, i32 130)
  %108 = getelementptr inbounds %struct.option, %struct.option* %106, i64 1
  %109 = call i8* @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %108, i8 signext 114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i32* %12, i8* %109, i32 130)
  %110 = getelementptr inbounds %struct.option, %struct.option* %108, i64 1
  %111 = call i8* @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %110, i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32* %12, i8* %111, i32 128)
  %112 = getelementptr inbounds %struct.option, %struct.option* %110, i64 1
  %113 = call i8* @N_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.50, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %112, i8 signext 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i32* %12, i8* %113, i32 134)
  %114 = getelementptr inbounds %struct.option, %struct.option* %112, i64 1
  %115 = call i8* @N_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %114, i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i32* %12, i8* %115, i32 131)
  %116 = getelementptr inbounds %struct.option, %struct.option* %114, i64 1
  %117 = call i8* @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i64 0, i64 0))
  call void @OPT_CMDMODE(%struct.option* sret %116, i8 signext 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0), i32* %12, i8* %117, i32 129)
  %118 = getelementptr inbounds %struct.option, %struct.option* %116, i64 1
  %119 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 8
  %120 = call i8* @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %118, i8 signext 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0), i64* %119, i8* %120)
  %121 = getelementptr inbounds %struct.option, %struct.option* %118, i64 1
  %122 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 7
  %123 = call i8* @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %121, i8 signext 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i64* %122, i8* %123)
  %124 = getelementptr inbounds %struct.option, %struct.option* %121, i64 1
  %125 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 6
  call void @OPT_RERERE_AUTOUPDATE(%struct.option* sret %124, i32* %125)
  %126 = getelementptr inbounds %struct.option, %struct.option* %124, i64 1
  %127 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 0
  %128 = load i32, i32* @OPTION_STRING, align 4
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %127, align 8
  %130 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 1
  store i8* inttoptr (i64 83 to i8*), i8** %130, align 8
  %131 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i8** %131, align 8
  %132 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 3
  %133 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 5
  %134 = bitcast i32* %133 to i8*
  store i8* %134, i8** %132, align 8
  %135 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 4
  %136 = call i8* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0))
  %137 = ptrtoint i8* %136 to i64
  store i64 %137, i64* %135, align 8
  %138 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 5
  %139 = call i8* @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0))
  %140 = bitcast i8* %139 to i32*
  store i32* %140, i32** %138, align 8
  %141 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 6
  %142 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  store i32 %142, i32* %141, align 8
  %143 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 7
  store i32* null, i32** %143, align 8
  %144 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 8
  store i32 ptrtoint ([1 x i8]* @.str.62 to i32), i32* %144, align 8
  %145 = getelementptr inbounds %struct.option, %struct.option* %126, i64 1
  %146 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 2
  %147 = call i8* @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0))
  call void @OPT_HIDDEN_BOOL(%struct.option* sret %145, i8 signext 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i32* %146, i8* %147)
  %148 = getelementptr inbounds %struct.option, %struct.option* %145, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %148)
  %149 = load i32, i32* %5, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %161

151:                                              ; preds = %3
  %152 = load i8**, i8*** %6, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  %159 = getelementptr inbounds [35 x %struct.option], [35 x %struct.option]* %16, i64 0, i64 0
  %160 = call i32 @usage_with_options(i8** %158, %struct.option* %159)
  br label %161

161:                                              ; preds = %157, %151, %3
  %162 = load i32, i32* @git_am_config, align 4
  %163 = call i32 @git_config(i32 %162, i32* null)
  %164 = call i32 @am_state_init(%struct.am_state* %8)
  %165 = call i32 @am_in_progress(%struct.am_state* %8)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = call i32 @am_load(%struct.am_state* %8)
  br label %170

170:                                              ; preds = %168, %161
  %171 = load i32, i32* %5, align 4
  %172 = load i8**, i8*** %6, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds [35 x %struct.option], [35 x %struct.option]* %16, i64 0, i64 0
  %175 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  %176 = call i32 @parse_options(i32 %171, i8** %172, i8* %173, %struct.option* %174, i8** %175, i32 0)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %170
  %180 = load i32, i32* @stderr, align 4
  %181 = call i32 @_(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.66, i64 0, i64 0))
  %182 = call i32 @fprintf_ln(i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %170
  %184 = load i32, i32* @IDENT_STRICT, align 4
  %185 = call i32 @git_committer_info(i32 %184)
  %186 = load i32, i32* @the_repository, align 4
  %187 = call i64 @repo_read_index_preload(i32 %186, i32* null, i32 0)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0))
  %191 = call i32 (i32, ...) @die(i32 %190)
  br label %192

192:                                              ; preds = %189, %183
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %221

195:                                              ; preds = %192
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %12, align 4
  %200 = icmp eq i32 %199, 132
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = call i32 @isatty(i32 0)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %201, %195
  %205 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.68, i64 0, i64 0))
  %206 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i32, ...) @die(i32 %205, i32 %207)
  br label %209

209:                                              ; preds = %204, %201, %198
  %210 = load i32, i32* %12, align 4
  %211 = icmp eq i32 %210, 132
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 133, i32* %12, align 4
  br label %213

213:                                              ; preds = %212, %209
  %214 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @SIGNOFF_EXPLICIT, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = call i32 @am_append_signoff(%struct.am_state* %8)
  br label %220

220:                                              ; preds = %218, %213
  br label %305

221:                                              ; preds = %192
  %222 = bitcast %struct.argv_array* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %223 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = call i64 @file_exists(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %245

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %12, align 4
  %233 = icmp eq i32 %232, 134
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* %12, align 4
  %236 = icmp eq i32 %235, 131
  br i1 %236, label %237, label %240

237:                                              ; preds = %234, %231
  %238 = call i32 @am_destroy(%struct.am_state* %8)
  %239 = call i32 @am_state_release(%struct.am_state* %8)
  store i32 0, i32* %4, align 4
  br label %327

240:                                              ; preds = %234
  %241 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.69, i64 0, i64 0))
  %242 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i32, ...) @die(i32 %241, i32 %243)
  br label %245

245:                                              ; preds = %240, %227, %221
  %246 = load i32, i32* %12, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.70, i64 0, i64 0))
  %250 = call i32 (i32, ...) @die(i32 %249)
  br label %251

251:                                              ; preds = %248, %245
  store i32 0, i32* %18, align 4
  br label %252

252:                                              ; preds = %284, %251
  %253 = load i32, i32* %18, align 4
  %254 = load i32, i32* %5, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %287

256:                                              ; preds = %252
  %257 = load i8**, i8*** %6, align 8
  %258 = load i32, i32* %18, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  %261 = load i8*, i8** %260, align 8
  %262 = call i64 @is_absolute_path(i8* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %256
  %265 = load i8*, i8** %7, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %274, label %267

267:                                              ; preds = %264, %256
  %268 = load i8**, i8*** %6, align 8
  %269 = load i32, i32* %18, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @argv_array_push(%struct.argv_array* %17, i8* %272)
  br label %283

274:                                              ; preds = %264
  %275 = load i8*, i8** %7, align 8
  %276 = load i8**, i8*** %6, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = call i8* @mkpath(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i8* %275, i8* %280)
  %282 = call i32 @argv_array_push(%struct.argv_array* %17, i8* %281)
  br label %283

283:                                              ; preds = %274, %267
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %18, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %18, align 4
  br label %252

287:                                              ; preds = %252
  %288 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %17, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %291
  %296 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.72, i64 0, i64 0))
  %297 = call i32 (i32, ...) @die(i32 %296)
  br label %298

298:                                              ; preds = %295, %291, %287
  %299 = load i32, i32* %11, align 4
  %300 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %17, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @am_setup(%struct.am_state* %8, i32 %299, i32 %301, i32 %302)
  %304 = call i32 @argv_array_clear(%struct.argv_array* %17)
  br label %305

305:                                              ; preds = %298, %220
  %306 = load i32, i32* %12, align 4
  switch i32 %306, label %322 [
    i32 132, label %307
    i32 133, label %309
    i32 130, label %311
    i32 128, label %313
    i32 134, label %315
    i32 131, label %317
    i32 129, label %320
  ]

307:                                              ; preds = %305
  %308 = call i32 @am_run(%struct.am_state* %8, i32 0)
  br label %324

309:                                              ; preds = %305
  %310 = call i32 @am_run(%struct.am_state* %8, i32 1)
  br label %324

311:                                              ; preds = %305
  %312 = call i32 @am_resolve(%struct.am_state* %8)
  br label %324

313:                                              ; preds = %305
  %314 = call i32 @am_skip(%struct.am_state* %8)
  br label %324

315:                                              ; preds = %305
  %316 = call i32 @am_abort(%struct.am_state* %8)
  br label %324

317:                                              ; preds = %305
  %318 = call i32 (...) @am_rerere_clear()
  %319 = call i32 @am_destroy(%struct.am_state* %8)
  br label %324

320:                                              ; preds = %305
  %321 = call i32 @show_patch(%struct.am_state* %8)
  store i32 %321, i32* %14, align 4
  br label %324

322:                                              ; preds = %305
  %323 = call i32 @BUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %320, %317, %315, %313, %311, %309, %307
  %325 = call i32 @am_state_release(%struct.am_state* %8)
  %326 = load i32, i32* %14, align 4
  store i32 %326, i32* %4, align 4
  br label %327

327:                                              ; preds = %324, %237
  %328 = load i32, i32* %4, align 4
  ret i32 %328
}

declare dso_local i8* @N_(i8*) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, i8 signext, i8*, i64*, i8*) #1

declare dso_local void @OPT_HIDDEN_BOOL(%struct.option* sret, i8 signext, i8*, i32*, i8*) #1

declare dso_local void @OPT__QUIET(%struct.option* sret, i32*, i8*) #1

declare dso_local void @OPT_SET_INT(%struct.option* sret, i8 signext, i8*, i64*, i8*, i64) #1

declare dso_local void @OPT_SET_INT_F(%struct.option* sret, i32, i8*, i32*, i8*, i32, i32) #1

declare dso_local void @OPT_PASSTHRU_ARGV(%struct.option* sret, i8 signext, i8*, i32*, i8*, i8*, i32) #1

declare dso_local void @OPT_CALLBACK(%struct.option* sret, i32, i8*, i32*, i8*, i8*, i32) #1

declare dso_local void @OPT_STRING(%struct.option* sret, i32, i8*, i32*, i32*, i8*) #1

declare dso_local void @OPT_CMDMODE(%struct.option* sret, i8 signext, i8*, i32*, i8*, i32) #1

declare dso_local void @OPT_RERERE_AUTOUPDATE(%struct.option* sret, i32*) #1

declare dso_local void @OPT_END(%struct.option* sret, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @am_state_init(%struct.am_state*) #1

declare dso_local i32 @am_in_progress(%struct.am_state*) #1

declare dso_local i32 @am_load(%struct.am_state*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #1

declare dso_local i32 @fprintf_ln(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @git_committer_info(i32) #1

declare dso_local i64 @repo_read_index_preload(i32, i32*, i32) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @am_append_signoff(%struct.am_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @file_exists(i32) #1

declare dso_local i32 @am_destroy(%struct.am_state*) #1

declare dso_local i32 @am_state_release(%struct.am_state*) #1

declare dso_local i64 @is_absolute_path(i8*) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

declare dso_local i8* @mkpath(i8*, i8*, i8*) #1

declare dso_local i32 @am_setup(%struct.am_state*, i32, i32, i32) #1

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #1

declare dso_local i32 @am_run(%struct.am_state*, i32) #1

declare dso_local i32 @am_resolve(%struct.am_state*) #1

declare dso_local i32 @am_skip(%struct.am_state*) #1

declare dso_local i32 @am_abort(%struct.am_state*) #1

declare dso_local i32 @am_rerere_clear(...) #1

declare dso_local i32 @show_patch(%struct.am_state*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
