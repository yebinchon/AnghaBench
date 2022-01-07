; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_config.c_cmd_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_config.c_cmd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.worktree = type { i32 }

@startup_info = common dso_local global %struct.TYPE_6__* null, align 8
@CONFIG_ENVIRONMENT = common dso_local global i32 0, align 4
@given_config_source = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@builtin_config_options = common dso_local global i32 0, align 4
@builtin_config_usage = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@use_global_config = common dso_local global i32 0, align 4
@use_system_config = common dso_local global i32 0, align 4
@use_local_config = common dso_local global i32 0, align 4
@use_worktree_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"only one config file at a time\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"--local can only be used inside a git repository\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"--blob can only be used inside a git repository\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"~/.gitconfig\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"$HOME not set\00", align 1
@R_OK = common dso_local global i32 0, align 4
@repository_format_worktree_config = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"config.worktree\00", align 1
@.str.8 = private unnamed_addr constant [185 x i8] c"--worktree cannot be used with multiple working trees unless the config\0Aextension worktreeConfig is enabled. Please read \22CONFIGURATION FILE\22\0Asection in \22git help worktree\22 for details\00", align 1
@respect_includes_opt = common dso_local global i32 0, align 4
@config_options = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@end_null = common dso_local global i64 0, align 8
@term = common dso_local global i8 0, align 1
@delim = common dso_local global i8 0, align 1
@key_delim = common dso_local global i8 0, align 1
@actions = common dso_local global i32 0, align 4
@ACTION_GET_COLOR = common dso_local global i32 0, align 4
@ACTION_GET_COLORBOOL = common dso_local global i32 0, align 4
@type = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [45 x i8] c"--get-color and variable type are incoherent\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"only one action at a time\00", align 1
@ACTION_GET = common dso_local global i32 0, align 4
@ACTION_SET = common dso_local global i32 0, align 4
@ACTION_SET_ALL = common dso_local global i32 0, align 4
@omit_values = common dso_local global i64 0, align 8
@ACTION_LIST = common dso_local global i32 0, align 4
@ACTION_GET_REGEXP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [57 x i8] c"--name-only is only applicable to --list or --get-regexp\00", align 1
@show_origin = common dso_local global i64 0, align 8
@ACTION_GET_ALL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [79 x i8] c"--show-origin is only applicable to --get, --get-all, --get-regexp, and --list\00", align 1
@default_value = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [38 x i8] c"--default is only applicable to --get\00", align 1
@PAGING_ACTIONS = common dso_local global i32 0, align 4
@show_all_config = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"unable to read config file '%s'\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"error processing config file(s)\00", align 1
@ACTION_EDIT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"not in a git directory\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"editing stdin is not supported\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"editing blobs is not supported\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [36 x i8] c"cannot create configuration file %s\00", align 1
@CONFIG_NOTHING_SET = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [111 x i8] c"cannot overwrite multiple values with a single value\0A       Use a regexp, --add or --replace-all to change %s.\00", align 1
@ACTION_ADD = common dso_local global i32 0, align 4
@CONFIG_REGEX_NONE = common dso_local global i8* null, align 8
@ACTION_REPLACE_ALL = common dso_local global i32 0, align 4
@do_all = common dso_local global i32 0, align 4
@show_keys = common dso_local global i32 0, align 4
@use_key_regexp = common dso_local global i32 0, align 4
@ACTION_GET_URLMATCH = common dso_local global i32 0, align 4
@ACTION_UNSET = common dso_local global i32 0, align 4
@ACTION_UNSET_ALL = common dso_local global i32 0, align 4
@ACTION_RENAME_SECTION = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [20 x i8] c"no such section: %s\00", align 1
@ACTION_REMOVE_SECTION = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"command line\00", align 1
@color_stdout_is_tty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_config(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.worktree**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @startup_info, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @CONFIG_ENVIRONMENT, align 4
  %26 = call i32 @getenv(i32 %25)
  %27 = call i8* @xstrdup_or_null(i32 %26)
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @builtin_config_options, align 4
  %32 = load i32, i32* @builtin_config_usage, align 4
  %33 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %34 = call i32 @parse_options(i32 %28, i8** %29, i8* %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @use_global_config, align 4
  %36 = load i32, i32* @use_system_config, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @use_local_config, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* @use_worktree_config, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %43 = icmp ne i8* %42, null
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = add nsw i32 %41, %46
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 2), align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = add nsw i32 %47, %52
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %3
  %56 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 (i32, ...) @error(i32 %56)
  %58 = call i32 (...) @usage_builtin_config()
  br label %59

59:                                               ; preds = %55, %3
  %60 = load i32, i32* @use_local_config, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 (i32, ...) @die(i32 %66)
  br label %68

68:                                               ; preds = %65, %62, %59
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 2), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %76 = call i32 (i32, ...) @die(i32 %75)
  br label %77

