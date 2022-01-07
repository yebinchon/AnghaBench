; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_cmd_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_cmd_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_sorting = type { i32 }
%struct.ref_format = type { i8* }
%struct.strbuf = type { i32 }
%struct.ref_filter = type { i32, i32, i32, i64, i32, i8**, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.option = type { i8*, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.branch = type { i8*, i32 }

@cmd_branch.sorting = internal global %struct.ref_sorting* null, align 8
@cmd_branch.sorting_tail = internal global %struct.ref_sorting** @cmd_branch.sorting, align 8
@REF_FORMAT_INIT = common dso_local global %struct.ref_format zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"Generic options\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"show hash and subject, give twice for upstream branch\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"suppress informational messages\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"track\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"set up tracking mode (see git-pull(1))\00", align 1
@BRANCH_TRACK_EXPLICIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"set-upstream\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"do not use\00", align 1
@BRANCH_TRACK_OVERRIDE = common dso_local global i32 0, align 4
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"set-upstream-to\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"change the upstream info\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"unset-upstream\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Unset the upstream info\00", align 1
@branch_use_color = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"use colored output\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"remotes\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"act on remote-tracking branches\00", align 1
@FILTER_REFS_REMOTES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [44 x i8] c"print only branches that contain the commit\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"print only branches that don't contain the commit\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Specific git-branch actions:\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"list both remote-tracking and local branches\00", align 1
@FILTER_REFS_BRANCHES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"delete fully merged branch\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"delete branch (even if not merged)\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"move/rename a branch and its reflog\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"move/rename a branch, even if target exists\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"copy a branch and its reflog\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"copy a branch, even if target exists\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"list branch names\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"show-current\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"show current branch name\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"create-reflog\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"create the branch's reflog\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"edit-description\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"edit the description for the branch\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"force creation, move/rename, deletion\00", align 1
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [36 x i8] c"print only branches that are merged\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"print only branches that are not merged\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@colopts = common dso_local global i64 0, align 8
@.str.41 = private unnamed_addr constant [25 x i8] c"list branches in columns\00", align 1
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"points-at\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"print only branches of the object\00", align 1
@parse_opt_object_name = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"sorting and filtering are case insensitive\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"format to use for the output\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@builtin_branch_usage = common dso_local global i32 0, align 4
@git_branch_config = common dso_local global i32 0, align 4
@git_branch_track = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@head_oid = common dso_local global i32 0, align 4
@head = common dso_local global i8* null, align 8
@.str.51 = private unnamed_addr constant [39 x i8] c"Failed to resolve HEAD as a valid ref.\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"HEAD not found below refs/heads!\00", align 1
@REF_FILTER_MERGED_NONE = common dso_local global i64 0, align 8
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [40 x i8] c"--column and --verbose are incompatible\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"branch name required\00", align 1
@FILTER_REFS_DETACHED_HEAD = common dso_local global i32 0, align 4
@output = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.57 = private unnamed_addr constant [41 x i8] c"Cannot give description to detached HEAD\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"cannot edit description of more than one branch\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"refs/heads/%s\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"No commit on branch '%s' yet.\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"No branch named '%s'.\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"too many branches for a copy operation\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"too many arguments for a rename operation\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"too many arguments to set new upstream\00", align 1
@.str.65 = private unnamed_addr constant [75 x i8] c"could not set upstream of HEAD to %s when it does not point to any branch.\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"no such branch '%s'\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"branch '%s' does not exist\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.68 = private unnamed_addr constant [37 x i8] c"too many arguments to unset upstream\00", align 1
@.str.69 = private unnamed_addr constant [71 x i8] c"could not unset upstream of HEAD when it does not point to any branch.\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"Branch '%s' has no upstream information\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"branch.%s.remote\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"branch.%s.merge\00", align 1
@.str.73 = private unnamed_addr constant [112 x i8] c"The -a, and -r, options to 'git branch' do not take a branch name.\0ADid you mean to use: -a|-r --list <pattern>?\00", align 1
@.str.74 = private unnamed_addr constant [105 x i8] c"the '--set-upstream' option is no longer supported. Please use '--track' or '--set-upstream-to' instead.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_branch(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ref_filter, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ref_format, align 8
  %23 = alloca [35 x %struct.option], align 16
  %24 = alloca i8*, align 8
  %25 = alloca %struct.strbuf, align 4
  %26 = alloca %struct.branch*, align 8
  %27 = alloca %struct.branch*, align 8
  %28 = alloca %struct.strbuf, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i32 0, i32* %21, align 4
  %29 = bitcast %struct.ref_format* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.ref_format* @REF_FORMAT_INIT to i8*), i64 8, i1 false)
  %30 = getelementptr inbounds [35 x %struct.option], [35 x %struct.option]* %23, i64 0, i64 0
  %31 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  call void @OPT_GROUP(%struct.option* sret %30, i32 %31)
  %32 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %33 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 6
  %34 = call i32 @N_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  call void @OPT__VERBOSE(%struct.option* sret %32, i64* %33, i32 %34)
  %35 = getelementptr inbounds %struct.option, %struct.option* %32, i64 1
  %36 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  call void @OPT__QUIET(%struct.option* sret %35, i32* %16, i32 %36)
  %37 = getelementptr inbounds %struct.option, %struct.option* %35, i64 1
  %38 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* @BRANCH_TRACK_EXPLICIT, align 4
  call void @OPT_SET_INT(%struct.option* sret %37, i8 signext 116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %19, i32 %38, i32 %39)
  %40 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %41 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32, i32* @BRANCH_TRACK_OVERRIDE, align 4
  %43 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  call void @OPT_SET_INT_F(%struct.option* sret %40, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %19, i32 %41, i32 %42, i32 %43)
  %44 = getelementptr inbounds %struct.option, %struct.option* %40, i64 1
  %45 = call i32 @N_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %46 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %44, i8 zeroext 117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %18, i32 %45, i32 %46)
  %47 = getelementptr inbounds %struct.option, %struct.option* %44, i64 1
  %48 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %47, i8 signext 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* %17, i32 %48)
  %49 = getelementptr inbounds %struct.option, %struct.option* %47, i64 1
  %50 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  call void @OPT__COLOR(%struct.option* sret %49, i32* @branch_use_color, i32 %50)
  %51 = getelementptr inbounds %struct.option, %struct.option* %49, i64 1
  %52 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 0
  %53 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %54 = load i32, i32* @FILTER_REFS_REMOTES, align 4
  call void @OPT_SET_INT(%struct.option* sret %51, i8 signext 114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32* %52, i32 %53, i32 %54)
  %55 = getelementptr inbounds %struct.option, %struct.option* %51, i64 1
  %56 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 9
  %57 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  call void @OPT_CONTAINS(%struct.option* sret %55, i64* %56, i32 %57)
  %58 = getelementptr inbounds %struct.option, %struct.option* %55, i64 1
  %59 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 7
  %60 = call i32 @N_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  call void @OPT_NO_CONTAINS(%struct.option* sret %58, i64* %59, i32 %60)
  %61 = getelementptr inbounds %struct.option, %struct.option* %58, i64 1
  %62 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 9
  %63 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  call void @OPT_WITH(%struct.option* sret %61, i64* %62, i32 %63)
  %64 = getelementptr inbounds %struct.option, %struct.option* %61, i64 1
  %65 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 7
  %66 = call i32 @N_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  call void @OPT_WITHOUT(%struct.option* sret %64, i64* %65, i32 %66)
  %67 = getelementptr inbounds %struct.option, %struct.option* %64, i64 1
  %68 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 1
  call void @OPT__ABBREV(%struct.option* sret %67, i32* %68)
  %69 = getelementptr inbounds %struct.option, %struct.option* %67, i64 1
  %70 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  call void @OPT_GROUP(%struct.option* sret %69, i32 %70)
  %71 = getelementptr inbounds %struct.option, %struct.option* %69, i64 1
  %72 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 0
  %73 = call i32 @N_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  %74 = load i32, i32* @FILTER_REFS_REMOTES, align 4
  %75 = load i32, i32* @FILTER_REFS_BRANCHES, align 4
  %76 = or i32 %74, %75
  call void @OPT_SET_INT(%struct.option* sret %71, i8 signext 97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32* %72, i32 %73, i32 %76)
  %77 = getelementptr inbounds %struct.option, %struct.option* %71, i64 1
  %78 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  call void @OPT_BIT(%struct.option* sret %77, i8 signext 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32* %8, i32 %78, i32 1)
  %79 = getelementptr inbounds %struct.option, %struct.option* %77, i64 1
  %80 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0))
  call void @OPT_BIT(%struct.option* sret %79, i8 signext 68, i8* null, i32* %8, i32 %80, i32 2)
  %81 = getelementptr inbounds %struct.option, %struct.option* %79, i64 1
  %82 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0))
  call void @OPT_BIT(%struct.option* sret %81, i8 signext 109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32* %9, i32 %82, i32 1)
  %83 = getelementptr inbounds %struct.option, %struct.option* %81, i64 1
  %84 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0))
  call void @OPT_BIT(%struct.option* sret %83, i8 signext 77, i8* null, i32* %9, i32 %84, i32 2)
  %85 = getelementptr inbounds %struct.option, %struct.option* %83, i64 1
  %86 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0))
  call void @OPT_BIT(%struct.option* sret %85, i8 signext 99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32* %10, i32 %86, i32 1)
  %87 = getelementptr inbounds %struct.option, %struct.option* %85, i64 1
  %88 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0))
  call void @OPT_BIT(%struct.option* sret %87, i8 signext 67, i8* null, i32* %10, i32 %88, i32 2)
  %89 = getelementptr inbounds %struct.option, %struct.option* %87, i64 1
  %90 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %89, i8 signext 108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32* %12, i32 %90)
  %91 = getelementptr inbounds %struct.option, %struct.option* %89, i64 1
  %92 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %91, i8 signext 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i32* %13, i32 %92)
  %93 = getelementptr inbounds %struct.option, %struct.option* %91, i64 1
  %94 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %93, i8 signext 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32* %14, i32 %94)
  %95 = getelementptr inbounds %struct.option, %struct.option* %93, i64 1
  %96 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %95, i8 signext 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i32* %15, i32 %96)
  %97 = getelementptr inbounds %struct.option, %struct.option* %95, i64 1
  %98 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0))
  %99 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  call void @OPT__FORCE(%struct.option* sret %97, i32* %11, i32 %98, i32 %99)
  %100 = getelementptr inbounds %struct.option, %struct.option* %97, i64 1
  %101 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0))
  call void @OPT_MERGED(%struct.option* sret %100, %struct.ref_filter* %20, i32 %101)
  %102 = getelementptr inbounds %struct.option, %struct.option* %100, i64 1
  %103 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0))
  call void @OPT_NO_MERGED(%struct.option* sret %102, %struct.ref_filter* %20, i32 %103)
  %104 = getelementptr inbounds %struct.option, %struct.option* %102, i64 1
  %105 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0))
  call void @OPT_COLUMN(%struct.option* sret %104, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i64* @colopts, i32 %105)
  %106 = getelementptr inbounds %struct.option, %struct.option* %104, i64 1
  %107 = load %struct.ref_sorting**, %struct.ref_sorting*** @cmd_branch.sorting_tail, align 8
  call void @OPT_REF_SORT(%struct.option* sret %106, %struct.ref_sorting** %107)
  %108 = getelementptr inbounds %struct.option, %struct.option* %106, i64 1
  %109 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 0
  %110 = load i32, i32* @OPTION_CALLBACK, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  store i8* %112, i8** %109, align 8
  %113 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 1
  store i32 0, i32* %113, align 8
  %114 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 2
  store i32 ptrtoint ([10 x i8]* @.str.42 to i32), i32* %114, align 4
  %115 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 3
  %116 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 8
  %117 = ptrtoint %struct.TYPE_2__* %116 to i32
  store i32 %117, i32* %115, align 8
  %118 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 4
  %119 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  store i32 %119, i32* %118, align 4
  %120 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 5
  %121 = call i32 @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i64 0, i64 0))
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %123, %struct.TYPE_2__** %120, align 8
  %124 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 6
  store i32 0, i32* %124, align 8
  %125 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 7
  %126 = load i32, i32* @parse_opt_object_name, align 4
  store i32 %126, i32* %125, align 4
  %127 = getelementptr inbounds %struct.option, %struct.option* %108, i64 1
  %128 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %127, i8 signext 105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32* %21, i32 %128)
  %129 = getelementptr inbounds %struct.option, %struct.option* %127, i64 1
  %130 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %22, i32 0, i32 0
  %131 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  %132 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %129, i8 zeroext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8** %130, i32 %131, i32 %132)
  %133 = getelementptr inbounds %struct.option, %struct.option* %129, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %133)
  %134 = call i32 (...) @setup_ref_filter_porcelain_msg()
  %135 = call i32 @memset(%struct.ref_filter* %20, i32 0, i32 72)
  %136 = load i32, i32* @FILTER_REFS_BRANCHES, align 4
  %137 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 0
  store i32 %136, i32* %137, align 8
  %138 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 1
  store i32 -1, i32* %138, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %151

