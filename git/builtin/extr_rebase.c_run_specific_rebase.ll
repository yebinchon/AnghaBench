; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_run_specific_rebase.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_run_specific_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.rebase_options = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i64, i64, %struct.TYPE_9__, i32*, i64, i64, i64, i64, i64, i64, %struct.TYPE_16__, %struct.TYPE_15__*, %struct.TYPE_13__*, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@REBASE_INTERACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"GIT_CHERRY_PICK_HELP\00", align 1
@resolvemsg = common dso_local global i8* null, align 8
@REBASE_INTERACTIVE_EXPLICIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"GIT_SEQUENCE_EDITOR\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@REBASE_AM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"GIT_DIR\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"state_dir\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"upstream_name\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"head_name\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"detached HEAD\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"orig_head\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"onto\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"onto_name\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"revisions\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"restrict_revision\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"GIT_QUIET\00", align 1
@REBASE_NO_QUIET = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"git_am_opt\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@REBASE_VERBOSE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"diffstat\00", align 1
@REBASE_DIFFSTAT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"force_rebase\00", align 1
@REBASE_FORCE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"switch_to\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"signoff\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--signoff\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"allow_rerere_autoupdate\00", align 1
@RERERE_AUTOUPDATE = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [20 x i8] c"--rerere-autoupdate\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"--no-rerere-autoupdate\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"keep_empty\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"autosquash\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"gpg_sign_opt\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"allow_empty_message\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"--allow-empty-message\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"rebase_merges\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"rebase_cousins\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"strategy\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"strategy_opts\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"rebase_root\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"squash_onto\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"git_format_patch_opt\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"GIT_SEQUENCE_EDITOR=:; export GIT_SEQUENCE_EDITOR; \00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"git-rebase--preserve-merges\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"git_rebase__preserve_merges\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"Unhandled rebase type %d\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c". git-sh-setup && . %s && %s\00", align 1
@RUN_USING_SHELL = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [12 x i8] c"stopped-sha\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Nothing to do\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rebase_options*, i32)* @run_specific_rebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_specific_rebase(%struct.rebase_options* %0, i32 %1) #0 {
  %3 = alloca %struct.rebase_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8*], align 16
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 8
  store %struct.rebase_options* %0, %struct.rebase_options** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %15 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %16 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %17 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @REBASE_INTERACTIVE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %2
  %22 = load i8*, i8** @resolvemsg, align 8
  %23 = call i32 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %22, i32 1)
  %24 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %25 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REBASE_INTERACTIVE_EXPLICIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = call i32 @setenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %32 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %33 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %32, i32 0, i32 15
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %21
  %35 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %36 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %41 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = call i8* @xstrdup(i8* %43)
  store i8* %44, i8** %11, align 8
  %45 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %46 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %51 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %39, %34
  %53 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @run_rebase_interactive(%struct.rebase_options* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %346

56:                                               ; preds = %2
  %57 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %58 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @REBASE_AM, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %64 = call i32 @run_am(%struct.rebase_options* %63)
  store i32 %64, i32* %8, align 4
  br label %346

65:                                               ; preds = %56
  %66 = call i32 (...) @get_git_dir()
  %67 = call i8* @absolute_path(i32 %66)
  %68 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %70 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  %73 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %74 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %73, i32 0, i32 4
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %78 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %77, i32 0, i32 28
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = icmp ne %struct.TYPE_11__* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %65
  %82 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %83 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %82, i32 0, i32 28
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = call i8* @oid_to_hex(i32* %86)
  br label %89

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %81
  %90 = phi i8* [ %87, %81 ], [ null, %88 ]
  %91 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  %92 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %93 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %98 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %97, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  br label %101

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i8* [ %99, %96 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), %100 ]
  %103 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  %104 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %105 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %104, i32 0, i32 27
  %106 = call i8* @oid_to_hex(i32* %105)
  %107 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %106)
  %108 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %109 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %108, i32 0, i32 26
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = icmp ne %struct.TYPE_13__* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %114 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %113, i32 0, i32 26
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = call i8* @oid_to_hex(i32* %117)
  br label %120

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %119, %112
  %121 = phi i8* [ %118, %112 ], [ null, %119 ]
  %122 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %121)
  %123 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %124 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %123, i32 0, i32 6
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %125)
  %127 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %128 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %127, i32 0, i32 7
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %129)
  %131 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %132 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %131, i32 0, i32 25
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = icmp ne %struct.TYPE_15__* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %120
  %136 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %137 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %136, i32 0, i32 25
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = call i8* @oid_to_hex(i32* %140)
  br label %143

142:                                              ; preds = %120
  br label %143

143:                                              ; preds = %142, %135
  %144 = phi i8* [ %141, %135 ], [ null, %142 ]
  %145 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %144)
  %146 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %147 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @REBASE_NO_QUIET, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %154 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* %153)
  %155 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %156 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %155, i32 0, i32 24
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @sq_quote_argv_pretty(%struct.strbuf* %7, i32 %158)
  %160 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %161)
  %163 = call i32 @strbuf_release(%struct.strbuf* %7)
  %164 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %165 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @REBASE_VERBOSE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %172 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* %171)
  %173 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %174 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @REBASE_DIFFSTAT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %181 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* %180)
  %182 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %183 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @REBASE_FORCE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %190 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %189)
  %191 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %192 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %191, i32 0, i32 8
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %143
  %196 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %197 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %196, i32 0, i32 8
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %195, %143
  %201 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %202 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %201, i32 0, i32 9
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %207 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %206, i32 0, i32 9
  %208 = load i8*, i8** %207, align 8
  br label %210

209:                                              ; preds = %200
  br label %210