77:                                               ; preds = %74, %71, %68
  %78 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 1), align 8
  br label %85

85:                                               ; preds = %84, %80, %77
  %86 = load i32, i32* @use_global_config, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %85
  %89 = call i8* @expand_user_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i8* %89, i8** %10, align 8
  %90 = call i8* @xdg_config_home(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 (i32, ...) @die(i32 %94)
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* @R_OK, align 4
  %99 = call i64 @access_or_warn(i8* %97, i32 %98, i32 0)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load i8*, i8** %11, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* @R_OK, align 4
  %107 = call i64 @access_or_warn(i8* %105, i32 %106, i32 0)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %11, align 8
  store i8* %110, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @free(i8* %111)
  br label %117

113:                                              ; preds = %104, %101, %96
  %114 = load i8*, i8** %10, align 8
  store i8* %114, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @free(i8* %115)
  br label %117

117:                                              ; preds = %113, %109
  br label %175

118:                                              ; preds = %85
  %119 = load i32, i32* @use_system_config, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i8* (...) @git_etc_gitconfig()
  store i8* %122, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  br label %174

123:                                              ; preds = %118
  %124 = load i32, i32* @use_local_config, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i8* @git_pathdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %127, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  br label %173

128:                                              ; preds = %123
  %129 = load i32, i32* @use_worktree_config, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %128
  %132 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %132, %struct.worktree*** %12, align 8
  %133 = load i64, i64* @repository_format_worktree_config, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i8* @git_pathdup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i8* %136, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  br label %153

137:                                              ; preds = %131
  %138 = load %struct.worktree**, %struct.worktree*** %12, align 8
  %139 = getelementptr inbounds %struct.worktree*, %struct.worktree** %138, i64 0
  %140 = load %struct.worktree*, %struct.worktree** %139, align 8
  %141 = icmp ne %struct.worktree* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.worktree**, %struct.worktree*** %12, align 8
  %144 = getelementptr inbounds %struct.worktree*, %struct.worktree** %143, i64 1
  %145 = load %struct.worktree*, %struct.worktree** %144, align 8
  %146 = icmp ne %struct.worktree* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = call i32 @_(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.8, i64 0, i64 0))
  %149 = call i32 (i32, ...) @die(i32 %148)
  br label %152

150:                                              ; preds = %142, %137
  %151 = call i8* @git_pathdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %151, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  br label %152

152:                                              ; preds = %150, %147
  br label %153

153:                                              ; preds = %152, %135
  %154 = load %struct.worktree**, %struct.worktree*** %12, align 8
  %155 = call i32 @free_worktrees(%struct.worktree** %154)
  br label %172

156:                                              ; preds = %128
  %157 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %171

159:                                              ; preds = %156
  %160 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %161 = call i32 @is_absolute_path(i8* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %159
  %164 = load i8*, i8** %7, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i8*, i8** %7, align 8
  %168 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %169 = call i8* @prefix_filename(i8* %167, i8* %168)
  store i8* %169, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  br label %170

170:                                              ; preds = %166, %163, %159
  br label %171

171:                                              ; preds = %170, %156
  br label %172

172:                                              ; preds = %171, %153
  br label %173

173:                                              ; preds = %172, %126
  br label %174

174:                                              ; preds = %173, %121
  br label %175

175:                                              ; preds = %174, %117
  %176 = load i32, i32* @respect_includes_opt, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %180 = icmp ne i8* %179, null
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  store i32 %182, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_options, i32 0, i32 0), align 4
  br label %185

183:                                              ; preds = %175
  %184 = load i32, i32* @respect_includes_opt, align 4
  store i32 %184, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_options, i32 0, i32 0), align 4
  br label %185

185:                                              ; preds = %183, %178
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = call i32 (...) @get_git_common_dir()
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_options, i32 0, i32 2), align 4
  %190 = call i32 (...) @get_git_dir()
  store i32 %190, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_options, i32 0, i32 1), align 4
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i64, i64* @end_null, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i8 0, i8* @term, align 1
  store i8 10, i8* @delim, align 1
  store i8 10, i8* @key_delim, align 1
  br label %195

195:                                              ; preds = %194, %191
  %196 = load i32, i32* @actions, align 4
  %197 = load i32, i32* @ACTION_GET_COLOR, align 4
  %198 = load i32, i32* @ACTION_GET_COLORBOOL, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %195
  %203 = load i64, i64* @type, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %207 = call i32 (i32, ...) @error(i32 %206)
  %208 = call i32 (...) @usage_builtin_config()
  br label %209