141:                                              ; preds = %3
  %142 = load i8**, i8*** %6, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* @builtin_branch_usage, align 4
  %149 = getelementptr inbounds [35 x %struct.option], [35 x %struct.option]* %23, i64 0, i64 0
  %150 = call i32 @usage_with_options(i32 %148, %struct.option* %149)
  br label %151

151:                                              ; preds = %147, %141, %3
  %152 = load i32, i32* @git_branch_config, align 4
  %153 = load %struct.ref_sorting**, %struct.ref_sorting*** @cmd_branch.sorting_tail, align 8
  %154 = call i32 @git_config(i32 %152, %struct.ref_sorting** %153)
  %155 = load i32, i32* @git_branch_track, align 4
  store i32 %155, i32* %19, align 4
  %156 = call i8* @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i32 0, i32* @head_oid, i32* null)
  store i8* %156, i8** @head, align 8
  %157 = load i8*, i8** @head, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %151
  %160 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i64 0, i64 0))
  %161 = call i32 (i32, ...) @die(i32 %160)
  br label %162

162:                                              ; preds = %159, %151
  %163 = load i8*, i8** @head, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 2
  store i32 1, i32* %167, align 8
  br label %176

168:                                              ; preds = %162
  %169 = load i8*, i8** @head, align 8
  %170 = call i32 @skip_prefix(i8* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8** @head)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0))
  %174 = call i32 (i32, ...) @die(i32 %173)
  br label %175