210:                                              ; preds = %209, %205
  %211 = phi i8* [ %208, %205 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %209 ]
  %212 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %211)
  %213 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %214 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %213, i32 0, i32 23
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %219 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* %218)
  %220 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %221 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %220, i32 0, i32 10
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %210
  %225 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %226 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %225, i32 0, i32 10
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @RERERE_AUTOUPDATE, align 8
  %229 = icmp eq i64 %227, %228
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0)
  br label %233

232:                                              ; preds = %210
  br label %233

233:                                              ; preds = %232, %224
  %234 = phi i8* [ %231, %224 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %232 ]
  %235 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* %234)
  %236 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %237 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %236, i32 0, i32 22
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %242 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %241)
  %243 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %244 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %243, i32 0, i32 15
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %249 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* %248)
  %250 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %251 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %250, i32 0, i32 2
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* %252)
  %254 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %255 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %254, i32 0, i32 11
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %256)
  %258 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %259 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %258, i32 0, i32 21
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %264 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i8* %263)
  %265 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %266 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %265, i32 0, i32 20
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %271 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i8* %270)
  %272 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %273 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %272, i32 0, i32 19
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %278 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* %277)
  %279 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %280 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %279, i32 0, i32 12
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8* %281)
  %283 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %284 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %283, i32 0, i32 13
  %285 = load i8*, i8** %284, align 8
  %286 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* %285)
  %287 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %288 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %287, i32 0, i32 18
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %293 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* %292)
  %294 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %295 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %294, i32 0, i32 17
  %296 = load i32*, i32** %295, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %303

298:                                              ; preds = %233
  %299 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %300 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %299, i32 0, i32 17
  %301 = load i32*, i32** %300, align 8
  %302 = call i8* @oid_to_hex(i32* %301)
  br label %304

303:                                              ; preds = %233
  br label %304

304:                                              ; preds = %303, %298
  %305 = phi i8* [ %302, %298 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %303 ]
  %306 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* %305)
  %307 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %308 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %307, i32 0, i32 16
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @add_var(%struct.strbuf* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i8* %310)
  %312 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %313 = call i64 @is_interactive(%struct.rebase_options* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %304
  %316 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %317 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @REBASE_INTERACTIVE_EXPLICIT, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %315
  %323 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.42, i64 0, i64 0))
  %324 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %325 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %324, i32 0, i32 15
  store i64 0, i64* %325, align 8
  br label %326

326:                                              ; preds = %322, %315, %304
  %327 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %328 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  switch i32 %329, label %331 [
    i32 128, label %330
  ]

330:                                              ; preds = %326
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0), i8** %10, align 8
  br label %336

331:                                              ; preds = %326
  %332 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %333 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0), i32 %334)
  br label %336

336:                                              ; preds = %331, %330
  %337 = load i8*, i8** %9, align 8
  %338 = load i8*, i8** %10, align 8
  %339 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i64 0, i64 0), i8* %337, i8* %338)
  %340 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* %341, i8** %342, align 16
  %343 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %344 = load i32, i32* @RUN_USING_SHELL, align 4
  %345 = call i32 @run_command_v_opt(i8** %343, i32 %344)
  store i32 %345, i32* %8, align 4
  br label %346

346:                                              ; preds = %336, %62, %52
  %347 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %348 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %347, i32 0, i32 14
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %346
  br label %388

352:                                              ; preds = %346
  %353 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %354 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @REBASE_INTERACTIVE, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %352
  br label %387

359:                                              ; preds = %352
  %360 = load i32, i32* %8, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %359
  %363 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %364 = call i32 @state_dir_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), %struct.rebase_options* %363)
  %365 = call i32 @file_exists(i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %362
  %368 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %369 = call i32 @finish_rebase(%struct.rebase_options* %368)
  br label %370

370:                                              ; preds = %367, %362
  br label %386

371:                                              ; preds = %359
  %372 = load i32, i32* %8, align 4
  %373 = icmp eq i32 %372, 2
  br i1 %373, label %374, label %385

374:                                              ; preds = %371
  %375 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %375, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %376 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %377 = call i32 @apply_autostash(%struct.rebase_options* %376)
  %378 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %379 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %378, i32 0, i32 3
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %380)
  %382 = call i32 @remove_dir_recursively(%struct.strbuf* %12, i32 0)
  %383 = call i32 @strbuf_release(%struct.strbuf* %12)
  %384 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0))
  br label %385

385:                                              ; preds = %374, %371
  br label %386

386:                                              ; preds = %385, %370
  br label %387

387:                                              ; preds = %386, %358
  br label %388

388:                                              ; preds = %387, %351
  %389 = call i32 @strbuf_release(%struct.strbuf* %6)
  %390 = load i32, i32* %8, align 4
  %391 = icmp ne i32 %390, 0
  %392 = zext i1 %391 to i64
  %393 = select i1 %391, i32 -1, i32 0
  ret i32 %393
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @run_rebase_interactive(%struct.rebase_options*, i32) #2

declare dso_local i32 @run_am(%struct.rebase_options*) #2

declare dso_local i32 @add_var(%struct.strbuf*, i8*, i8*) #2

declare dso_local i8* @absolute_path(i32) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @sq_quote_argv_pretty(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @is_interactive(%struct.rebase_options*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @BUG(i8*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*) #2

declare dso_local i32 @run_command_v_opt(i8**, i32) #2

declare dso_local i32 @file_exists(i32) #2

declare dso_local i32 @state_dir_path(i8*, %struct.rebase_options*) #2

declare dso_local i32 @finish_rebase(%struct.rebase_options*) #2

declare dso_local i32 @apply_autostash(%struct.rebase_options*) #2

declare dso_local i32 @remove_dir_recursively(%struct.strbuf*, i32) #2

declare dso_local i32 @die(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
