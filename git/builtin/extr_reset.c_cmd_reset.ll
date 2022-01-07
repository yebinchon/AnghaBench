; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reset.c_cmd_reset.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reset.c_cmd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.lock_file = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.object_id = type { i32 }
%struct.pathspec = type { i64 }
%struct.option = type { i8*, i8*, i8*, i32, i32, i32*, i32, i32 }
%struct.commit = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tree = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"be quiet, only report errors\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"reset HEAD and index\00", align 1
@MIXED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"reset only HEAD\00", align 1
@SOFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"reset HEAD, index and working tree\00", align 1
@HARD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@MERGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"reset HEAD but keep local changes\00", align 1
@KEEP = common dso_local global i32 0, align 4
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"recurse-submodules\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"control recursive updating of submodules\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@option_parse_recurse_submodules_worktree_updater = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"select hunks interactively\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"intent-to-add\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"record only the fact that removed paths will be added later\00", align 1
@git_reset_config = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"reset.quiet\00", align 1
@git_reset_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_10__* null, align 8
@.str.19 = private unnamed_addr constant [44 x i8] c"Failed to resolve '%s' as a valid revision.\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"Could not parse object '%s'.\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Failed to resolve '%s' as a valid tree.\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"--patch is incompatible with --{hard,mixed,soft}\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"patch-interactive\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"--patch=reset\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"--mixed with paths is deprecated; use 'git reset -- <paths>' instead.\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Cannot do %s reset with paths.\00", align 1
@reset_type_names = common dso_local global i8** null, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"%s reset is not allowed in a bare repository\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"-N can only be used with --mixed\00", align 1
@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@REFRESH_QUIET = common dso_local global i32 0, align 4
@REFRESH_IN_PORCELAIN = common dso_local global i32 0, align 4
@the_index = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.30 = private unnamed_addr constant [30 x i8] c"Unstaged changes after reset:\00", align 1
@advice_reset_quiet_warning = common dso_local global i64 0, align 8
@REFRESH_INDEX_DELAY_WARNING_IN_MS = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [174 x i8] c"\0AIt took %.2f seconds to enumerate unstaged changes after reset.  You can\0Ause '--quiet' to avoid this.  Set the config setting reset.quiet to true\0Ato make this the default.\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"Could not reset index file to revision '%s'.\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [32 x i8] c"Could not write new index file.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_reset(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.pathspec, align 8
  %16 = alloca i32, align 4
  %17 = alloca [10 x %struct.option], align 16
  %18 = alloca %struct.commit*, align 8
  %19 = alloca %struct.tree*, align 8
  %20 = alloca %struct.lock_file, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %25 = load i32, i32* @NONE, align 4
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %26 = getelementptr inbounds [10 x %struct.option], [10 x %struct.option]* %17, i64 0, i64 0
  %27 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  call void @OPT__QUIET(%struct.option* sret %26, i32* %10, i32 %27)
  %28 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %29 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @MIXED, align 4
  call void @OPT_SET_INT(%struct.option* sret %28, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 %29, i32 %30)
  %31 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %32 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i32, i32* @SOFT, align 4
  call void @OPT_SET_INT(%struct.option* sret %31, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %8, i32 %32, i32 %33)
  %34 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %35 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i32, i32* @HARD, align 4
  call void @OPT_SET_INT(%struct.option* sret %34, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %8, i32 %35, i32 %36)
  %37 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %38 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %39 = load i32, i32* @MERGE, align 4
  call void @OPT_SET_INT(%struct.option* sret %37, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %8, i32 %38, i32 %39)
  %40 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %41 = call i32 @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %42 = load i32, i32* @KEEP, align 4
  call void @OPT_SET_INT(%struct.option* sret %40, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %8, i32 %41, i32 %42)
  %43 = getelementptr inbounds %struct.option, %struct.option* %40, i64 1
  %44 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 0
  %45 = load i32, i32* @OPTION_CALLBACK, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %44, align 16
  %48 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 1
  store i8* null, i8** %48, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 3
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 4
  store i32 ptrtoint ([6 x i8]* @.str.11 to i32), i32* %51, align 4
  %52 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 5
  store i32* bitcast ([41 x i8]* @.str.12 to i32*), i32** %52, align 16
  %53 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 6
  %54 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 7
  %56 = load i32, i32* @option_parse_recurse_submodules_worktree_updater, align 4
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds %struct.option, %struct.option* %43, i64 1
  %58 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %57, i8 signext 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32* %11, i32 %58)
  %59 = getelementptr inbounds %struct.option, %struct.option* %57, i64 1
  %60 = call i32 @N_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %59, i8 signext 78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32* %16, i32 %60)
  %61 = getelementptr inbounds %struct.option, %struct.option* %59, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %61)
  %62 = load i32, i32* @git_reset_config, align 4
  %63 = call i32 @git_config(i32 %62, i32* null)
  %64 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32* %10)
  %65 = load i32, i32* %5, align 4
  %66 = load i8**, i8*** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds [10 x %struct.option], [10 x %struct.option]* %17, i64 0, i64 0
  %69 = load i32, i32* @git_reset_usage, align 4
  %70 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %71 = call i32 @parse_options(i32 %65, i8** %66, i8* %67, %struct.option* %68, i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @parse_args(%struct.pathspec* %15, i8** %72, i8* %73, i32 %74, i8** %13)
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %3
  %80 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.object_id* %14)
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %79, %3
  %83 = phi i1 [ false, %3 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @the_hash_algo, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @oidcpy(%struct.object_id* %14, i32* %90)
  br label %140

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %15, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %118, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %13, align 8
  %98 = call i64 @get_oid_committish(i8* %97, %struct.object_id* %14)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0))
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 (i8*, ...) @die(i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @the_repository, align 4
  %106 = call %struct.commit* @lookup_commit_reference(i32 %105, %struct.object_id* %14)
  store %struct.commit* %106, %struct.commit** %18, align 8
  %107 = load %struct.commit*, %struct.commit** %18, align 8
  %108 = icmp ne %struct.commit* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 (i8*, ...) @die(i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.commit*, %struct.commit** %18, align 8
  %115 = getelementptr inbounds %struct.commit, %struct.commit* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = call i32 @oidcpy(%struct.object_id* %14, i32* %116)
  br label %139

118:                                              ; preds = %92
  %119 = load i8*, i8** %13, align 8
  %120 = call i64 @get_oid_treeish(i8* %119, %struct.object_id* %14)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  %124 = load i8*, i8** %13, align 8
  %125 = call i32 (i8*, ...) @die(i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %122, %118
  %127 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %14)
  store %struct.tree* %127, %struct.tree** %19, align 8
  %128 = load %struct.tree*, %struct.tree** %19, align 8
  %129 = icmp ne %struct.tree* %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %132 = load i8*, i8** %13, align 8
  %133 = call i32 (i8*, ...) @die(i8* %131, i8* %132)
  br label %134

134:                                              ; preds = %130, %126
  %135 = load %struct.tree*, %struct.tree** %19, align 8
  %136 = getelementptr inbounds %struct.tree, %struct.tree* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = call i32 @oidcpy(%struct.object_id* %14, i32* %137)
  br label %139

139:                                              ; preds = %134, %113
  br label %140

140:                                              ; preds = %139, %87
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @NONE, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0))
  %149 = call i32 (i8*, ...) @die(i8* %148)
  br label %150