175:                                              ; preds = %172, %168
  br label %176

176:                                              ; preds = %175, %166
  %177 = load i32, i32* %5, align 4
  %178 = load i8**, i8*** %6, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds [35 x %struct.option], [35 x %struct.option]* %23, i64 0, i64 0
  %181 = load i32, i32* @builtin_branch_usage, align 4
  %182 = call i32 @parse_options(i32 %177, i8** %178, i8* %179, %struct.option* %180, i32 %181, i32 0)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %207, label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %207, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %207, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %207, label %194

194:                                              ; preds = %191
  %195 = load i8*, i8** %18, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %207, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %17, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %5, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 1, i32* %12, align 4
  br label %207

207:                                              ; preds = %206, %203, %200, %197, %194, %191, %188, %185, %176
  %208 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 9
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @REF_FILTER_MERGED_NONE, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %225, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 7
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221, %216, %211, %207
  store i32 1, i32* %12, align 4
  br label %226

226:                                              ; preds = %225, %221
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = add nsw i32 %231, %236
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  %240 = xor i1 %239, true
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = add nsw i32 %237, %242
  %244 = load i8*, i8** %18, align 8
  %245 = icmp ne i8* %244, null
  %246 = xor i1 %245, true
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = add nsw i32 %243, %248
  %250 = load i32, i32* %13, align 4
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = add nsw i32 %249, %254
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %257, %258
  %260 = icmp sgt i32 %259, 1
  br i1 %260, label %261, label %265

