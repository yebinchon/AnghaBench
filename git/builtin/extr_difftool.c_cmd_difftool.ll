; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_difftool.c_cmd_difftool.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_difftool.c_cmd_difftool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.option = type { i32 }

@cmd_difftool.difftool_cmd = internal global i8* null, align 8
@cmd_difftool.extcmd = internal global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"gui\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"use `diff.guitool` instead of `diff.tool`\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dir-diff\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"perform a full-directory diff\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"no-prompt\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"do not prompt before launching a diff tool\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"symlinks\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"use symlinks in dir-diff mode\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tool\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"use the specified diff tool\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"tool-help\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"print a list of diff tools that may be used with `--tool`\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"trust-exit-code\00", align 1
@trust_exit_code = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [82 x i8] c"make 'git-difftool' exit when an invoked diff tool returns a non - zero exit code\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"extcmd\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"specify a custom command for viewing diffs\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"no-index\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"passed to `diff`\00", align 1
@difftool_config = common dso_local global i32 0, align 4
@has_symlinks = common dso_local global i32 0, align 4
@builtin_difftool_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str.20 = private unnamed_addr constant [41 x i8] c"difftool requires worktree or --no-index\00", align 1
@GIT_DIR_ENVIRONMENT = common dso_local global i8* null, align 8
@GIT_WORK_TREE_ENVIRONMENT = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [43 x i8] c"--dir-diff is incompatible with --no-index\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"--gui, --tool and --extcmd are mutually exclusive\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"GIT_MERGETOOL_GUI\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GIT_DIFF_TOOL\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"no <tool> given for --tool=<tool>\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"GIT_DIFFTOOL_EXTCMD\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"no <cmd> given for --extcmd=<cmd>\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"GIT_DIFFTOOL_TRUST_EXIT_CODE\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_difftool(i32 %0, i8** %1, i8* %2) #0 {
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
  %14 = alloca [11 x %struct.option], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %14, i64 0, i64 0
  %16 = call i32* @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @OPT_BOOL(i8 signext 103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %16)
  %18 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %20 = call i32* @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @OPT_BOOL(i8 signext 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %9, i32* %20)
  %22 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %24 = call i32* @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %26 = call i32 @OPT_SET_INT_F(i8 signext 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %10, i32* %24, i32 0, i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %29 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %30 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @OPT_SET_INT_F(i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %10, i32* null, i32 1, i32 %31)
  %33 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %35 = call i32* @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %36 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %11, i32* %35)
  %37 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %39 = call i32* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %40 = call i32* @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %41 = call i32 @OPT_STRING(i8 signext 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** @cmd_difftool.difftool_cmd, i32* %39, i32* %40)
  %42 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.option, %struct.option* %38, i64 1
  %44 = call i32* @N_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0))
  %45 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %12, i32* %44)
  %46 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.option, %struct.option* %43, i64 1
  %48 = call i32* @N_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.14, i64 0, i64 0))
  %49 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32* @trust_exit_code, i32* %48)
  %50 = getelementptr inbounds %struct.option, %struct.option* %47, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.option, %struct.option* %47, i64 1
  %52 = call i32* @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %53 = call i32* @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0))
  %54 = call i32 @OPT_STRING(i8 signext 120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** @cmd_difftool.extcmd, i32* %52, i32* %53)
  %55 = getelementptr inbounds %struct.option, %struct.option* %51, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.option, %struct.option* %51, i64 1
  %57 = call i32* @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %58 = call i32 @OPT_ARGUMENT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32* %13, i32* %57)
  %59 = getelementptr inbounds %struct.option, %struct.option* %56, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.option, %struct.option* %56, i64 1
  %61 = call i32 (...) @OPT_END()
  %62 = getelementptr inbounds %struct.option, %struct.option* %60, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @difftool_config, align 4
  %64 = call i32 @git_config(i32 %63, i32* null)
  %65 = load i32, i32* @has_symlinks, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %14, i64 0, i64 0
  %70 = load i32, i32* @builtin_difftool_usage, align 4
  %71 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %72 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @parse_options(i32 %66, i8** %67, i8* %68, %struct.option* %69, i32 %70, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %3
  %78 = call i32 (...) @print_tool_help()
  store i32 %78, i32* %4, align 4
  br label %183

79:                                               ; preds = %3
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  %89 = call i32 @die(i32 %88)
  br label %90

90:                                               ; preds = %87, %82, %79
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = call i32 (...) @setup_work_tree()
  %95 = load i8*, i8** @GIT_DIR_ENVIRONMENT, align 8
  %96 = call i32 (...) @get_git_dir()
  %97 = call i8* @absolute_path(i32 %96)
  %98 = call i32 @setenv(i8* %95, i8* %97, i32 1)
  %99 = load i8*, i8** @GIT_WORK_TREE_ENVIRONMENT, align 8
  %100 = call i32 (...) @get_git_work_tree()
  %101 = call i8* @absolute_path(i32 %100)
  %102 = call i32 @setenv(i8* %99, i8* %101, i32 1)
  br label %110

103:                                              ; preds = %90
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0))
  %108 = call i32 @die(i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %93
  %111 = load i32, i32* %8, align 4
  %112 = load i8*, i8** @cmd_difftool.difftool_cmd, align 8
  %113 = icmp ne i8* %112, null
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = add nsw i32 %111, %116
  %118 = load i8*, i8** @cmd_difftool.extcmd, align 8
  %119 = icmp ne i8* %118, null
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = add nsw i32 %117, %122
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %110
  %126 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0))
  %127 = call i32 @die(i32 %126)
  br label %128