150:                                              ; preds = %147, %143
  %151 = call i32 @trace2_cmd_mode(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @run_add_interactive(i8* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), %struct.pathspec* %15)
  store i32 %153, i32* %4, align 4
  br label %366

154:                                              ; preds = %140
  %155 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %15, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @MIXED, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0))
  %164 = call i32 @warning(i8* %163)
  br label %179

165:                                              ; preds = %158
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @NONE, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  %171 = load i8**, i8*** @reset_type_names, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i8* @_(i8* %175)
  %177 = call i32 (i8*, ...) @die(i8* %170, i8* %176)
  br label %178

178:                                              ; preds = %169, %165
  br label %179

179:                                              ; preds = %178, %162
  br label %180

180:                                              ; preds = %179, %154
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @NONE, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i32, i32* @MIXED, align 4
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %184, %180
  %187 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %15, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = call i32 @trace2_cmd_mode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  br label %199

192:                                              ; preds = %186
  %193 = load i8**, i8*** @reset_type_names, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @trace2_cmd_mode(i8* %197)
  br label %199

199:                                              ; preds = %192, %190
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @SOFT, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %199
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @MIXED, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = call i64 (...) @get_git_work_tree()
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %207, %203
  %211 = call i32 (...) @setup_work_tree()
  br label %212