261:                                              ; preds = %226
  %262 = load i32, i32* @builtin_branch_usage, align 4
  %263 = getelementptr inbounds [35 x %struct.option], [35 x %struct.option]* %23, i64 0, i64 0
  %264 = call i32 @usage_with_options(i32 %262, %struct.option* %263)
  br label %265

265:                                              ; preds = %261, %226
  %266 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, -1
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load i32, i32* @DEFAULT_ABBREV, align 4
  %271 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 1
  store i32 %270, i32* %271, align 4
  br label %272

272:                                              ; preds = %269, %265
  %273 = load i32, i32* %21, align 4
  %274 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 4
  store i32 %273, i32* %274, align 8
  %275 = call i32 @finalize_colopts(i64* @colopts, i32 -1)
  %276 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 6
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %272
  %280 = load i64, i64* @colopts, align 8
  %281 = call i64 @explicitly_enable_column(i64 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0))
  %285 = call i32 (i32, ...) @die(i32 %284)
  br label %286

286:                                              ; preds = %283, %279
  store i64 0, i64* @colopts, align 8
  br label %287

287:                                              ; preds = %286, %272
  %288 = load i32, i32* %11, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = load i32, i32* %8, align 4
  %292 = mul nsw i32 %291, 2
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* %9, align 4
  %294 = mul nsw i32 %293, 2
  store i32 %294, i32* %9, align 4
  %295 = load i32, i32* %10, align 4
  %296 = mul nsw i32 %295, 2
  store i32 %296, i32* %10, align 4
  br label %297

297:                                              ; preds = %290, %287
  %298 = load i32, i32* %12, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = call i32 @setup_auto_pager(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i32 1)
  br label %302

302:                                              ; preds = %300, %297
  %303 = load i32, i32* %8, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %321

305:                                              ; preds = %302
  %306 = load i32, i32* %5, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %305
  %309 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0))
  %310 = call i32 (i32, ...) @die(i32 %309)
  br label %311

311:                                              ; preds = %308, %305
  %312 = load i32, i32* %5, align 4
  %313 = load i8**, i8*** %6, align 8
  %314 = load i32, i32* %8, align 4
  %315 = icmp sgt i32 %314, 1
  %316 = zext i1 %315 to i32
  %317 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %16, align 4
  %320 = call i32 @delete_branches(i32 %312, i8** %313, i32 %316, i32 %318, i32 %319)
  store i32 %320, i32* %4, align 4
  br label %667

321:                                              ; preds = %302
  %322 = load i32, i32* %13, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %321
  %325 = call i32 (...) @print_current_branch_name()
  store i32 0, i32* %4, align 4
  br label %667

326:                                              ; preds = %321
  %327 = load i32, i32* %12, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %360

329:                                              ; preds = %326
  %330 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @FILTER_REFS_BRANCHES, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %335
  %340 = load i32, i32* @FILTER_REFS_DETACHED_HEAD, align 4
  %341 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = or i32 %342, %340
  store i32 %343, i32* %341, align 8
  br label %344

344:                                              ; preds = %339, %335, %329
  %345 = load i8**, i8*** %6, align 8
  %346 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 5
  store i8** %345, i8*** %346, align 8
  %347 = load %struct.ref_sorting*, %struct.ref_sorting** @cmd_branch.sorting, align 8
  %348 = icmp ne %struct.ref_sorting* %347, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %344
  %350 = call %struct.ref_sorting* (...) @ref_default_sorting()
  store %struct.ref_sorting* %350, %struct.ref_sorting** @cmd_branch.sorting, align 8
  br label %351

351:                                              ; preds = %349, %344
  %352 = load i32, i32* %21, align 4
  %353 = load %struct.ref_sorting*, %struct.ref_sorting** @cmd_branch.sorting, align 8
  %354 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %353, i32 0, i32 0
  store i32 %352, i32* %354, align 4
  %355 = load %struct.ref_sorting*, %struct.ref_sorting** @cmd_branch.sorting, align 8
  %356 = call i32 @print_ref_list(%struct.ref_filter* %20, %struct.ref_sorting* %355, %struct.ref_format* %22)
  %357 = load i64, i64* @colopts, align 8
  %358 = call i32 @print_columns(i32* @output, i64 %357, i32* null)
  %359 = call i32 @string_list_clear(i32* @output, i32 0)
  store i32 0, i32* %4, align 4
  br label %667