209:                                              ; preds = %205, %202, %195
  %210 = load i32, i32* @actions, align 4
  %211 = call i64 @HAS_MULTI_BITS(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %215 = call i32 (i32, ...) @error(i32 %214)
  %216 = call i32 (...) @usage_builtin_config()
  br label %217

217:                                              ; preds = %213, %209
  %218 = load i32, i32* @actions, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %231

220:                                              ; preds = %217
  %221 = load i32, i32* %5, align 4
  switch i32 %221, label %228 [
    i32 1, label %222
    i32 2, label %224
    i32 3, label %226
  ]

222:                                              ; preds = %220
  %223 = load i32, i32* @ACTION_GET, align 4
  store i32 %223, i32* @actions, align 4
  br label %230

224:                                              ; preds = %220
  %225 = load i32, i32* @ACTION_SET, align 4
  store i32 %225, i32* @actions, align 4
  br label %230

226:                                              ; preds = %220
  %227 = load i32, i32* @ACTION_SET_ALL, align 4
  store i32 %227, i32* @actions, align 4
  br label %230

228:                                              ; preds = %220
  %229 = call i32 (...) @usage_builtin_config()
  br label %230

230:                                              ; preds = %228, %226, %224, %222
  br label %231

231:                                              ; preds = %230, %217
  %232 = load i64, i64* @omit_values, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %231
  %235 = load i32, i32* @actions, align 4
  %236 = load i32, i32* @ACTION_LIST, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %246, label %238

238:                                              ; preds = %234
  %239 = load i32, i32* @actions, align 4
  %240 = load i32, i32* @ACTION_GET_REGEXP, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  %243 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  %244 = call i32 (i32, ...) @error(i32 %243)
  %245 = call i32 (...) @usage_builtin_config()
  br label %246

246:                                              ; preds = %242, %238, %234, %231
  %247 = load i64, i64* @show_origin, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %264

249:                                              ; preds = %246
  %250 = load i32, i32* @actions, align 4
  %251 = load i32, i32* @ACTION_GET, align 4
  %252 = load i32, i32* @ACTION_GET_ALL, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @ACTION_GET_REGEXP, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @ACTION_LIST, align 4
  %257 = or i32 %255, %256
  %258 = and i32 %250, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %249
  %261 = call i32 @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.12, i64 0, i64 0))
  %262 = call i32 (i32, ...) @error(i32 %261)
  %263 = call i32 (...) @usage_builtin_config()
  br label %264

264:                                              ; preds = %260, %249, %246
  %265 = load i64, i64* @default_value, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = load i32, i32* @actions, align 4
  %269 = load i32, i32* @ACTION_GET, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %267
  %273 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %274 = call i32 (i32, ...) @error(i32 %273)
  %275 = call i32 (...) @usage_builtin_config()
  br label %276

276:                                              ; preds = %272, %267, %264
  %277 = load i32, i32* @actions, align 4
  %278 = load i32, i32* @PAGING_ACTIONS, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %276
  %282 = call i32 @setup_auto_pager(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %283

283:                                              ; preds = %281, %276
  %284 = load i32, i32* @actions, align 4
  %285 = load i32, i32* @ACTION_LIST, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %305

287:                                              ; preds = %283
  %288 = load i32, i32* %5, align 4
  %289 = call i32 @check_argc(i32 %288, i32 0, i32 0)
  %290 = load i32, i32* @show_all_config, align 4
  %291 = call i64 @config_with_options(i32 %290, i32* null, %struct.TYPE_7__* @given_config_source, %struct.TYPE_8__* @config_options)
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %287
  %294 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %298 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %299 = call i32 @die_errno(i32 %297, i8* %298)
  br label %303

300:                                              ; preds = %293
  %301 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %302 = call i32 (i32, ...) @die(i32 %301)
  br label %303

303:                                              ; preds = %300, %296
  br label %304

304:                                              ; preds = %303, %287
  br label %695

305:                                              ; preds = %283
  %306 = load i32, i32* @actions, align 4
  %307 = load i32, i32* @ACTION_EDIT, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %380

309:                                              ; preds = %305
  %310 = load i32, i32* %5, align 4
  %311 = call i32 @check_argc(i32 %310, i32 0, i32 0)
  %312 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %320, label %314

314:                                              ; preds = %309
  %315 = load i32, i32* %8, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %319 = call i32 (i32, ...) @die(i32 %318)
  br label %320

320:                                              ; preds = %317, %314, %309
  %321 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 1), align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %325 = call i32 (i32, ...) @die(i32 %324)
  br label %326

326:                                              ; preds = %323, %320
  %327 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 2), align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  %331 = call i32 (i32, ...) @die(i32 %330)
  br label %332