212:                                              ; preds = %210, %207, %199
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @MIXED, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %212
  %217 = call i64 (...) @is_bare_repository()
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %216
  %220 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0))
  %221 = load i8**, i8*** @reset_type_names, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @_(i8* %225)
  %227 = call i32 (i8*, ...) @die(i8* %220, i8* %226)
  br label %228

228:                                              ; preds = %219, %216, %212
  %229 = load i32, i32* %16, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %228
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @MIXED, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0))
  %237 = call i32 (i8*, ...) @die(i8* %236)
  br label %238

238:                                              ; preds = %235, %231, %228
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @SOFT, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* @KEEP, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242, %238
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @die_if_unmerged_cache(i32 %247)
  br label %249

249:                                              ; preds = %246, %242
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* @SOFT, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %333

253:                                              ; preds = %249
  %254 = bitcast %struct.lock_file* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %254, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %255 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %256 = call i32 @hold_locked_index(%struct.lock_file* %20, i32 %255)
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @MIXED, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %303

260:                                              ; preds = %253
  %261 = load i32, i32* %10, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = load i32, i32* @REFRESH_QUIET, align 4
  br label %267

265:                                              ; preds = %260
  %266 = load i32, i32* @REFRESH_IN_PORCELAIN, align 4
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi i32 [ %264, %263 ], [ %266, %265 ]
  store i32 %268, i32* %21, align 4
  %269 = load i32, i32* %16, align 4
  %270 = call i64 @read_from_tree(%struct.pathspec* %15, %struct.object_id* %14, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  store i32 1, i32* %4, align 4
  br label %366

273:                                              ; preds = %267
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @the_index, i32 0, i32 0), align 4
  %274 = load i32, i32* %10, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %302, label %276

276:                                              ; preds = %273
  %277 = call i64 (...) @get_git_work_tree()
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %302

279:                                              ; preds = %276
  %280 = call i32 (...) @getnanotime()
  store i32 %280, i32* %22, align 4
  %281 = load i32, i32* %21, align 4
  %282 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  %283 = call i32 @refresh_index(%struct.TYPE_9__* @the_index, i32 %281, i32* null, i32* null, i8* %282)
  %284 = call i32 (...) @getnanotime()
  %285 = load i32, i32* %22, align 4
  %286 = sub nsw i32 %284, %285
  %287 = sdiv i32 %286, 1000000
  store i32 %287, i32* %23, align 4
  %288 = load i64, i64* @advice_reset_quiet_warning, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %279
  %291 = load i32, i32* %23, align 4
  %292 = load i32, i32* @REFRESH_INDEX_DELAY_WARNING_IN_MS, align 4
  %293 = icmp sgt i32 %291, %292
  br i1 %293, label %294, label %301

294:                                              ; preds = %290
  %295 = call i8* @_(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.31, i64 0, i64 0))
  %296 = load i32, i32* %23, align 4
  %297 = sitofp i32 %296 to double
  %298 = fdiv double %297, 1.000000e+03
  %299 = fptosi double %298 to i32
  %300 = call i32 @printf(i8* %295, i32 %299)
  br label %301

301:                                              ; preds = %294, %290, %279
  br label %302

302:                                              ; preds = %301, %276, %273
  br label %325

303:                                              ; preds = %253
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* %10, align 4
  %306 = call i32 @reset_index(%struct.object_id* %14, i32 %304, i32 %305)
  store i32 %306, i32* %24, align 4
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* @KEEP, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %317