128:                                              ; preds = %125, %110
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @setenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 1)
  br label %148

133:                                              ; preds = %128
  %134 = load i8*, i8** @cmd_difftool.difftool_cmd, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i8*, i8** @cmd_difftool.difftool_cmd, align 8
  %138 = load i8, i8* %137, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i8*, i8** @cmd_difftool.difftool_cmd, align 8
  %142 = call i32 @setenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %141, i32 1)
  br label %146

143:                                              ; preds = %136
  %144 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0))
  %145 = call i32 @die(i32 %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %133
  br label %148

148:                                              ; preds = %147, %131
  %149 = load i8*, i8** @cmd_difftool.extcmd, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load i8*, i8** @cmd_difftool.extcmd, align 8
  %153 = load i8, i8* %152, align 1
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i8*, i8** @cmd_difftool.extcmd, align 8
  %157 = call i32 @setenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i8* %156, i32 1)
  br label %161

158:                                              ; preds = %151
  %159 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0))
  %160 = call i32 @die(i32 %159)
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %161, %148
  %163 = load i32, i32* @trust_exit_code, align 4
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)
  %167 = call i32 @setenv(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i8* %166, i32 1)
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %162
  %171 = load i8*, i8** @cmd_difftool.extcmd, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i8*, i8** %7, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load i8**, i8*** %6, align 8
  %176 = call i32 @run_dir_diff(i8* %171, i32 %172, i8* %173, i32 %174, i8** %175)
  store i32 %176, i32* %4, align 4
  br label %183

177:                                              ; preds = %162
  %178 = load i32, i32* %10, align 4
  %179 = load i8*, i8** %7, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load i8**, i8*** %6, align 8
  %182 = call i32 @run_file_diff(i32 %178, i8* %179, i32 %180, i8** %181)
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %177, %170, %77
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32*) #1

declare dso_local i32* @N_(i8*) #1

declare dso_local i32 @OPT_SET_INT_F(i8 signext, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i8**, i32*, i32*) #1

declare dso_local i32 @OPT_ARGUMENT(i8*, i32*, i32*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @print_tool_help(...) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @setup_work_tree(...) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i8* @absolute_path(i32) #1

declare dso_local i32 @get_git_dir(...) #1

declare dso_local i32 @get_git_work_tree(...) #1

declare dso_local i32 @run_dir_diff(i8*, i32, i8*, i32, i8**) #1

declare dso_local i32 @run_file_diff(i32, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