332:                                              ; preds = %329, %326
  %333 = load i32, i32* @git_default_config, align 4
  %334 = call i32 @git_config(i32 %333, i32* null)
  %335 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %339 = call i8* @xstrdup(i8* %338)
  br label %342

340:                                              ; preds = %332
  %341 = call i8* @git_pathdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %342

342:                                              ; preds = %340, %337
  %343 = phi i8* [ %339, %337 ], [ %341, %340 ]
  store i8* %343, i8** %13, align 8
  %344 = load i32, i32* @use_global_config, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %375

346:                                              ; preds = %342
  %347 = load i8*, i8** %13, align 8
  %348 = load i32, i32* @O_CREAT, align 4
  %349 = load i32, i32* @O_EXCL, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @O_WRONLY, align 4
  %352 = or i32 %350, %351
  %353 = call i32 @open(i8* %347, i32 %352, i32 438)
  store i32 %353, i32* %14, align 4
  %354 = load i32, i32* %14, align 4
  %355 = icmp sge i32 %354, 0
  br i1 %355, label %356, label %365

356:                                              ; preds = %346
  %357 = call i8* (...) @default_user_config()
  store i8* %357, i8** %15, align 8
  %358 = load i32, i32* %14, align 4
  %359 = load i8*, i8** %15, align 8
  %360 = call i32 @write_str_in_full(i32 %358, i8* %359)
  %361 = load i8*, i8** %15, align 8
  %362 = call i32 @free(i8* %361)
  %363 = load i32, i32* %14, align 4
  %364 = call i32 @close(i32 %363)
  br label %374

365:                                              ; preds = %346
  %366 = load i64, i64* @errno, align 8
  %367 = load i64, i64* @EEXIST, align 8
  %368 = icmp ne i64 %366, %367
  br i1 %368, label %369, label %373

369:                                              ; preds = %365
  %370 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0))
  %371 = load i8*, i8** %13, align 8
  %372 = call i32 @die_errno(i32 %370, i8* %371)
  br label %373

373:                                              ; preds = %369, %365
  br label %374

374:                                              ; preds = %373, %356
  br label %375

375:                                              ; preds = %374, %342
  %376 = load i8*, i8** %13, align 8
  %377 = call i32 @launch_editor(i8* %376, i32* null, i32* null)
  %378 = load i8*, i8** %13, align 8
  %379 = call i32 @free(i8* %378)
  br label %694

380:                                              ; preds = %305
  %381 = load i32, i32* @actions, align 4
  %382 = load i32, i32* @ACTION_SET, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %414

384:                                              ; preds = %380
  %385 = call i32 (...) @check_write()
  %386 = load i32, i32* %5, align 4
  %387 = call i32 @check_argc(i32 %386, i32 2, i32 2)
  %388 = load i8**, i8*** %6, align 8
  %389 = getelementptr inbounds i8*, i8** %388, i64 0
  %390 = load i8*, i8** %389, align 8
  %391 = load i8**, i8*** %6, align 8
  %392 = getelementptr inbounds i8*, i8** %391, i64 1
  %393 = load i8*, i8** %392, align 8
  %394 = call i8* @normalize_value(i8* %390, i8* %393)
  store i8* %394, i8** %9, align 8
  %395 = load i8*, i8** %9, align 8
  %396 = call i32 @UNLEAK(i8* %395)
  %397 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %398 = load i8**, i8*** %6, align 8
  %399 = getelementptr inbounds i8*, i8** %398, i64 0
  %400 = load i8*, i8** %399, align 8
  %401 = load i8*, i8** %9, align 8
  %402 = call i32 @git_config_set_in_file_gently(i8* %397, i8* %400, i8* %401)
  store i32 %402, i32* %16, align 4
  %403 = load i32, i32* %16, align 4
  %404 = load i32, i32* @CONFIG_NOTHING_SET, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %384
  %407 = call i32 @_(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.20, i64 0, i64 0))
  %408 = load i8**, i8*** %6, align 8
  %409 = getelementptr inbounds i8*, i8** %408, i64 0
  %410 = load i8*, i8** %409, align 8
  %411 = call i32 (i32, ...) @error(i32 %407, i8* %410)
  br label %412

412:                                              ; preds = %406, %384
  %413 = load i32, i32* %16, align 4
  store i32 %413, i32* %4, align 4
  br label %696

414:                                              ; preds = %380
  %415 = load i32, i32* @actions, align 4
  %416 = load i32, i32* @ACTION_SET_ALL, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %440