360:                                              ; preds = %326
  %361 = load i32, i32* %15, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %413

363:                                              ; preds = %360
  %364 = bitcast %struct.strbuf* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %364, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %365 = load i32, i32* %5, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %376, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %367
  %372 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i64 0, i64 0))
  %373 = call i32 (i32, ...) @die(i32 %372)
  br label %374

374:                                              ; preds = %371, %367
  %375 = load i8*, i8** @head, align 8
  store i8* %375, i8** %24, align 8
  br label %387

376:                                              ; preds = %363
  %377 = load i32, i32* %5, align 4
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = load i8**, i8*** %6, align 8
  %381 = getelementptr inbounds i8*, i8** %380, i64 0
  %382 = load i8*, i8** %381, align 8
  store i8* %382, i8** %24, align 8
  br label %386

383:                                              ; preds = %376
  %384 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.58, i64 0, i64 0))
  %385 = call i32 (i32, ...) @die(i32 %384)
  br label %386

386:                                              ; preds = %383, %379
  br label %387

387:                                              ; preds = %386, %374
  %388 = load i8*, i8** %24, align 8
  %389 = call i32 @strbuf_addf(%struct.strbuf* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0), i8* %388)
  %390 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @ref_exists(i32 %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %406, label %394

394:                                              ; preds = %387
  %395 = call i32 @strbuf_release(%struct.strbuf* %25)
  %396 = load i32, i32* %5, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %394
  %399 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0))
  %400 = load i8*, i8** %24, align 8
  %401 = call i32 @error(i32 %399, i8* %400)
  store i32 %401, i32* %4, align 4
  br label %667

402:                                              ; preds = %394
  %403 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i64 0, i64 0))
  %404 = load i8*, i8** %24, align 8
  %405 = call i32 @error(i32 %403, i8* %404)
  store i32 %405, i32* %4, align 4
  br label %667

406:                                              ; preds = %387
  %407 = call i32 @strbuf_release(%struct.strbuf* %25)
  %408 = load i8*, i8** %24, align 8
  %409 = call i64 @edit_branch_description(i8* %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %406
  store i32 1, i32* %4, align 4
  br label %667

412:                                              ; preds = %406
  br label %663

413:                                              ; preds = %360
  %414 = load i32, i32* %10, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %454

416:                                              ; preds = %413
  %417 = load i32, i32* %5, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %422, label %419

419:                                              ; preds = %416
  %420 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0))
  %421 = call i32 (i32, ...) @die(i32 %420)
  br label %453

422:                                              ; preds = %416
  %423 = load i32, i32* %5, align 4
  %424 = icmp eq i32 %423, 1
  br i1 %424, label %425, label %434

425:                                              ; preds = %422
  %426 = load i8*, i8** @head, align 8
  %427 = load i8**, i8*** %6, align 8
  %428 = getelementptr inbounds i8*, i8** %427, i64 0
  %429 = load i8*, i8** %428, align 8
  %430 = load i32, i32* %10, align 4
  %431 = icmp sgt i32 %430, 1
  %432 = zext i1 %431 to i32
  %433 = call i32 @copy_or_rename_branch(i8* %426, i8* %429, i32 1, i32 %432)
  br label %452

434:                                              ; preds = %422
  %435 = load i32, i32* %5, align 4
  %436 = icmp eq i32 %435, 2
  br i1 %436, label %437, label %448

437:                                              ; preds = %434
  %438 = load i8**, i8*** %6, align 8
  %439 = getelementptr inbounds i8*, i8** %438, i64 0
  %440 = load i8*, i8** %439, align 8
  %441 = load i8**, i8*** %6, align 8
  %442 = getelementptr inbounds i8*, i8** %441, i64 1
  %443 = load i8*, i8** %442, align 8
  %444 = load i32, i32* %10, align 4
  %445 = icmp sgt i32 %444, 1
  %446 = zext i1 %445 to i32
  %447 = call i32 @copy_or_rename_branch(i8* %440, i8* %443, i32 1, i32 %446)
  br label %451

448:                                              ; preds = %434
  %449 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.62, i64 0, i64 0))
  %450 = call i32 (i32, ...) @die(i32 %449)
  br label %451

451:                                              ; preds = %448, %437
  br label %452

452:                                              ; preds = %451, %425
  br label %453

453:                                              ; preds = %452, %419
  br label %662

454:                                              ; preds = %413
  %455 = load i32, i32* %9, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %495

457:                                              ; preds = %454
  %458 = load i32, i32* %5, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %463, label %460

460:                                              ; preds = %457
  %461 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0))
  %462 = call i32 (i32, ...) @die(i32 %461)
  br label %494

463:                                              ; preds = %457
  %464 = load i32, i32* %5, align 4
  %465 = icmp eq i32 %464, 1
  br i1 %465, label %466, label %475

