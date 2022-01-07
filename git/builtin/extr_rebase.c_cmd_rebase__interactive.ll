; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_cmd_rebase__interactive.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_cmd_rebase__interactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rebase_options = type { i32, i32, i32, i32, i32, i32, i32, %struct.object_id*, i32, i32, i32, i32, i32, i32, %struct.object_id, i32, %struct.object_id, %struct.object_id, %struct.object_id, i32 }
%struct.object_id = type { i32 }
%struct.option = type { i8, i8*, i64, i32*, i32, i32, i32, %struct.object_id*, i32 }

@REBASE_OPTIONS_INIT = common dso_local global %struct.rebase_options zeroinitializer, align 8
@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4
@ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"allow fast-forward\00", align 1
@REBASE_FORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"keep-empty\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"keep empty commits\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"allow-empty-message\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"allow commits with empty messages\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"rebase-merges\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"rebase merge commits\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"rebase-cousins\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"keep original branch points of cousins\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"autosquash\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"move commits that begin with squash!/fixup!\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"signoff\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"sign commits\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"display a diffstat of what changed upstream\00", align 1
@REBASE_NO_QUIET = common dso_local global i32 0, align 4
@REBASE_VERBOSE = common dso_local global i32 0, align 4
@REBASE_DIFFSTAT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"continue rebase\00", align 1
@ACTION_CONTINUE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"skip commit\00", align 1
@ACTION_SKIP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"edit-todo\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"edit the todo list\00", align 1
@ACTION_EDIT_TODO = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"show-current-patch\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"show the current patch\00", align 1
@ACTION_SHOW_CURRENT_PATCH = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"shorten-ids\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"shorten commit ids in the todo list\00", align 1
@ACTION_SHORTEN_OIDS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"expand-ids\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"expand commit ids in the todo list\00", align 1
@ACTION_EXPAND_OIDS = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [16 x i8] c"check-todo-list\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"check the todo list\00", align 1
@ACTION_CHECK_TODO_LIST = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"rearrange-squash\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"rearrange fixup/squash lines\00", align 1
@ACTION_REARRANGE_SQUASH = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"add-exec-commands\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"insert exec commands in todo list\00", align 1
@ACTION_ADD_EXEC = common dso_local global i32 0, align 4
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"onto\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@parse_opt_commit = common dso_local global i32* null, align 8
@.str.35 = private unnamed_addr constant [18 x i8] c"restrict-revision\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"restrict revision\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"squash-onto\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"squash onto\00", align 1
@parse_opt_object_id = common dso_local global i32* null, align 8
@.str.39 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"the upstream commit\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"head-name\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"head name\00", align 1
@OPTION_STRING = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"gpg-sign\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"key-id\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"GPG-sign commits\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"strategy\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"rebase strategy\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"strategy-opts\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"strategy options\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"switch-to\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"the branch or commit to checkout\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"onto-name\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"onto name\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"the command to run\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"reschedule-failed-exec\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"automatically re-schedule any `exec` that fails\00", align 1
@builtin_rebase_interactive_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [60 x i8] c"--[no-]rebase-cousins has no effect without --rebase-merges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_rebase__interactive(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rebase_options, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca [31 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = bitcast %struct.rebase_options* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.rebase_options* @REBASE_OPTIONS_INIT to i8*), i64 88, i1 false)
  %12 = bitcast %struct.object_id* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.object_id* @null_oid to i8*), i64 4, i1 false)
  %13 = load i32, i32* @ACTION_NONE, align 4
  store i32 %13, i32* %9, align 4
  %14 = getelementptr inbounds [31 x %struct.option], [31 x %struct.option]* %10, i64 0, i64 0
  %15 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 19
  %16 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @REBASE_FORCE, align 4
  call void @OPT_NEGBIT(%struct.option* sret %14, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %15, i32 %16, i32 %17)
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %19 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 0
  %20 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %18, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %19, i32 %20)
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %22 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 1
  %23 = call i32 @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %21, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %22, i32 %23)
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %25 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 2
  %26 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %24, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %25, i32 %26)
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %28 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 3
  %29 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %27, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* %28, i32 %29)
  %30 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %31 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 4
  %32 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %30, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* %31, i32 %32)
  %33 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %34 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 5
  %35 = call i32 @N_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %33, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %34, i32 %35)
  %36 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %37 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 19
  %38 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  %39 = load i32, i32* @REBASE_NO_QUIET, align 4
  %40 = load i32, i32* @REBASE_VERBOSE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @REBASE_DIFFSTAT, align 4
  %43 = or i32 %41, %42
  call void @OPT_BIT(%struct.option* sret %36, i8 signext 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32* %37, i32 %38, i32 %43)
  %44 = getelementptr inbounds %struct.option, %struct.option* %36, i64 1
  %45 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %46 = load i32, i32* @ACTION_CONTINUE, align 4
  call void @OPT_CMDMODE(%struct.option* sret %44, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32* %9, i32 %45, i32 %46)
  %47 = getelementptr inbounds %struct.option, %struct.option* %44, i64 1
  %48 = call i32 @N_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %49 = load i32, i32* @ACTION_SKIP, align 4
  call void @OPT_CMDMODE(%struct.option* sret %47, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32* %9, i32 %48, i32 %49)
  %50 = getelementptr inbounds %struct.option, %struct.option* %47, i64 1
  %51 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %52 = load i32, i32* @ACTION_EDIT_TODO, align 4
  call void @OPT_CMDMODE(%struct.option* sret %50, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32* %9, i32 %51, i32 %52)
  %53 = getelementptr inbounds %struct.option, %struct.option* %50, i64 1
  %54 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %55 = load i32, i32* @ACTION_SHOW_CURRENT_PATCH, align 4
  call void @OPT_CMDMODE(%struct.option* sret %53, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32* %9, i32 %54, i32 %55)
  %56 = getelementptr inbounds %struct.option, %struct.option* %53, i64 1
  %57 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  %58 = load i32, i32* @ACTION_SHORTEN_OIDS, align 4
  call void @OPT_CMDMODE(%struct.option* sret %56, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32* %9, i32 %57, i32 %58)
  %59 = getelementptr inbounds %struct.option, %struct.option* %56, i64 1
  %60 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0))
  %61 = load i32, i32* @ACTION_EXPAND_OIDS, align 4
  call void @OPT_CMDMODE(%struct.option* sret %59, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32* %9, i32 %60, i32 %61)
  %62 = getelementptr inbounds %struct.option, %struct.option* %59, i64 1
  %63 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0))
  %64 = load i32, i32* @ACTION_CHECK_TODO_LIST, align 4
  call void @OPT_CMDMODE(%struct.option* sret %62, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i32* %9, i32 %63, i32 %64)
  %65 = getelementptr inbounds %struct.option, %struct.option* %62, i64 1
  %66 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  %67 = load i32, i32* @ACTION_REARRANGE_SQUASH, align 4
  call void @OPT_CMDMODE(%struct.option* sret %65, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32* %9, i32 %66, i32 %67)
  %68 = getelementptr inbounds %struct.option, %struct.option* %65, i64 1
  %69 = call i32 @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0))
  %70 = load i32, i32* @ACTION_ADD_EXEC, align 4
  call void @OPT_CMDMODE(%struct.option* sret %68, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i32* %9, i32 %69, i32 %70)
  %71 = getelementptr inbounds %struct.option, %struct.option* %68, i64 1
  %72 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 0
  %73 = load i32, i32* @OPTION_CALLBACK, align 4
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %72, align 16
  %75 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 1
  store i8* null, i8** %75, align 8
  %76 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 2
  store i64 ptrtoint ([5 x i8]* @.str.34 to i64), i64* %76, align 16
  %77 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 3
  %78 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 18
  %79 = bitcast %struct.object_id* %78 to i32*
  store i32* %79, i32** %77, align 8
  %80 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 4
  %81 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  store i32 %81, i32* %80, align 16
  %82 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 5
  %83 = call i32 @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  store i32 %83, i32* %82, align 4
  %84 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 6
  %85 = load i32, i32* @PARSE_OPT_NONEG, align 4
  store i32 %85, i32* %84, align 8
  %86 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 7
  %87 = load i32*, i32** @parse_opt_commit, align 8
  %88 = bitcast i32* %87 to %struct.object_id*
  store %struct.object_id* %88, %struct.object_id** %86, align 16
  %89 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 8
  store i32 0, i32* %89, align 8
  %90 = getelementptr inbounds %struct.option, %struct.option* %71, i64 1
  %91 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 0
  %92 = load i32, i32* @OPTION_CALLBACK, align 4
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %91, align 16
  %94 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 1
  store i8* null, i8** %94, align 8
  %95 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 2
  store i64 ptrtoint ([18 x i8]* @.str.35 to i64), i64* %95, align 16
  %96 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 3
  %97 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 17
  %98 = bitcast %struct.object_id* %97 to i32*
  store i32* %98, i32** %96, align 8
  %99 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 4
  %100 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0))
  store i32 %100, i32* %99, align 16
  %101 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 5
  %102 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0))
  store i32 %102, i32* %101, align 4
  %103 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 6
  %104 = load i32, i32* @PARSE_OPT_NONEG, align 4
  store i32 %104, i32* %103, align 8
  %105 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 7
  %106 = load i32*, i32** @parse_opt_commit, align 8
  %107 = bitcast i32* %106 to %struct.object_id*
  store %struct.object_id* %107, %struct.object_id** %105, align 16
  %108 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 8
  store i32 0, i32* %108, align 8
  %109 = getelementptr inbounds %struct.option, %struct.option* %90, i64 1
  %110 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 0
  %111 = load i32, i32* @OPTION_CALLBACK, align 4
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %110, align 16
  %113 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 1
  store i8* null, i8** %113, align 8
  %114 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 2
  store i64 ptrtoint ([12 x i8]* @.str.37 to i64), i64* %114, align 16
  %115 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 3
  %116 = bitcast %struct.object_id* %8 to i32*
  store i32* %116, i32** %115, align 8
  %117 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 4
  %118 = call i32 @N_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  store i32 %118, i32* %117, align 16
  %119 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 5
  %120 = call i32 @N_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0))
  store i32 %120, i32* %119, align 4
  %121 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 6
  %122 = load i32, i32* @PARSE_OPT_NONEG, align 4
  store i32 %122, i32* %121, align 8
  %123 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 7
  %124 = load i32*, i32** @parse_opt_object_id, align 8
  %125 = bitcast i32* %124 to %struct.object_id*
  store %struct.object_id* %125, %struct.object_id** %123, align 16
  %126 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 8
  store i32 0, i32* %126, align 8
  %127 = getelementptr inbounds %struct.option, %struct.option* %109, i64 1
  %128 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 0
  %129 = load i32, i32* @OPTION_CALLBACK, align 4
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %128, align 16
  %131 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 1
  store i8* null, i8** %131, align 8
  %132 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 2
  store i64 ptrtoint ([9 x i8]* @.str.39 to i64), i64* %132, align 16
  %133 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 3
  %134 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 16
  %135 = bitcast %struct.object_id* %134 to i32*
  store i32* %135, i32** %133, align 8
  %136 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 4
  %137 = call i32 @N_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0))
  store i32 %137, i32* %136, align 16
  %138 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 5
  %139 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  store i32 %139, i32* %138, align 4
  %140 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 6
  %141 = load i32, i32* @PARSE_OPT_NONEG, align 4
  store i32 %141, i32* %140, align 8
  %142 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 7
  %143 = load i32*, i32** @parse_opt_commit, align 8
  %144 = bitcast i32* %143 to %struct.object_id*
  store %struct.object_id* %144, %struct.object_id** %142, align 16
  %145 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 8
  store i32 0, i32* %145, align 8
  %146 = getelementptr inbounds %struct.option, %struct.option* %127, i64 1
  %147 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 15
  %148 = call i32 @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0))
  %149 = call i32 @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %146, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i32* %147, i32 %148, i32 %149)
  %150 = getelementptr inbounds %struct.option, %struct.option* %146, i64 1
  %151 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 0
  %152 = load i32, i32* @OPTION_STRING, align 4
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %151, align 16
  %154 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 1
  store i8* inttoptr (i64 83 to i8*), i8** %154, align 8
  %155 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 2
  store i64 ptrtoint ([9 x i8]* @.str.43 to i64), i64* %155, align 16
  %156 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 3
  %157 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 14
  %158 = bitcast %struct.object_id* %157 to i32*
  store i32* %158, i32** %156, align 8
  %159 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 4
  %160 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  store i32 %160, i32* %159, align 16
  %161 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 5
  %162 = call i32 @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0))
  store i32 %162, i32* %161, align 4
  %163 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 6
  %164 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  store i32 %164, i32* %163, align 8
  %165 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 7
  store %struct.object_id* null, %struct.object_id** %165, align 16
  %166 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 8
  store i32 ptrtoint ([1 x i8]* @.str.46 to i32), i32* %166, align 8
  %167 = getelementptr inbounds %struct.option, %struct.option* %150, i64 1
  %168 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 13
  %169 = call i32 @N_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0))
  %170 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %167, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), i32* %168, i32 %169, i32 %170)
  %171 = getelementptr inbounds %struct.option, %struct.option* %167, i64 1
  %172 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 12
  %173 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0))
  %174 = call i32 @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %171, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i32* %172, i32 %173, i32 %174)
  %175 = getelementptr inbounds %struct.option, %struct.option* %171, i64 1
  %176 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 11
  %177 = call i32 @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  %178 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %175, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i32* %176, i32 %177, i32 %178)
  %179 = getelementptr inbounds %struct.option, %struct.option* %175, i64 1
  %180 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 10
  %181 = call i32 @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0))
  %182 = call i32 @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %179, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i32* %180, i32 %181, i32 %182)
  %183 = getelementptr inbounds %struct.option, %struct.option* %179, i64 1
  %184 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 9
  %185 = call i32 @N_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0))
  %186 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %183, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32* %184, i32 %185, i32 %186)
  %187 = getelementptr inbounds %struct.option, %struct.option* %183, i64 1
  %188 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 8
  call void @OPT_RERERE_AUTOUPDATE(%struct.option* sret %187, i32* %188)
  %189 = getelementptr inbounds %struct.option, %struct.option* %187, i64 1
  %190 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 6
  %191 = call i32 @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.58, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %189, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0), i32* %190, i32 %191)
  %192 = getelementptr inbounds %struct.option, %struct.option* %189, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %192)
  %193 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 3
  store i32 -1, i32* %193, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %200