418:                                              ; preds = %414
  %419 = call i32 (...) @check_write()
  %420 = load i32, i32* %5, align 4
  %421 = call i32 @check_argc(i32 %420, i32 2, i32 3)
  %422 = load i8**, i8*** %6, align 8
  %423 = getelementptr inbounds i8*, i8** %422, i64 0
  %424 = load i8*, i8** %423, align 8
  %425 = load i8**, i8*** %6, align 8
  %426 = getelementptr inbounds i8*, i8** %425, i64 1
  %427 = load i8*, i8** %426, align 8
  %428 = call i8* @normalize_value(i8* %424, i8* %427)
  store i8* %428, i8** %9, align 8
  %429 = load i8*, i8** %9, align 8
  %430 = call i32 @UNLEAK(i8* %429)
  %431 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %432 = load i8**, i8*** %6, align 8
  %433 = getelementptr inbounds i8*, i8** %432, i64 0
  %434 = load i8*, i8** %433, align 8
  %435 = load i8*, i8** %9, align 8
  %436 = load i8**, i8*** %6, align 8
  %437 = getelementptr inbounds i8*, i8** %436, i64 2
  %438 = load i8*, i8** %437, align 8
  %439 = call i32 @git_config_set_multivar_in_file_gently(i8* %431, i8* %434, i8* %435, i8* %438, i32 0)
  store i32 %439, i32* %4, align 4
  br label %696

440:                                              ; preds = %414
  %441 = load i32, i32* @actions, align 4
  %442 = load i32, i32* @ACTION_ADD, align 4
  %443 = icmp eq i32 %441, %442
  br i1 %443, label %444, label %464

444:                                              ; preds = %440
  %445 = call i32 (...) @check_write()
  %446 = load i32, i32* %5, align 4
  %447 = call i32 @check_argc(i32 %446, i32 2, i32 2)
  %448 = load i8**, i8*** %6, align 8
  %449 = getelementptr inbounds i8*, i8** %448, i64 0
  %450 = load i8*, i8** %449, align 8
  %451 = load i8**, i8*** %6, align 8
  %452 = getelementptr inbounds i8*, i8** %451, i64 1
  %453 = load i8*, i8** %452, align 8
  %454 = call i8* @normalize_value(i8* %450, i8* %453)
  store i8* %454, i8** %9, align 8
  %455 = load i8*, i8** %9, align 8
  %456 = call i32 @UNLEAK(i8* %455)
  %457 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %458 = load i8**, i8*** %6, align 8
  %459 = getelementptr inbounds i8*, i8** %458, i64 0
  %460 = load i8*, i8** %459, align 8
  %461 = load i8*, i8** %9, align 8
  %462 = load i8*, i8** @CONFIG_REGEX_NONE, align 8
  %463 = call i32 @git_config_set_multivar_in_file_gently(i8* %457, i8* %460, i8* %461, i8* %462, i32 0)
  store i32 %463, i32* %4, align 4
  br label %696

464:                                              ; preds = %440
  %465 = load i32, i32* @actions, align 4
  %466 = load i32, i32* @ACTION_REPLACE_ALL, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %490

468:                                              ; preds = %464
  %469 = call i32 (...) @check_write()
  %470 = load i32, i32* %5, align 4
  %471 = call i32 @check_argc(i32 %470, i32 2, i32 3)
  %472 = load i8**, i8*** %6, align 8
  %473 = getelementptr inbounds i8*, i8** %472, i64 0
  %474 = load i8*, i8** %473, align 8
  %475 = load i8**, i8*** %6, align 8
  %476 = getelementptr inbounds i8*, i8** %475, i64 1
  %477 = load i8*, i8** %476, align 8
  %478 = call i8* @normalize_value(i8* %474, i8* %477)
  store i8* %478, i8** %9, align 8
  %479 = load i8*, i8** %9, align 8
  %480 = call i32 @UNLEAK(i8* %479)
  %481 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %482 = load i8**, i8*** %6, align 8
  %483 = getelementptr inbounds i8*, i8** %482, i64 0
  %484 = load i8*, i8** %483, align 8
  %485 = load i8*, i8** %9, align 8
  %486 = load i8**, i8*** %6, align 8
  %487 = getelementptr inbounds i8*, i8** %486, i64 2
  %488 = load i8*, i8** %487, align 8
  %489 = call i32 @git_config_set_multivar_in_file_gently(i8* %481, i8* %484, i8* %485, i8* %488, i32 1)
  store i32 %489, i32* %4, align 4
  br label %696

490:                                              ; preds = %464
  %491 = load i32, i32* @actions, align 4
  %492 = load i32, i32* @ACTION_GET, align 4
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %494, label %504