466:                                              ; preds = %463
  %467 = load i8*, i8** @head, align 8
  %468 = load i8**, i8*** %6, align 8
  %469 = getelementptr inbounds i8*, i8** %468, i64 0
  %470 = load i8*, i8** %469, align 8
  %471 = load i32, i32* %9, align 4
  %472 = icmp sgt i32 %471, 1
  %473 = zext i1 %472 to i32
  %474 = call i32 @copy_or_rename_branch(i8* %467, i8* %470, i32 0, i32 %473)
  br label %493

475:                                              ; preds = %463
  %476 = load i32, i32* %5, align 4
  %477 = icmp eq i32 %476, 2
  br i1 %477, label %478, label %489

478:                                              ; preds = %475
  %479 = load i8**, i8*** %6, align 8
  %480 = getelementptr inbounds i8*, i8** %479, i64 0
  %481 = load i8*, i8** %480, align 8
  %482 = load i8**, i8*** %6, align 8
  %483 = getelementptr inbounds i8*, i8** %482, i64 1
  %484 = load i8*, i8** %483, align 8
  %485 = load i32, i32* %9, align 4
  %486 = icmp sgt i32 %485, 1
  %487 = zext i1 %486 to i32
  %488 = call i32 @copy_or_rename_branch(i8* %481, i8* %484, i32 0, i32 %487)
  br label %492

489:                                              ; preds = %475
  %490 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.63, i64 0, i64 0))
  %491 = call i32 (i32, ...) @die(i32 %490)
  br label %492

492:                                              ; preds = %489, %478
  br label %493

493:                                              ; preds = %492, %466
  br label %494

494:                                              ; preds = %493, %460
  br label %661

495:                                              ; preds = %454
  %496 = load i8*, i8** %18, align 8
  %497 = icmp ne i8* %496, null
  br i1 %497, label %498, label %551

498:                                              ; preds = %495
  %499 = load i8**, i8*** %6, align 8
  %500 = getelementptr inbounds i8*, i8** %499, i64 0
  %501 = load i8*, i8** %500, align 8
  %502 = call %struct.branch* @branch_get(i8* %501)
  store %struct.branch* %502, %struct.branch** %26, align 8
  %503 = load i32, i32* %5, align 4
  %504 = icmp sgt i32 %503, 1
  br i1 %504, label %505, label %508

505:                                              ; preds = %498
  %506 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0))
  %507 = call i32 (i32, ...) @die(i32 %506)
  br label %508

508:                                              ; preds = %505, %498
  %509 = load %struct.branch*, %struct.branch** %26, align 8
  %510 = icmp ne %struct.branch* %509, null
  br i1 %510, label %530, label %511

511:                                              ; preds = %508
  %512 = load i32, i32* %5, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %520

514:                                              ; preds = %511
  %515 = load i8**, i8*** %6, align 8
  %516 = getelementptr inbounds i8*, i8** %515, i64 0
  %517 = load i8*, i8** %516, align 8
  %518 = call i32 @strcmp(i8* %517, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0))
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %524, label %520

520:                                              ; preds = %514, %511
  %521 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.65, i64 0, i64 0))
  %522 = load i8*, i8** %18, align 8
  %523 = call i32 (i32, ...) @die(i32 %521, i8* %522)
  br label %524

524:                                              ; preds = %520, %514
  %525 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0))
  %526 = load i8**, i8*** %6, align 8
  %527 = getelementptr inbounds i8*, i8** %526, i64 0
  %528 = load i8*, i8** %527, align 8
  %529 = call i32 (i32, ...) @die(i32 %525, i8* %528)
  br label %530

530:                                              ; preds = %524, %508
  %531 = load %struct.branch*, %struct.branch** %26, align 8
  %532 = getelementptr inbounds %struct.branch, %struct.branch* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 8
  %534 = call i32 @ref_exists(i32 %533)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %542, label %536

536:                                              ; preds = %530
  %537 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0))
  %538 = load %struct.branch*, %struct.branch** %26, align 8
  %539 = getelementptr inbounds %struct.branch, %struct.branch* %538, i32 0, i32 0
  %540 = load i8*, i8** %539, align 8
  %541 = call i32 (i32, ...) @die(i32 %537, i8* %540)
  br label %542

542:                                              ; preds = %536, %530
  %543 = load i32, i32* @the_repository, align 4
  %544 = load %struct.branch*, %struct.branch** %26, align 8
  %545 = getelementptr inbounds %struct.branch, %struct.branch* %544, i32 0, i32 0
  %546 = load i8*, i8** %545, align 8
  %547 = load i8*, i8** %18, align 8
  %548 = load i32, i32* %16, align 4
  %549 = load i32, i32* @BRANCH_TRACK_OVERRIDE, align 4
  %550 = call i32 @create_branch(i32 %543, i8* %546, i8* %547, i32 0, i32 0, i32 0, i32 %548, i32 %549)
  br label %660

551:                                              ; preds = %495
  %552 = load i32, i32* %17, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %613

