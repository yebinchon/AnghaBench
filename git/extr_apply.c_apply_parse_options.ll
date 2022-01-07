; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_apply_parse_options.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_apply_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.option = type { i8, i8*, i32, i32, i32*, i32*, %struct.apply_state*, i32 }

@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"don't apply changes matching the given path\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@apply_option_parse_exclude = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"apply changes matching the given path\00", align 1
@apply_option_parse_include = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"remove <num> leading slashes from traditional diff paths\00", align 1
@apply_option_parse_p = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"no-add\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"ignore additions made by the patch\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"instead of applying the patch, output diffstat for the input\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"allow-binary-replacement\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"numstat\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"show number of added and deleted lines in decimal notation\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"summary\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"instead of applying the patch, output a summary for the input\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"instead of applying the patch, see if the patch is applicable\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"make sure the patch is applicable to the current index\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"intent-to-add\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"mark new files with `git add --intent-to-add`\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"apply a patch without touching the working tree\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"unsafe-paths\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"accept a patch that touches outside the working area\00", align 1
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"also apply the patch (use with --stat/--summary/--check)\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"3way\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"attempt three-way merge if a patch does not apply\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"build-fake-ancestor\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"build a temporary index based on embedded index information\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"paths are separated with NUL character\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"ensure at least <n> lines of context match\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"detect new or modified lines that have whitespace errors\00", align 1
@apply_option_parse_whitespace = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [20 x i8] c"ignore-space-change\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"ignore changes in whitespace when finding context\00", align 1
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@apply_option_parse_space_change = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [18 x i8] c"ignore-whitespace\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"apply the patch in reverse\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"unidiff-zero\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"don't expect at least one line of context\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.46 = private unnamed_addr constant [54 x i8] c"leave the rejected hunks in corresponding *.rej files\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"allow-overlap\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"allow overlapping hunks\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"be verbose\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"inaccurate-eof\00", align 1
@.str.51 = private unnamed_addr constant [66 x i8] c"tolerate incorrectly detected missing new-line at the end of file\00", align 1
@APPLY_OPT_INACCURATE_EOF = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [8 x i8] c"recount\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"do not trust the line counts in the hunk headers\00", align 1
@APPLY_OPT_RECOUNT = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"prepend <root> to all filenames\00", align 1
@apply_option_parse_directory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_parse_options(i32 %0, i8** %1, %struct.apply_state* %2, i32* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.apply_state*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca [31 x %struct.option], align 16
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store %struct.apply_state* %2, %struct.apply_state** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %14 = getelementptr inbounds [31 x %struct.option], [31 x %struct.option]* %13, i64 0, i64 0
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  %16 = load i32, i32* @OPTION_CALLBACK, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %15, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 1
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 2
  store i32 ptrtoint ([8 x i8]* @.str to i32), i32* %19, align 8
  %20 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 3
  %21 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %22 = ptrtoint %struct.apply_state* %21 to i32
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 4
  %24 = call i32* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 5
  %26 = call i32* @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 6
  %28 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.apply_state*
  store %struct.apply_state* %30, %struct.apply_state** %27, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 7
  %32 = load i32, i32* @apply_option_parse_exclude, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %34 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  %35 = load i32, i32* @OPTION_CALLBACK, align 4
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %34, align 8
  %37 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 1
  store i8* null, i8** %37, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 2
  store i32 ptrtoint ([8 x i8]* @.str.3 to i32), i32* %38, align 8
  %39 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 3
  %40 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %41 = ptrtoint %struct.apply_state* %40 to i32
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 4
  %43 = call i32* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %42, align 8
  %44 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 5
  %45 = call i32* @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32* %45, i32** %44, align 8
  %46 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 6
  %47 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.apply_state*
  store %struct.apply_state* %49, %struct.apply_state** %46, align 8
  %50 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 7
  %51 = load i32, i32* @apply_option_parse_include, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %53 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 0
  %54 = load i32, i32* @OPTION_CALLBACK, align 4
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %53, align 8
  %56 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 1
  store i8* inttoptr (i64 112 to i8*), i8** %56, align 8
  %57 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 3
  %59 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %60 = ptrtoint %struct.apply_state* %59 to i32
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 4
  %62 = call i32* @N_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32* %62, i32** %61, align 8
  %63 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 5
  %64 = call i32* @N_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  store i32* %64, i32** %63, align 8
  %65 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 6
  store %struct.apply_state* null, %struct.apply_state** %65, align 8
  %66 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 7
  %67 = load i32, i32* @apply_option_parse_p, align 4
  store i32 %67, i32* %66, align 8
  %68 = getelementptr inbounds %struct.option, %struct.option* %52, i64 1
  %69 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %70 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %69, i32 0, i32 0
  %71 = call i32* @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %68, i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %70, i32* %71)
  %72 = getelementptr inbounds %struct.option, %struct.option* %68, i64 1
  %73 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %74 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %73, i32 0, i32 1
  %75 = call i32* @N_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %72, i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* %74, i32* %75)
  %76 = getelementptr inbounds %struct.option, %struct.option* %72, i64 1
  call void @OPT_NOOP_NOARG(%struct.option* sret %76, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %77 = getelementptr inbounds %struct.option, %struct.option* %76, i64 1
  call void @OPT_NOOP_NOARG(%struct.option* sret %77, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.option, %struct.option* %77, i64 1
  %79 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %80 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %79, i32 0, i32 2
  %81 = call i32* @N_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %78, i8 signext 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32* %80, i32* %81)
  %82 = getelementptr inbounds %struct.option, %struct.option* %78, i64 1
  %83 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %84 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %83, i32 0, i32 3
  %85 = call i32* @N_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %82, i8 signext 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* %84, i32* %85)
  %86 = getelementptr inbounds %struct.option, %struct.option* %82, i64 1
  %87 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %88 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %87, i32 0, i32 4
  %89 = call i32* @N_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %86, i8 signext 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32* %88, i32* %89)
  %90 = getelementptr inbounds %struct.option, %struct.option* %86, i64 1
  %91 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %92 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %91, i32 0, i32 5
  %93 = call i32* @N_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %90, i8 signext 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32* %92, i32* %93)
  %94 = getelementptr inbounds %struct.option, %struct.option* %90, i64 1
  %95 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %96 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %95, i32 0, i32 6
  %97 = call i32* @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %94, i8 signext 78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32* %96, i32* %97)
  %98 = getelementptr inbounds %struct.option, %struct.option* %94, i64 1
  %99 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %100 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %99, i32 0, i32 7
  %101 = call i32* @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %98, i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32* %100, i32* %101)
  %102 = getelementptr inbounds %struct.option, %struct.option* %98, i64 1
  %103 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %104 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %103, i32 0, i32 18
  %105 = call i32* @N_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0))
  %106 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  call void @OPT_BOOL_F(%struct.option* sret %102, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32* %104, i32* %105, i32 %106)
  %107 = getelementptr inbounds %struct.option, %struct.option* %102, i64 1
  %108 = load i32*, i32** %10, align 8
  %109 = call i32* @N_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %107, i8 signext 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32* %108, i32* %109)
  %110 = getelementptr inbounds %struct.option, %struct.option* %107, i64 1
  %111 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %112 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %111, i32 0, i32 8
  %113 = call i32* @N_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %110, i8 signext 51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32* %112, i32* %113)
  %114 = getelementptr inbounds %struct.option, %struct.option* %110, i64 1
  %115 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %116 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %115, i32 0, i32 17
  %117 = call i32* @N_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0))
  call void @OPT_FILENAME(%struct.option* sret %114, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32* %116, i32* %117)
  %118 = getelementptr inbounds %struct.option, %struct.option* %114, i64 1
  %119 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %120 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %119, i32 0, i32 16
  %121 = call i32* @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0))
  call void @OPT_SET_INT(%struct.option* sret %118, i8 signext 122, i32* null, i32* %120, i32* %121, i8 signext 0)
  %122 = getelementptr inbounds %struct.option, %struct.option* %118, i64 1
  %123 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %124 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %123, i32 0, i32 15
  %125 = call i32* @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0))
  call void @OPT_INTEGER(%struct.option* sret %122, i8 signext 67, i32* null, i32* %124, i32* %125)
  %126 = getelementptr inbounds %struct.option, %struct.option* %122, i64 1
  %127 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 0
  %128 = load i32, i32* @OPTION_CALLBACK, align 4
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %127, align 8
  %130 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 1
  store i8* null, i8** %130, align 8
  %131 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 2
  store i32 ptrtoint ([11 x i8]* @.str.35 to i32), i32* %131, align 8
  %132 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 3
  %133 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %134 = ptrtoint %struct.apply_state* %133 to i32
  store i32 %134, i32* %132, align 4
  %135 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 4
  %136 = call i32* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  store i32* %136, i32** %135, align 8
  %137 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 5
  %138 = call i32* @N_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.37, i64 0, i64 0))
  store i32* %138, i32** %137, align 8
  %139 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 6
  store %struct.apply_state* null, %struct.apply_state** %139, align 8
  %140 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 7
  %141 = load i32, i32* @apply_option_parse_whitespace, align 4
  store i32 %141, i32* %140, align 8
  %142 = getelementptr inbounds %struct.option, %struct.option* %126, i64 1
  %143 = getelementptr inbounds %struct.option, %struct.option* %142, i32 0, i32 0
  %144 = load i32, i32* @OPTION_CALLBACK, align 4
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %143, align 8
  %146 = getelementptr inbounds %struct.option, %struct.option* %142, i32 0, i32 1
  store i8* null, i8** %146, align 8
  %147 = getelementptr inbounds %struct.option, %struct.option* %142, i32 0, i32 2
  store i32 ptrtoint ([20 x i8]* @.str.38 to i32), i32* %147, align 8
  %148 = getelementptr inbounds %struct.option, %struct.option* %142, i32 0, i32 3
  %149 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %150 = ptrtoint %struct.apply_state* %149 to i32
  store i32 %150, i32* %148, align 4
  %151 = getelementptr inbounds %struct.option, %struct.option* %142, i32 0, i32 4
  store i32* null, i32** %151, align 8
  %152 = getelementptr inbounds %struct.option, %struct.option* %142, i32 0, i32 5
  %153 = call i32* @N_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0))
  store i32* %153, i32** %152, align 8
  %154 = getelementptr inbounds %struct.option, %struct.option* %142, i32 0, i32 6
  %155 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to %struct.apply_state*
  store %struct.apply_state* %157, %struct.apply_state** %154, align 8
  %158 = getelementptr inbounds %struct.option, %struct.option* %142, i32 0, i32 7
  %159 = load i32, i32* @apply_option_parse_space_change, align 4
  store i32 %159, i32* %158, align 8
  %160 = getelementptr inbounds %struct.option, %struct.option* %142, i64 1
  %161 = getelementptr inbounds %struct.option, %struct.option* %160, i32 0, i32 0
  %162 = load i32, i32* @OPTION_CALLBACK, align 4
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %161, align 8
  %164 = getelementptr inbounds %struct.option, %struct.option* %160, i32 0, i32 1
  store i8* null, i8** %164, align 8
  %165 = getelementptr inbounds %struct.option, %struct.option* %160, i32 0, i32 2
  store i32 ptrtoint ([18 x i8]* @.str.40 to i32), i32* %165, align 8
  %166 = getelementptr inbounds %struct.option, %struct.option* %160, i32 0, i32 3
  %167 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %168 = ptrtoint %struct.apply_state* %167 to i32
  store i32 %168, i32* %166, align 4
  %169 = getelementptr inbounds %struct.option, %struct.option* %160, i32 0, i32 4
  store i32* null, i32** %169, align 8
  %170 = getelementptr inbounds %struct.option, %struct.option* %160, i32 0, i32 5
  %171 = call i32* @N_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0))
  store i32* %171, i32** %170, align 8
  %172 = getelementptr inbounds %struct.option, %struct.option* %160, i32 0, i32 6
  %173 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to %struct.apply_state*
  store %struct.apply_state* %175, %struct.apply_state** %172, align 8
  %176 = getelementptr inbounds %struct.option, %struct.option* %160, i32 0, i32 7
  %177 = load i32, i32* @apply_option_parse_space_change, align 4
  store i32 %177, i32* %176, align 8
  %178 = getelementptr inbounds %struct.option, %struct.option* %160, i64 1
  %179 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %180 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %179, i32 0, i32 9
  %181 = call i32* @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %178, i8 signext 82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i32* %180, i32* %181)
  %182 = getelementptr inbounds %struct.option, %struct.option* %178, i64 1
  %183 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %184 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %183, i32 0, i32 10
  %185 = call i32* @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %182, i8 signext 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i32* %184, i32* %185)
  %186 = getelementptr inbounds %struct.option, %struct.option* %182, i64 1
  %187 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %188 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %187, i32 0, i32 11
  %189 = call i32* @N_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %186, i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i32* %188, i32* %189)
  %190 = getelementptr inbounds %struct.option, %struct.option* %186, i64 1
  %191 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %192 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %191, i32 0, i32 12
  %193 = call i32* @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %190, i8 signext 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i32* %192, i32* %193)
  %194 = getelementptr inbounds %struct.option, %struct.option* %190, i64 1
  %195 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %196 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %195, i32 0, i32 14
  %197 = call i32* @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0))
  call void @OPT__VERBOSE(%struct.option* sret %194, i32* %196, i32* %197)
  %198 = getelementptr inbounds %struct.option, %struct.option* %194, i64 1
  %199 = load i32*, i32** %11, align 8
  %200 = call i32* @N_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.51, i64 0, i64 0))
  %201 = load i32, i32* @APPLY_OPT_INACCURATE_EOF, align 4
  call void @OPT_BIT(%struct.option* sret %198, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i32* %199, i32* %200, i32 %201)
  %202 = getelementptr inbounds %struct.option, %struct.option* %198, i64 1
  %203 = load i32*, i32** %11, align 8
  %204 = call i32* @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.53, i64 0, i64 0))
  %205 = load i32, i32* @APPLY_OPT_RECOUNT, align 4
  call void @OPT_BIT(%struct.option* sret %202, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i32* %203, i32* %204, i32 %205)
  %206 = getelementptr inbounds %struct.option, %struct.option* %202, i64 1
  %207 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 0
  %208 = load i32, i32* @OPTION_CALLBACK, align 4
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %207, align 8
  %210 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 1
  store i8* null, i8** %210, align 8
  %211 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 2
  store i32 ptrtoint ([10 x i8]* @.str.54 to i32), i32* %211, align 8
  %212 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 3
  %213 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %214 = ptrtoint %struct.apply_state* %213 to i32
  store i32 %214, i32* %212, align 4
  %215 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 4
  %216 = call i32* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0))
  store i32* %216, i32** %215, align 8
  %217 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 5
  %218 = call i32* @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0))
  store i32* %218, i32** %217, align 8
  %219 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 6
  store %struct.apply_state* null, %struct.apply_state** %219, align 8
  %220 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 7
  %221 = load i32, i32* @apply_option_parse_directory, align 4
  store i32 %221, i32* %220, align 8
  %222 = getelementptr inbounds %struct.option, %struct.option* %206, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %222)
  %223 = load i32, i32* %7, align 4
  %224 = load i8**, i8*** %8, align 8
  %225 = load %struct.apply_state*, %struct.apply_state** %9, align 8
  %226 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %225, i32 0, i32 13
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds [31 x %struct.option], [31 x %struct.option]* %13, i64 0, i64 0
  %229 = load i8**, i8*** %12, align 8
  %230 = call i32 @parse_options(i32 %223, i8** %224, i32 %227, %struct.option* %228, i8** %229, i32 0)
  ret i32 %230
}

declare dso_local i32* @N_(i8*) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, i8 signext, i8*, i32*, i32*) #1

declare dso_local void @OPT_NOOP_NOARG(%struct.option* sret, i32, i8*) #1

declare dso_local void @OPT_BOOL_F(%struct.option* sret, i32, i8*, i32*, i32*, i32) #1

declare dso_local void @OPT_FILENAME(%struct.option* sret, i32, i8*, i32*, i32*) #1

declare dso_local void @OPT_SET_INT(%struct.option* sret, i8 signext, i32*, i32*, i32*, i8 signext) #1

declare dso_local void @OPT_INTEGER(%struct.option* sret, i8 signext, i32*, i32*, i32*) #1

declare dso_local void @OPT__VERBOSE(%struct.option* sret, i32*, i32*) #1

declare dso_local void @OPT_BIT(%struct.option* sret, i32, i8*, i32*, i32*, i32) #1

declare dso_local void @OPT_END(%struct.option* sret, ...) #1

declare dso_local i32 @parse_options(i32, i8**, i32, %struct.option*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