494:                                              ; preds = %490
  %495 = load i32, i32* %5, align 4
  %496 = call i32 @check_argc(i32 %495, i32 1, i32 2)
  %497 = load i8**, i8*** %6, align 8
  %498 = getelementptr inbounds i8*, i8** %497, i64 0
  %499 = load i8*, i8** %498, align 8
  %500 = load i8**, i8*** %6, align 8
  %501 = getelementptr inbounds i8*, i8** %500, i64 1
  %502 = load i8*, i8** %501, align 8
  %503 = call i32 @get_value(i8* %499, i8* %502)
  store i32 %503, i32* %4, align 4
  br label %696

504:                                              ; preds = %490
  %505 = load i32, i32* @actions, align 4
  %506 = load i32, i32* @ACTION_GET_ALL, align 4
  %507 = icmp eq i32 %505, %506
  br i1 %507, label %508, label %518

508:                                              ; preds = %504
  store i32 1, i32* @do_all, align 4
  %509 = load i32, i32* %5, align 4
  %510 = call i32 @check_argc(i32 %509, i32 1, i32 2)
  %511 = load i8**, i8*** %6, align 8
  %512 = getelementptr inbounds i8*, i8** %511, i64 0
  %513 = load i8*, i8** %512, align 8
  %514 = load i8**, i8*** %6, align 8
  %515 = getelementptr inbounds i8*, i8** %514, i64 1
  %516 = load i8*, i8** %515, align 8
  %517 = call i32 @get_value(i8* %513, i8* %516)
  store i32 %517, i32* %4, align 4
  br label %696

518:                                              ; preds = %504
  %519 = load i32, i32* @actions, align 4
  %520 = load i32, i32* @ACTION_GET_REGEXP, align 4
  %521 = icmp eq i32 %519, %520
  br i1 %521, label %522, label %532

522:                                              ; preds = %518
  store i32 1, i32* @show_keys, align 4
  store i32 1, i32* @use_key_regexp, align 4
  store i32 1, i32* @do_all, align 4
  %523 = load i32, i32* %5, align 4
  %524 = call i32 @check_argc(i32 %523, i32 1, i32 2)
  %525 = load i8**, i8*** %6, align 8
  %526 = getelementptr inbounds i8*, i8** %525, i64 0
  %527 = load i8*, i8** %526, align 8
  %528 = load i8**, i8*** %6, align 8
  %529 = getelementptr inbounds i8*, i8** %528, i64 1
  %530 = load i8*, i8** %529, align 8
  %531 = call i32 @get_value(i8* %527, i8* %530)
  store i32 %531, i32* %4, align 4
  br label %696

532:                                              ; preds = %518
  %533 = load i32, i32* @actions, align 4
  %534 = load i32, i32* @ACTION_GET_URLMATCH, align 4
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %536, label %546

536:                                              ; preds = %532
  %537 = load i32, i32* %5, align 4
  %538 = call i32 @check_argc(i32 %537, i32 2, i32 2)
  %539 = load i8**, i8*** %6, align 8
  %540 = getelementptr inbounds i8*, i8** %539, i64 0
  %541 = load i8*, i8** %540, align 8
  %542 = load i8**, i8*** %6, align 8
  %543 = getelementptr inbounds i8*, i8** %542, i64 1
  %544 = load i8*, i8** %543, align 8
  %545 = call i32 @get_urlmatch(i8* %541, i8* %544)
  store i32 %545, i32* %4, align 4
  br label %696

546:                                              ; preds = %532
  %547 = load i32, i32* @actions, align 4
  %548 = load i32, i32* @ACTION_UNSET, align 4
  %549 = icmp eq i32 %547, %548
  br i1 %549, label %550, label %571

550:                                              ; preds = %546
  %551 = call i32 (...) @check_write()
  %552 = load i32, i32* %5, align 4
  %553 = call i32 @check_argc(i32 %552, i32 1, i32 2)
  %554 = load i32, i32* %5, align 4
  %555 = icmp eq i32 %554, 2
  br i1 %555, label %556, label %565

556:                                              ; preds = %550
  %557 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %558 = load i8**, i8*** %6, align 8
  %559 = getelementptr inbounds i8*, i8** %558, i64 0
  %560 = load i8*, i8** %559, align 8
  %561 = load i8**, i8*** %6, align 8
  %562 = getelementptr inbounds i8*, i8** %561, i64 1
  %563 = load i8*, i8** %562, align 8
  %564 = call i32 @git_config_set_multivar_in_file_gently(i8* %557, i8* %560, i8* null, i8* %563, i32 0)
  store i32 %564, i32* %4, align 4
  br label %696

565:                                              ; preds = %550
  %566 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %567 = load i8**, i8*** %6, align 8
  %568 = getelementptr inbounds i8*, i8** %567, i64 0
  %569 = load i8*, i8** %568, align 8
  %570 = call i32 @git_config_set_in_file_gently(i8* %566, i8* %569, i8* null)
  store i32 %570, i32* %4, align 4
  br label %696