554:                                              ; preds = %551
  %555 = load i8**, i8*** %6, align 8
  %556 = getelementptr inbounds i8*, i8** %555, i64 0
  %557 = load i8*, i8** %556, align 8
  %558 = call %struct.branch* @branch_get(i8* %557)
  store %struct.branch* %558, %struct.branch** %27, align 8
  %559 = bitcast %struct.strbuf* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %559, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %560 = load i32, i32* %5, align 4
  %561 = icmp sgt i32 %560, 1
  br i1 %561, label %562, label %565

562:                                              ; preds = %554
  %563 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i64 0, i64 0))
  %564 = call i32 (i32, ...) @die(i32 %563)
  br label %565

565:                                              ; preds = %562, %554
  %566 = load %struct.branch*, %struct.branch** %27, align 8
  %567 = icmp ne %struct.branch* %566, null
  br i1 %567, label %586, label %568

568:                                              ; preds = %565
  %569 = load i32, i32* %5, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %577

571:                                              ; preds = %568
  %572 = load i8**, i8*** %6, align 8
  %573 = getelementptr inbounds i8*, i8** %572, i64 0
  %574 = load i8*, i8** %573, align 8
  %575 = call i32 @strcmp(i8* %574, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0))
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %580, label %577

577:                                              ; preds = %571, %568
  %578 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.69, i64 0, i64 0))
  %579 = call i32 (i32, ...) @die(i32 %578)
  br label %580

580:                                              ; preds = %577, %571
  %581 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0))
  %582 = load i8**, i8*** %6, align 8
  %583 = getelementptr inbounds i8*, i8** %582, i64 0
  %584 = load i8*, i8** %583, align 8
  %585 = call i32 (i32, ...) @die(i32 %581, i8* %584)
  br label %586

586:                                              ; preds = %580, %565
  %587 = load %struct.branch*, %struct.branch** %27, align 8
  %588 = call i32 @branch_has_merge_config(%struct.branch* %587)
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %596, label %590

590:                                              ; preds = %586
  %591 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0))
  %592 = load %struct.branch*, %struct.branch** %27, align 8
  %593 = getelementptr inbounds %struct.branch, %struct.branch* %592, i32 0, i32 0
  %594 = load i8*, i8** %593, align 8
  %595 = call i32 (i32, ...) @die(i32 %591, i8* %594)
  br label %596

596:                                              ; preds = %590, %586
  %597 = load %struct.branch*, %struct.branch** %27, align 8
  %598 = getelementptr inbounds %struct.branch, %struct.branch* %597, i32 0, i32 0
  %599 = load i8*, i8** %598, align 8
  %600 = call i32 @strbuf_addf(%struct.strbuf* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i64 0, i64 0), i8* %599)
  %601 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %602 = load i32, i32* %601, align 4
  %603 = call i32 @git_config_set_multivar(i32 %602, i32* null, i32* null, i32 1)
  %604 = call i32 @strbuf_reset(%struct.strbuf* %28)
  %605 = load %struct.branch*, %struct.branch** %27, align 8
  %606 = getelementptr inbounds %struct.branch, %struct.branch* %605, i32 0, i32 0
  %607 = load i8*, i8** %606, align 8
  %608 = call i32 @strbuf_addf(%struct.strbuf* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i64 0, i64 0), i8* %607)
  %609 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %610 = load i32, i32* %609, align 4
  %611 = call i32 @git_config_set_multivar(i32 %610, i32* null, i32* null, i32 1)
  %612 = call i32 @strbuf_release(%struct.strbuf* %28)
  br label %659

613:                                              ; preds = %551
  %614 = load i32, i32* %5, align 4
  %615 = icmp sgt i32 %614, 0
  br i1 %615, label %616, label %654

616:                                              ; preds = %613
  %617 = load i32, i32* %5, align 4
  %618 = icmp sle i32 %617, 2
  br i1 %618, label %619, label %654

619:                                              ; preds = %616
  %620 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = load i32, i32* @FILTER_REFS_BRANCHES, align 4
  %623 = icmp ne i32 %621, %622
  br i1 %623, label %624, label %627

624:                                              ; preds = %619
  %625 = call i32 @_(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.73, i64 0, i64 0))
  %626 = call i32 (i32, ...) @die(i32 %625)
  br label %627

627:                                              ; preds = %624, %619
  %628 = load i32, i32* %19, align 4
  %629 = load i32, i32* @BRANCH_TRACK_OVERRIDE, align 4
  %630 = icmp eq i32 %628, %629
  br i1 %630, label %631, label %634

631:                                              ; preds = %627
  %632 = call i32 @_(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.74, i64 0, i64 0))
  %633 = call i32 (i32, ...) @die(i32 %632)
  br label %634

634:                                              ; preds = %631, %627
  %635 = load i32, i32* @the_repository, align 4
  %636 = load i8**, i8*** %6, align 8
  %637 = getelementptr inbounds i8*, i8** %636, i64 0
  %638 = load i8*, i8** %637, align 8
  %639 = load i32, i32* %5, align 4
  %640 = icmp eq i32 %639, 2
  br i1 %640, label %641, label %645