310:                                              ; preds = %303
  %311 = load i32, i32* %24, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %310
  %314 = load i32, i32* @MIXED, align 4
  %315 = load i32, i32* %10, align 4
  %316 = call i32 @reset_index(%struct.object_id* %14, i32 %314, i32 %315)
  store i32 %316, i32* %24, align 4
  br label %317

317:                                              ; preds = %313, %310, %303
  %318 = load i32, i32* %24, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i64 0, i64 0))
  %322 = load i8*, i8** %13, align 8
  %323 = call i32 (i8*, ...) @die(i8* %321, i8* %322)
  br label %324

324:                                              ; preds = %320, %317
  br label %325

325:                                              ; preds = %324, %302
  %326 = load i32, i32* @COMMIT_LOCK, align 4
  %327 = call i64 @write_locked_index(%struct.TYPE_9__* @the_index, %struct.lock_file* %20, i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %325
  %330 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0))
  %331 = call i32 (i8*, ...) @die(i8* %330)
  br label %332

332:                                              ; preds = %329, %325
  br label %333

333:                                              ; preds = %332, %249
  %334 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %15, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %357, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* %12, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %357, label %340

340:                                              ; preds = %337
  %341 = load i8*, i8** %13, align 8
  %342 = call i32 @reset_refs(i8* %341, %struct.object_id* %14)
  store i32 %342, i32* %9, align 4
  %343 = load i32, i32* %8, align 4
  %344 = load i32, i32* @HARD, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %356

346:                                              ; preds = %340
  %347 = load i32, i32* %9, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %346
  %350 = load i32, i32* %10, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* @the_repository, align 4
  %354 = call %struct.commit* @lookup_commit_reference(i32 %353, %struct.object_id* %14)
  %355 = call i32 @print_new_head_line(%struct.commit* %354)
  br label %356

356:                                              ; preds = %352, %349, %346, %340
  br label %357

357:                                              ; preds = %356, %337, %333
  %358 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %15, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %357
  %362 = load i32, i32* @the_repository, align 4
  %363 = call i32 @remove_branch_state(i32 %362, i32 0)
  br label %364

364:                                              ; preds = %361, %357
  %365 = load i32, i32* %9, align 4
  store i32 %365, i32* %4, align 4
  br label %366

366:                                              ; preds = %364, %272, %150
  %367 = load i32, i32* %4, align 4
  ret i32 %367
}

declare dso_local void @OPT__QUIET(%struct.option* sret, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local void @OPT_SET_INT(%struct.option* sret, i32, i8*, i32*, i32, i32) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, i8 signext, i8*, i32*, i32) #1

declare dso_local void @OPT_END(%struct.option* sret, ...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @parse_args(%struct.pathspec*, i8**, i8*, i32, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i64 @get_oid_committish(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i64 @get_oid_treeish(i8*, %struct.object_id*) #1

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #1

declare dso_local i32 @trace2_cmd_mode(i8*) #1

declare dso_local i32 @run_add_interactive(i8*, i8*, %struct.pathspec*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @get_git_work_tree(...) #1

declare dso_local i32 @setup_work_tree(...) #1

declare dso_local i64 @is_bare_repository(...) #1

declare dso_local i32 @die_if_unmerged_cache(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hold_locked_index(%struct.lock_file*, i32) #1

declare dso_local i64 @read_from_tree(%struct.pathspec*, %struct.object_id*, i32) #1

declare dso_local i32 @getnanotime(...) #1

declare dso_local i32 @refresh_index(%struct.TYPE_9__*, i32, i32*, i32*, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @reset_index(%struct.object_id*, i32, i32) #1

declare dso_local i64 @write_locked_index(%struct.TYPE_9__*, %struct.lock_file*, i32) #1

declare dso_local i32 @reset_refs(i8*, %struct.object_id*) #1

declare dso_local i32 @print_new_head_line(%struct.commit*) #1

declare dso_local i32 @remove_branch_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