571:                                              ; preds = %546
  %572 = load i32, i32* @actions, align 4
  %573 = load i32, i32* @ACTION_UNSET_ALL, align 4
  %574 = icmp eq i32 %572, %573
  br i1 %574, label %575, label %587

575:                                              ; preds = %571
  %576 = call i32 (...) @check_write()
  %577 = load i32, i32* %5, align 4
  %578 = call i32 @check_argc(i32 %577, i32 1, i32 2)
  %579 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %580 = load i8**, i8*** %6, align 8
  %581 = getelementptr inbounds i8*, i8** %580, i64 0
  %582 = load i8*, i8** %581, align 8
  %583 = load i8**, i8*** %6, align 8
  %584 = getelementptr inbounds i8*, i8** %583, i64 1
  %585 = load i8*, i8** %584, align 8
  %586 = call i32 @git_config_set_multivar_in_file_gently(i8* %579, i8* %582, i8* null, i8* %585, i32 1)
  store i32 %586, i32* %4, align 4
  br label %696

587:                                              ; preds = %571
  %588 = load i32, i32* @actions, align 4
  %589 = load i32, i32* @ACTION_RENAME_SECTION, align 4
  %590 = icmp eq i32 %588, %589
  br i1 %590, label %591, label %617

591:                                              ; preds = %587
  %592 = call i32 (...) @check_write()
  %593 = load i32, i32* %5, align 4
  %594 = call i32 @check_argc(i32 %593, i32 2, i32 2)
  %595 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %596 = load i8**, i8*** %6, align 8
  %597 = getelementptr inbounds i8*, i8** %596, i64 0
  %598 = load i8*, i8** %597, align 8
  %599 = load i8**, i8*** %6, align 8
  %600 = getelementptr inbounds i8*, i8** %599, i64 1
  %601 = load i8*, i8** %600, align 8
  %602 = call i32 @git_config_rename_section_in_file(i8* %595, i8* %598, i8* %601)
  store i32 %602, i32* %17, align 4
  %603 = load i32, i32* %17, align 4
  %604 = icmp slt i32 %603, 0
  br i1 %604, label %605, label %607

605:                                              ; preds = %591
  %606 = load i32, i32* %17, align 4
  store i32 %606, i32* %4, align 4
  br label %696

607:                                              ; preds = %591
  %608 = load i32, i32* %17, align 4
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %616

610:                                              ; preds = %607
  %611 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %612 = load i8**, i8*** %6, align 8
  %613 = getelementptr inbounds i8*, i8** %612, i64 0
  %614 = load i8*, i8** %613, align 8
  %615 = call i32 (i32, ...) @die(i32 %611, i8* %614)
  br label %616

616:                                              ; preds = %610, %607
  br label %683

617:                                              ; preds = %587
  %618 = load i32, i32* @actions, align 4
  %619 = load i32, i32* @ACTION_REMOVE_SECTION, align 4
  %620 = icmp eq i32 %618, %619
  br i1 %620, label %621, label %644

621:                                              ; preds = %617
  %622 = call i32 (...) @check_write()
  %623 = load i32, i32* %5, align 4
  %624 = call i32 @check_argc(i32 %623, i32 1, i32 1)
  %625 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @given_config_source, i32 0, i32 0), align 8
  %626 = load i8**, i8*** %6, align 8
  %627 = getelementptr inbounds i8*, i8** %626, i64 0
  %628 = load i8*, i8** %627, align 8
  %629 = call i32 @git_config_rename_section_in_file(i8* %625, i8* %628, i8* null)
  store i32 %629, i32* %18, align 4
  %630 = load i32, i32* %18, align 4
  %631 = icmp slt i32 %630, 0
  br i1 %631, label %632, label %634

632:                                              ; preds = %621
  %633 = load i32, i32* %18, align 4
  store i32 %633, i32* %4, align 4
  br label %696

634:                                              ; preds = %621
  %635 = load i32, i32* %18, align 4
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %643

637:                                              ; preds = %634
  %638 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %639 = load i8**, i8*** %6, align 8
  %640 = getelementptr inbounds i8*, i8** %639, i64 0
  %641 = load i8*, i8** %640, align 8
  %642 = call i32 (i32, ...) @die(i32 %638, i8* %641)
  br label %643

643:                                              ; preds = %637, %634
  br label %682

644:                                              ; preds = %617
  %645 = load i32, i32* @actions, align 4
  %646 = load i32, i32* @ACTION_GET_COLOR, align 4
  %647 = icmp eq i32 %645, %646
  br i1 %647, label %648, label %658