196:                                              ; preds = %3
  %197 = load i32, i32* @builtin_rebase_interactive_usage, align 4
  %198 = getelementptr inbounds [31 x %struct.option], [31 x %struct.option]* %10, i64 0, i64 0
  %199 = call i32 @usage_with_options(i32 %197, %struct.option* %198)
  br label %200

200:                                              ; preds = %196, %3
  %201 = load i32, i32* %4, align 4
  %202 = load i8**, i8*** %5, align 8
  %203 = load i8*, i8** %6, align 8
  %204 = getelementptr inbounds [31 x %struct.option], [31 x %struct.option]* %10, i64 0, i64 0
  %205 = load i32, i32* @builtin_rebase_interactive_usage, align 4
  %206 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %207 = call i32 @parse_options(i32 %201, i8** %202, i8* %203, %struct.option* %204, i32 %205, i32 %206)
  store i32 %207, i32* %4, align 4
  %208 = call i32 @is_null_oid(%struct.object_id* %8)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %200
  %211 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 7
  store %struct.object_id* %8, %struct.object_id** %211, align 8
  br label %212

212:                                              ; preds = %210, %200
  %213 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %7, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %216
  %221 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.59, i64 0, i64 0))
  %222 = call i32 @warning(i32 %221)
  br label %223

223:                                              ; preds = %220, %216, %212
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @run_rebase_interactive(%struct.rebase_options* %7, i32 %224)
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  ret i32 %229
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @OPT_NEGBIT(%struct.option* sret, i32, i8*, i32*, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local void @OPT_BOOL(%struct.option* sret, i32, i8*, i32*, i32) #2

declare dso_local void @OPT_BIT(%struct.option* sret, i8 signext, i8*, i32*, i32, i32) #2

declare dso_local void @OPT_CMDMODE(%struct.option* sret, i32, i8*, i32*, i32, i32) #2

declare dso_local void @OPT_STRING(%struct.option* sret, i32, i8*, i32*, i32, i32) #2

declare dso_local void @OPT_RERERE_AUTOUPDATE(%struct.option* sret, i32*) #2

declare dso_local void @OPT_END(%struct.option* sret, ...) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @run_rebase_interactive(%struct.rebase_options*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