641:                                              ; preds = %634
  %642 = load i8**, i8*** %6, align 8
  %643 = getelementptr inbounds i8*, i8** %642, i64 1
  %644 = load i8*, i8** %643, align 8
  br label %647

645:                                              ; preds = %634
  %646 = load i8*, i8** @head, align 8
  br label %647

647:                                              ; preds = %645, %641
  %648 = phi i8* [ %644, %641 ], [ %646, %645 ]
  %649 = load i32, i32* %11, align 4
  %650 = load i32, i32* %14, align 4
  %651 = load i32, i32* %16, align 4
  %652 = load i32, i32* %19, align 4
  %653 = call i32 @create_branch(i32 %635, i8* %638, i8* %648, i32 %649, i32 0, i32 %650, i32 %651, i32 %652)
  br label %658

654:                                              ; preds = %616, %613
  %655 = load i32, i32* @builtin_branch_usage, align 4
  %656 = getelementptr inbounds [35 x %struct.option], [35 x %struct.option]* %23, i64 0, i64 0
  %657 = call i32 @usage_with_options(i32 %655, %struct.option* %656)
  br label %658

658:                                              ; preds = %654, %647
  br label %659

659:                                              ; preds = %658, %596
  br label %660

660:                                              ; preds = %659, %542
  br label %661

661:                                              ; preds = %660, %494
  br label %662

662:                                              ; preds = %661, %453
  br label %663

663:                                              ; preds = %662, %412
  br label %664

664:                                              ; preds = %663
  br label %665

665:                                              ; preds = %664
  br label %666

666:                                              ; preds = %665
  store i32 0, i32* %4, align 4
  br label %667

667:                                              ; preds = %666, %411, %402, %398, %351, %324, %311
  %668 = load i32, i32* %4, align 4
  ret i32 %668
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @OPT_GROUP(%struct.option* sret, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local void @OPT__VERBOSE(%struct.option* sret, i64*, i32) #2

declare dso_local void @OPT__QUIET(%struct.option* sret, i32*, i32) #2

declare dso_local void @OPT_SET_INT(%struct.option* sret, i8 signext, i8*, i32*, i32, i32) #2

declare dso_local void @OPT_SET_INT_F(%struct.option* sret, i32, i8*, i32*, i32, i32, i32) #2

declare dso_local void @OPT_STRING(%struct.option* sret, i8 zeroext, i8*, i8**, i32, i32) #2

declare dso_local void @OPT_BOOL(%struct.option* sret, i8 signext, i8*, i32*, i32) #2

declare dso_local void @OPT__COLOR(%struct.option* sret, i32*, i32) #2

declare dso_local void @OPT_CONTAINS(%struct.option* sret, i64*, i32) #2

declare dso_local void @OPT_NO_CONTAINS(%struct.option* sret, i64*, i32) #2

declare dso_local void @OPT_WITH(%struct.option* sret, i64*, i32) #2

declare dso_local void @OPT_WITHOUT(%struct.option* sret, i64*, i32) #2

declare dso_local void @OPT__ABBREV(%struct.option* sret, i32*) #2

declare dso_local void @OPT_BIT(%struct.option* sret, i8 signext, i8*, i32*, i32, i32) #2

declare dso_local void @OPT__FORCE(%struct.option* sret, i32*, i32, i32) #2

declare dso_local void @OPT_MERGED(%struct.option* sret, %struct.ref_filter*, i32) #2

declare dso_local void @OPT_NO_MERGED(%struct.option* sret, %struct.ref_filter*, i32) #2

declare dso_local void @OPT_COLUMN(%struct.option* sret, i32, i8*, i64*, i32) #2

declare dso_local void @OPT_REF_SORT(%struct.option* sret, %struct.ref_sorting**) #2

declare dso_local void @OPT_END(%struct.option* sret, ...) #2

declare dso_local i32 @setup_ref_filter_porcelain_msg(...) #2

declare dso_local i32 @memset(%struct.ref_filter*, i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @git_config(i32, %struct.ref_sorting**) #2

declare dso_local i8* @resolve_refdup(i8*, i32, i32*, i32*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @finalize_colopts(i64*, i32) #2

declare dso_local i64 @explicitly_enable_column(i64) #2

declare dso_local i32 @setup_auto_pager(i8*, i32) #2

declare dso_local i32 @delete_branches(i32, i8**, i32, i32, i32) #2

declare dso_local i32 @print_current_branch_name(...) #2

declare dso_local %struct.ref_sorting* @ref_default_sorting(...) #2

declare dso_local i32 @print_ref_list(%struct.ref_filter*, %struct.ref_sorting*, %struct.ref_format*) #2

declare dso_local i32 @print_columns(i32*, i64, i32*) #2

declare dso_local i32 @string_list_clear(i32*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @ref_exists(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i64 @edit_branch_description(i8*) #2

declare dso_local i32 @copy_or_rename_branch(i8*, i8*, i32, i32) #2

declare dso_local %struct.branch* @branch_get(i8*) #2

declare dso_local i32 @create_branch(i32, i8*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @branch_has_merge_config(%struct.branch*) #2

declare dso_local i32 @git_config_set_multivar(i32, i32*, i32*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