648:                                              ; preds = %644
  %649 = load i32, i32* %5, align 4
  %650 = call i32 @check_argc(i32 %649, i32 1, i32 2)
  %651 = load i8**, i8*** %6, align 8
  %652 = getelementptr inbounds i8*, i8** %651, i64 0
  %653 = load i8*, i8** %652, align 8
  %654 = load i8**, i8*** %6, align 8
  %655 = getelementptr inbounds i8*, i8** %654, i64 1
  %656 = load i8*, i8** %655, align 8
  %657 = call i32 @get_color(i8* %653, i8* %656)
  br label %681

658:                                              ; preds = %644
  %659 = load i32, i32* @actions, align 4
  %660 = load i32, i32* @ACTION_GET_COLORBOOL, align 4
  %661 = icmp eq i32 %659, %660
  br i1 %661, label %662, label %680

662:                                              ; preds = %658
  %663 = load i32, i32* %5, align 4
  %664 = call i32 @check_argc(i32 %663, i32 1, i32 2)
  %665 = load i32, i32* %5, align 4
  %666 = icmp eq i32 %665, 2
  br i1 %666, label %667, label %672

667:                                              ; preds = %662
  %668 = load i8**, i8*** %6, align 8
  %669 = getelementptr inbounds i8*, i8** %668, i64 1
  %670 = load i8*, i8** %669, align 8
  %671 = call i32 @git_config_bool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* %670)
  store i32 %671, i32* @color_stdout_is_tty, align 4
  br label %672

672:                                              ; preds = %667, %662
  %673 = load i8**, i8*** %6, align 8
  %674 = getelementptr inbounds i8*, i8** %673, i64 0
  %675 = load i8*, i8** %674, align 8
  %676 = load i32, i32* %5, align 4
  %677 = icmp eq i32 %676, 2
  %678 = zext i1 %677 to i32
  %679 = call i32 @get_colorbool(i8* %675, i32 %678)
  store i32 %679, i32* %4, align 4
  br label %696

680:                                              ; preds = %658
  br label %681

681:                                              ; preds = %680, %648
  br label %682

682:                                              ; preds = %681, %643
  br label %683

683:                                              ; preds = %682, %616
  br label %684

684:                                              ; preds = %683
  br label %685

685:                                              ; preds = %684
  br label %686

686:                                              ; preds = %685
  br label %687

687:                                              ; preds = %686
  br label %688

688:                                              ; preds = %687
  br label %689

689:                                              ; preds = %688
  br label %690

690:                                              ; preds = %689
  br label %691

691:                                              ; preds = %690
  br label %692

692:                                              ; preds = %691
  br label %693

693:                                              ; preds = %692
  br label %694

694:                                              ; preds = %693, %375
  br label %695

695:                                              ; preds = %694, %304
  store i32 0, i32* %4, align 4
  br label %696

696:                                              ; preds = %695, %672, %632, %605, %575, %565, %556, %536, %522, %508, %494, %468, %444, %418, %412
  %697 = load i32, i32* %4, align 4
  ret i32 %697
}

declare dso_local i8* @xstrdup_or_null(i32) #1

declare dso_local i32 @getenv(i32) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @usage_builtin_config(...) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @expand_user_path(i8*, i32) #1

declare dso_local i8* @xdg_config_home(i8*) #1

declare dso_local i64 @access_or_warn(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @git_etc_gitconfig(...) #1

declare dso_local i8* @git_pathdup(i8*) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i8* @prefix_filename(i8*, i8*) #1

declare dso_local i32 @get_git_common_dir(...) #1

declare dso_local i32 @get_git_dir(...) #1

declare dso_local i64 @HAS_MULTI_BITS(i32) #1

declare dso_local i32 @setup_auto_pager(i8*, i32) #1

declare dso_local i32 @check_argc(i32, i32, i32) #1

declare dso_local i64 @config_with_options(i32, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i8* @default_user_config(...) #1

declare dso_local i32 @write_str_in_full(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @launch_editor(i8*, i32*, i32*) #1

declare dso_local i32 @check_write(...) #1

declare dso_local i8* @normalize_value(i8*, i8*) #1

declare dso_local i32 @UNLEAK(i8*) #1

declare dso_local i32 @git_config_set_in_file_gently(i8*, i8*, i8*) #1

declare dso_local i32 @git_config_set_multivar_in_file_gently(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @get_value(i8*, i8*) #1

declare dso_local i32 @get_urlmatch(i8*, i8*) #1

declare dso_local i32 @git_config_rename_section_in_file(i8*, i8*, i8*) #1

declare dso_local i32 @get_color(i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @get_colorbool(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
