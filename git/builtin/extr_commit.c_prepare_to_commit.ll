; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_prepare_to_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_prepare_to_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.diff_flags = type { i32, i32 }
%struct.argv_array = type { i32 }
%struct.commit = type { i32 }
%struct.wt_status = type { i32, i32, i32*, i32, i64 }
%struct.stat = type { i32 }
%struct.pretty_print_context = type { i8*, i32 }
%struct.ident_split = type { i64, i64, i64, i64 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@cleanup_mode = common dso_local global i64 0, align 8
@COMMIT_MSG_CLEANUP_NONE = common dso_local global i64 0, align 8
@no_verify = common dso_local global i32 0, align 4
@use_editor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"pre-commit\00", align 1
@squash_message = common dso_local global i8* null, align 8
@use_message = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"squash! \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"could not lookup commit %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"squash! %s\0A\0A\00", align 1
@have_option_m = common dso_local global i64 0, align 8
@fixup_message = common dso_local global i8* null, align 8
@message = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@logfile = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"(reading log message from standard input)\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"could not read log from standard input\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"could not read log file '%s'\00", align 1
@use_message_buffer = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"fixup! %s\0A\0A\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"could not read SQUASH_MSG\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"squash\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"could not read MERGE_MSG\00", align 1
@COMMIT_MSG_CLEANUP_SCISSORS = common dso_local global i64 0, align 8
@template_file = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"could not read '%s'\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@whence = common dso_local global i64 0, align 8
@FROM_MERGE = common dso_local global i64 0, align 8
@FROM_CHERRY_PICK = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"CHERRY_PICK_HEAD\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"could not open '%s'\00", align 1
@signoff = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [32 x i8] c"could not write commit template\00", align 1
@auto_comment_line_char = common dso_local global i64 0, align 8
@IDENT_STRICT = common dso_local global i32 0, align 4
@include_status = common dso_local global i64 0, align 8
@FROM_COMMIT = common dso_local global i64 0, align 8
@GIT_COLOR_NORMAL = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [113 x i8] c"\0AIt looks like you may be committing a merge.\0AIf this is not correct, please remove the file\0A\09%s\0Aand try again.\0A\00", align 1
@.str.23 = private unnamed_addr constant [119 x i8] c"\0AIt looks like you may be committing a cherry-pick.\0AIf this is not correct, please remove the file\0A\09%s\0Aand try again.\0A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@COMMIT_MSG_CLEANUP_ALL = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [133 x i8] c"Please enter the commit message for your changes. Lines starting\0Awith '%c' will be ignored, and an empty message aborts the commit.\0A\00", align 1
@comment_line_char = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [171 x i8] c"Please enter the commit message for your changes. Lines starting\0Awith '%c' will be kept; you may remove them yourself if you want to.\0AAn empty message aborts the commit.\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"%sAuthor:    %.*s <%.*s>\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"%sDate:      %s\00", align 1
@NORMAL = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [25 x i8] c"%sCommitter: %.*s <%.*s>\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@active_nr = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"Cannot read index\00", align 1
@amend = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"HEAD^1\00", align 1
@active_cache = common dso_local global i32* null, align 8
@DIFF_FLAGS_INIT = common dso_local global %struct.diff_flags zeroinitializer, align 4
@ignore_submodule_arg = common dso_local global i8* null, align 8
@.str.34 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@allow_empty = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@empty_amend_advice = common dso_local global i8* null, align 8
@empty_cherry_pick_advice = common dso_local global i8* null, align 8
@sequencer_in_use = common dso_local global i32 0, align 4
@empty_cherry_pick_advice_single = common dso_local global i8* null, align 8
@empty_cherry_pick_advice_multi = common dso_local global i8* null, align 8
@.str.35 = private unnamed_addr constant [21 x i8] c"Error building trees\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"prepare-commit-msg\00", align 1
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [18 x i8] c"GIT_INDEX_FILE=%s\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"Please supply the message using either -m or -F option.\0A\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"commit-msg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.commit*, %struct.wt_status*, %struct.strbuf*)* @prepare_to_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_to_commit(i8* %0, i8* %1, %struct.commit* %2, %struct.wt_status* %3, %struct.strbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.wt_status*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca %struct.strbuf, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.strbuf, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.pretty_print_context, align 8
  %22 = alloca %struct.commit*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.pretty_print_context, align 8
  %25 = alloca %struct.commit*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.ident_split, align 8
  %30 = alloca %struct.ident_split, align 8
  %31 = alloca %struct.object_id, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.diff_flags, align 4
  %36 = alloca %struct.argv_array, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.commit* %2, %struct.commit** %9, align 8
  store %struct.wt_status* %3, %struct.wt_status** %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  %37 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %38 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %39 = load i64, i64* @cleanup_mode, align 8
  %40 = load i64, i64* @COMMIT_MSG_CLEANUP_NONE, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %43 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %44 = call i32 @determine_author_info(%struct.strbuf* %43)
  %45 = load i32, i32* @no_verify, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %5
  %48 = load i64, i64* @use_editor, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 (i64, i8*, i8*, i32, ...) @run_commit_hook(i64 %48, i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %679

53:                                               ; preds = %47, %5
  %54 = load i8*, i8** @squash_message, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load i8*, i8** @use_message, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i8*, i8** @use_message, align 8
  %61 = load i8*, i8** @squash_message, align 8
  %62 = call i32 @strcmp(i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = call i32 @strbuf_addstr(%struct.strbuf* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %81

66:                                               ; preds = %59, %56
  %67 = bitcast %struct.pretty_print_context* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %67, i8 0, i64 16, i1 false)
  %68 = load i8*, i8** @squash_message, align 8
  %69 = call %struct.commit* @lookup_commit_reference_by_name(i8* %68)
  store %struct.commit* %69, %struct.commit** %22, align 8
  %70 = load %struct.commit*, %struct.commit** %22, align 8
  %71 = icmp ne %struct.commit* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i8*, i8** @squash_message, align 8
  %75 = call i32 (i8*, ...) @die(i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %66
  %77 = call i8* (...) @get_commit_output_encoding()
  %78 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %21, i32 0, i32 0
  store i8* %77, i8** %78, align 8
  %79 = load %struct.commit*, %struct.commit** %22, align 8
  %80 = call i32 @format_commit_message(%struct.commit* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.strbuf* %15, %struct.pretty_print_context* %21)
  br label %81

81:                                               ; preds = %76, %64
  br label %82

82:                                               ; preds = %81, %53
  %83 = load i64, i64* @have_option_m, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i8*, i8** @fixup_message, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 @strbuf_addbuf(%struct.strbuf* %15, i32* @message)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %257

90:                                               ; preds = %85, %82
  %91 = load i8*, i8** @logfile, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load i8*, i8** @logfile, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %93
  %98 = call i64 @isatty(i32 0)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32*, i32** @stderr, align 8
  %102 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %103 = call i32 @fprintf(i32* %101, i8* %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = call i64 @strbuf_read(%struct.strbuf* %15, i32 0, i32 0)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %109 = call i32 (i8*, ...) @die_errno(i8* %108)
  br label %110

110:                                              ; preds = %107, %104
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %256

111:                                              ; preds = %93, %90
  %112 = load i8*, i8** @logfile, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i8*, i8** @logfile, align 8
  %116 = call i64 @strbuf_read_file(%struct.strbuf* %15, i8* %115, i32 0)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %120 = load i8*, i8** @logfile, align 8
  %121 = call i32 (i8*, ...) @die_errno(i8* %119, i8* %120)
  br label %122

122:                                              ; preds = %118, %114
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %255

123:                                              ; preds = %111
  %124 = load i8*, i8** @use_message, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load i32, i32* @use_message_buffer, align 4
  %128 = call i8* @strstr(i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i8* %128, i8** %23, align 8
  %129 = load i8*, i8** %23, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** %23, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = call i8* @skip_blank_lines(i8* %133)
  %135 = call i32 @strbuf_addstr(%struct.strbuf* %15, i8* %134)
  br label %136

136:                                              ; preds = %131, %126
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %16, align 8
  %137 = load i8*, i8** @use_message, align 8
  store i8* %137, i8** %17, align 8
  br label %254

138:                                              ; preds = %123
  %139 = load i8*, i8** @fixup_message, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %161

141:                                              ; preds = %138
  %142 = bitcast %struct.pretty_print_context* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %142, i8 0, i64 16, i1 false)
  %143 = load i8*, i8** @fixup_message, align 8
  %144 = call %struct.commit* @lookup_commit_reference_by_name(i8* %143)
  store %struct.commit* %144, %struct.commit** %25, align 8
  %145 = load %struct.commit*, %struct.commit** %25, align 8
  %146 = icmp ne %struct.commit* %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i8*, i8** @fixup_message, align 8
  %150 = call i32 (i8*, ...) @die(i8* %148, i8* %149)
  br label %151

151:                                              ; preds = %147, %141
  %152 = call i8* (...) @get_commit_output_encoding()
  %153 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %24, i32 0, i32 0
  store i8* %152, i8** %153, align 8
  %154 = load %struct.commit*, %struct.commit** %25, align 8
  %155 = call i32 @format_commit_message(%struct.commit* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), %struct.strbuf* %15, %struct.pretty_print_context* %24)
  %156 = load i64, i64* @have_option_m, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call i32 @strbuf_addbuf(%struct.strbuf* %15, i32* @message)
  br label %160

160:                                              ; preds = %158, %151
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %253

161:                                              ; preds = %138
  %162 = load i32, i32* @the_repository, align 4
  %163 = call i8* @git_path_merge_msg(i32 %162)
  %164 = call i32 @stat(i8* %163, %struct.stat* %12)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %212, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @the_repository, align 4
  %168 = call i8* @git_path_squash_msg(i32 %167)
  %169 = call i32 @stat(i8* %168, %struct.stat* %12)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* @the_repository, align 4
  %173 = call i8* @git_path_squash_msg(i32 %172)
  %174 = call i64 @strbuf_read_file(%struct.strbuf* %15, i8* %173, i32 0)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %178 = call i32 (i8*, ...) @die_errno(i8* %177)
  br label %179

179:                                              ; preds = %176, %171
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  br label %181

180:                                              ; preds = %166
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %16, align 8
  br label %181

181:                                              ; preds = %180, %179
  %182 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %26, align 8
  %184 = load i32, i32* @the_repository, align 4
  %185 = call i8* @git_path_merge_msg(i32 %184)
  %186 = call i64 @strbuf_read_file(%struct.strbuf* %15, i8* %185, i32 0)
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %190 = call i32 (i8*, ...) @die_errno(i8* %189)
  br label %191

191:                                              ; preds = %188, %181
  %192 = load i64, i64* @cleanup_mode, align 8
  %193 = load i64, i64* @COMMIT_MSG_CLEANUP_SCISSORS, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %26, align 8
  %199 = add i64 %197, %198
  %200 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %26, align 8
  %203 = sub i64 %201, %202
  %204 = call i64 @wt_status_locate_end(i64 %199, i64 %203)
  %205 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %26, align 8
  %208 = sub i64 %206, %207
  %209 = icmp ult i64 %204, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %195
  store i32 1, i32* %20, align 4
  br label %211

211:                                              ; preds = %210, %195, %191
  br label %252

212:                                              ; preds = %161
  %213 = load i32, i32* @the_repository, align 4
  %214 = call i8* @git_path_squash_msg(i32 %213)
  %215 = call i32 @stat(i8* %214, %struct.stat* %12)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %212
  %218 = load i32, i32* @the_repository, align 4
  %219 = call i8* @git_path_squash_msg(i32 %218)
  %220 = call i64 @strbuf_read_file(%struct.strbuf* %15, i8* %219, i32 0)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %224 = call i32 (i8*, ...) @die_errno(i8* %223)
  br label %225

225:                                              ; preds = %222, %217
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  br label %251

226:                                              ; preds = %212
  %227 = load i8*, i8** @template_file, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load i8*, i8** @template_file, align 8
  %231 = call i64 @strbuf_read_file(%struct.strbuf* %15, i8* %230, i32 0)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %235 = load i8*, i8** @template_file, align 8
  %236 = call i32 (i8*, ...) @die_errno(i8* %234, i8* %235)
  br label %237

237:                                              ; preds = %233, %229
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %16, align 8
  store i32 0, i32* %18, align 4
  br label %250

238:                                              ; preds = %226
  %239 = load i64, i64* @whence, align 8
  %240 = load i64, i64* @FROM_MERGE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %16, align 8
  br label %249

243:                                              ; preds = %238
  %244 = load i64, i64* @whence, align 8
  %245 = load i64, i64* @FROM_CHERRY_PICK, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8** %17, align 8
  br label %248

248:                                              ; preds = %247, %243
  br label %249

249:                                              ; preds = %248, %242
  br label %250

250:                                              ; preds = %249, %237
  br label %251

251:                                              ; preds = %250, %225
  br label %252

252:                                              ; preds = %251, %211
  br label %253

253:                                              ; preds = %252, %160
  br label %254

254:                                              ; preds = %253, %136
  br label %255

255:                                              ; preds = %254, %122
  br label %256

256:                                              ; preds = %255, %110
  br label %257

257:                                              ; preds = %256, %88
  %258 = load i8*, i8** @squash_message, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8** %17, align 8
  br label %261

261:                                              ; preds = %260, %257
  %262 = call i32 (...) @git_path_commit_editmsg()
  %263 = call i32* @fopen_for_writing(i32 %262)
  %264 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %265 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %264, i32 0, i32 2
  store i32* %263, i32** %265, align 8
  %266 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %267 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = icmp eq i32* %268, null
  br i1 %269, label %270, label %274

270:                                              ; preds = %261
  %271 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %272 = call i32 (...) @git_path_commit_editmsg()
  %273 = call i32 (i8*, ...) @die_errno(i8* %271, i32 %272)
  br label %274

274:                                              ; preds = %270, %261
  %275 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %276 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  store i32 %277, i32* %19, align 4
  %278 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %279 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %278, i32 0, i32 0
  store i32 1, i32* %279, align 8
  %280 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %281 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %280, i32 0, i32 4
  store i64 0, i64* %281, align 8
  %282 = load i32, i32* %18, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %274
  %285 = call i32 @strbuf_stripspace(%struct.strbuf* %15, i32 0)
  br label %286

286:                                              ; preds = %284, %274
  %287 = load i64, i64* @signoff, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @ignore_non_trailer(i64 %291, i64 %293)
  %295 = call i32 @append_signoff(%struct.strbuf* %15, i32 %294, i32 0)
  br label %296

296:                                              ; preds = %289, %286
  %297 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %302 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = call i64 @fwrite(i64 %298, i32 1, i64 %300, i32* %303)
  %305 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ult i64 %304, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %296
  %309 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0))
  %310 = call i32 (i8*, ...) @die_errno(i8* %309)
  br label %311

311:                                              ; preds = %308, %296
  %312 = load i64, i64* @auto_comment_line_char, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = call i32 @adjust_comment_line_char(%struct.strbuf* %15)
  br label %316

316:                                              ; preds = %314, %311
  %317 = call i32 @strbuf_release(%struct.strbuf* %15)
  %318 = load i32, i32* @IDENT_STRICT, align 4
  %319 = call i8* @git_committer_info(i32 %318)
  %320 = call i32 @strbuf_addstr(%struct.strbuf* %13, i8* %319)
  %321 = load i64, i64* @use_editor, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %503

323:                                              ; preds = %316
  %324 = load i64, i64* @include_status, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %503

326:                                              ; preds = %323
  store i32 0, i32* %27, align 4
  %327 = load i64, i64* @whence, align 8
  %328 = load i64, i64* @FROM_COMMIT, align 8
  %329 = icmp ne i64 %327, %328
  br i1 %329, label %330, label %366

330:                                              ; preds = %326
  %331 = load i64, i64* @cleanup_mode, align 8
  %332 = load i64, i64* @COMMIT_MSG_CLEANUP_SCISSORS, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %330
  %335 = load i32, i32* %20, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %334
  %338 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %339 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %338, i32 0, i32 2
  %340 = load i32*, i32** %339, align 8
  %341 = call i32 @wt_status_add_cut_line(i32* %340)
  br label %342

342:                                              ; preds = %337, %334, %330
  %343 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %344 = load i32, i32* @GIT_COLOR_NORMAL, align 4
  %345 = load i64, i64* @whence, align 8
  %346 = load i64, i64* @FROM_MERGE, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = call i8* @_(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.22, i64 0, i64 0))
  br label %352

350:                                              ; preds = %342
  %351 = call i8* @_(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.23, i64 0, i64 0))
  br label %352

352:                                              ; preds = %350, %348
  %353 = phi i8* [ %349, %348 ], [ %351, %350 ]
  %354 = load i64, i64* @whence, align 8
  %355 = load i64, i64* @FROM_MERGE, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = load i32, i32* @the_repository, align 4
  %359 = call i8* @git_path_merge_head(i32 %358)
  br label %363

360:                                              ; preds = %352
  %361 = load i32, i32* @the_repository, align 4
  %362 = call i8* @git_path_cherry_pick_head(i32 %361)
  br label %363

363:                                              ; preds = %360, %357
  %364 = phi i8* [ %359, %357 ], [ %362, %360 ]
  %365 = call i32 (%struct.wt_status*, i32, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %343, i32 %344, i8* %353, i8* %364)
  br label %366

366:                                              ; preds = %363, %326
  %367 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %368 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %367, i32 0, i32 2
  %369 = load i32*, i32** %368, align 8
  %370 = call i32 @fprintf(i32* %369, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %371 = load i64, i64* @cleanup_mode, align 8
  %372 = load i64, i64* @COMMIT_MSG_CLEANUP_ALL, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %380

374:                                              ; preds = %366
  %375 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %376 = load i32, i32* @GIT_COLOR_NORMAL, align 4
  %377 = call i8* @_(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.25, i64 0, i64 0))
  %378 = load i32, i32* @comment_line_char, align 4
  %379 = call i32 @status_printf(%struct.wt_status* %375, i32 %376, i8* %377, i32 %378)
  br label %404

380:                                              ; preds = %366
  %381 = load i64, i64* @cleanup_mode, align 8
  %382 = load i64, i64* @COMMIT_MSG_CLEANUP_SCISSORS, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %397

384:                                              ; preds = %380
  %385 = load i64, i64* @whence, align 8
  %386 = load i64, i64* @FROM_COMMIT, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %388, label %396

388:                                              ; preds = %384
  %389 = load i32, i32* %20, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %396, label %391

391:                                              ; preds = %388
  %392 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %393 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %392, i32 0, i32 2
  %394 = load i32*, i32** %393, align 8
  %395 = call i32 @wt_status_add_cut_line(i32* %394)
  br label %396

396:                                              ; preds = %391, %388, %384
  br label %403

397:                                              ; preds = %380
  %398 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %399 = load i32, i32* @GIT_COLOR_NORMAL, align 4
  %400 = call i8* @_(i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.26, i64 0, i64 0))
  %401 = load i32, i32* @comment_line_char, align 4
  %402 = call i32 @status_printf(%struct.wt_status* %398, i32 %399, i8* %400, i32 %401)
  br label %403

403:                                              ; preds = %397, %396
  br label %404

404:                                              ; preds = %403, %374
  %405 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %406 = call i32 @assert_split_ident(%struct.ident_split* %30, %struct.strbuf* %405)
  %407 = call i32 @assert_split_ident(%struct.ident_split* %29, %struct.strbuf* %13)
  %408 = call i64 @ident_cmp(%struct.ident_split* %30, %struct.ident_split* %29)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %436

410:                                              ; preds = %404
  %411 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %412 = load i32, i32* @GIT_COLOR_NORMAL, align 4
  %413 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  %414 = load i32, i32* %27, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %27, align 4
  %416 = icmp ne i32 %414, 0
  %417 = zext i1 %416 to i64
  %418 = select i1 %416, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  %419 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %30, i32 0, i32 3
  %420 = load i64, i64* %419, align 8
  %421 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %30, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = sub nsw i64 %420, %422
  %424 = trunc i64 %423 to i32
  %425 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %30, i32 0, i32 2
  %426 = load i64, i64* %425, align 8
  %427 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %30, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %30, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = sub nsw i64 %428, %430
  %432 = trunc i64 %431 to i32
  %433 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %30, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = call i32 (%struct.wt_status*, i32, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %411, i32 %412, i8* %413, i8* %418, i32 %424, i64 %426, i32 %432, i64 %434)
  br label %436

436:                                              ; preds = %410, %404
  %437 = call i64 (...) @author_date_is_interesting()
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %452

439:                                              ; preds = %436
  %440 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %441 = load i32, i32* @GIT_COLOR_NORMAL, align 4
  %442 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %443 = load i32, i32* %27, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %27, align 4
  %445 = icmp ne i32 %443, 0
  %446 = zext i1 %445 to i64
  %447 = select i1 %445, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  %448 = load i32, i32* @NORMAL, align 4
  %449 = call i32 @DATE_MODE(i32 %448)
  %450 = call i32 @show_ident_date(%struct.ident_split* %30, i32 %449)
  %451 = call i32 (%struct.wt_status*, i32, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %440, i32 %441, i8* %442, i8* %447, i32 %450)
  br label %452

452:                                              ; preds = %439, %436
  %453 = call i32 (...) @committer_ident_sufficiently_given()
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %481, label %455

455:                                              ; preds = %452
  %456 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %457 = load i32, i32* @GIT_COLOR_NORMAL, align 4
  %458 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  %459 = load i32, i32* %27, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %27, align 4
  %461 = icmp ne i32 %459, 0
  %462 = zext i1 %461 to i64
  %463 = select i1 %461, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  %464 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %29, i32 0, i32 3
  %465 = load i64, i64* %464, align 8
  %466 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %29, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = sub nsw i64 %465, %467
  %469 = trunc i64 %468 to i32
  %470 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %29, i32 0, i32 2
  %471 = load i64, i64* %470, align 8
  %472 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %29, i32 0, i32 1
  %473 = load i64, i64* %472, align 8
  %474 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %29, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = sub nsw i64 %473, %475
  %477 = trunc i64 %476 to i32
  %478 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %29, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = call i32 (%struct.wt_status*, i32, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %456, i32 %457, i8* %458, i8* %463, i32 %469, i64 %471, i32 %477, i64 %479)
  br label %481

481:                                              ; preds = %455, %452
  %482 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %483 = load i32, i32* @GIT_COLOR_NORMAL, align 4
  %484 = call i32 (%struct.wt_status*, i32, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %482, i32 %483, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0))
  %485 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %486 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  store i32 %487, i32* %28, align 4
  %488 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %489 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %488, i32 0, i32 1
  store i32 0, i32* %489, align 4
  %490 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %491 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %490, i32 0, i32 2
  %492 = load i32*, i32** %491, align 8
  %493 = load i8*, i8** %7, align 8
  %494 = load i8*, i8** %8, align 8
  %495 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %496 = call i32 @run_status(i32* %492, i8* %493, i8* %494, i32 1, %struct.wt_status* %495)
  store i32 %496, i32* %14, align 4
  %497 = load i32, i32* %28, align 4
  %498 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %499 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %498, i32 0, i32 1
  store i32 %497, i32* %499, align 4
  %500 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %501 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %500, i32 0, i32 3
  %502 = call i32 @string_list_clear(i32* %501, i32 1)
  br label %562

503:                                              ; preds = %323, %316
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8** %32, align 8
  %504 = load i32, i32* @active_nr, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %512, label %506

506:                                              ; preds = %503
  %507 = call i64 (...) @read_cache()
  %508 = icmp slt i64 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %506
  %510 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  %511 = call i32 (i8*, ...) @die(i8* %510)
  br label %512

512:                                              ; preds = %509, %506, %503
  %513 = load i64, i64* @amend, align 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %512
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8** %32, align 8
  br label %516

516:                                              ; preds = %515, %512
  %517 = load i8*, i8** %32, align 8
  %518 = call i64 @get_oid(i8* %517, %struct.object_id* %31)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %546

520:                                              ; preds = %516
  store i32 0, i32* %34, align 4
  store i32 0, i32* %33, align 4
  br label %521

521:                                              ; preds = %537, %520
  %522 = load i32, i32* %33, align 4
  %523 = load i32, i32* @active_nr, align 4
  %524 = icmp slt i32 %522, %523
  br i1 %524, label %525, label %540

525:                                              ; preds = %521
  %526 = load i32*, i32** @active_cache, align 8
  %527 = load i32, i32* %33, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %526, i64 %528
  %530 = load i32, i32* %529, align 4
  %531 = call i64 @ce_intent_to_add(i32 %530)
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %536

533:                                              ; preds = %525
  %534 = load i32, i32* %34, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %34, align 4
  br label %536

536:                                              ; preds = %533, %525
  br label %537

537:                                              ; preds = %536
  %538 = load i32, i32* %33, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %33, align 4
  br label %521

540:                                              ; preds = %521
  %541 = load i32, i32* @active_nr, align 4
  %542 = load i32, i32* %34, align 4
  %543 = sub nsw i32 %541, %542
  %544 = icmp sgt i32 %543, 0
  %545 = zext i1 %544 to i32
  store i32 %545, i32* %14, align 4
  br label %561

546:                                              ; preds = %516
  %547 = bitcast %struct.diff_flags* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %547, i8* align 4 bitcast (%struct.diff_flags* @DIFF_FLAGS_INIT to i8*), i64 8, i1 false)
  %548 = getelementptr inbounds %struct.diff_flags, %struct.diff_flags* %35, i32 0, i32 0
  store i32 1, i32* %548, align 4
  %549 = load i8*, i8** @ignore_submodule_arg, align 8
  %550 = icmp ne i8* %549, null
  br i1 %550, label %551, label %557

551:                                              ; preds = %546
  %552 = load i8*, i8** @ignore_submodule_arg, align 8
  %553 = call i32 @strcmp(i8* %552, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %557, label %555

555:                                              ; preds = %551
  %556 = getelementptr inbounds %struct.diff_flags, %struct.diff_flags* %35, i32 0, i32 1
  store i32 1, i32* %556, align 4
  br label %557

557:                                              ; preds = %555, %551, %546
  %558 = load i32, i32* @the_repository, align 4
  %559 = load i8*, i8** %32, align 8
  %560 = call i32 @index_differs_from(i32 %558, i8* %559, %struct.diff_flags* %35, i32 1)
  store i32 %560, i32* %14, align 4
  br label %561

561:                                              ; preds = %557, %540
  br label %562

562:                                              ; preds = %561, %481
  %563 = call i32 @strbuf_release(%struct.strbuf* %13)
  %564 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %565 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %564, i32 0, i32 2
  %566 = load i32*, i32** %565, align 8
  %567 = call i32 @fclose(i32* %566)
  %568 = load i32, i32* %14, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %624, label %570

570:                                              ; preds = %562
  %571 = load i64, i64* @whence, align 8
  %572 = load i64, i64* @FROM_MERGE, align 8
  %573 = icmp ne i64 %571, %572
  br i1 %573, label %574, label %624

574:                                              ; preds = %570
  %575 = load i32, i32* @allow_empty, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %624, label %577

577:                                              ; preds = %574
  %578 = load i64, i64* @amend, align 8
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %584

580:                                              ; preds = %577
  %581 = load %struct.commit*, %struct.commit** %9, align 8
  %582 = call i64 @is_a_merge(%struct.commit* %581)
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %624, label %584

584:                                              ; preds = %580, %577
  %585 = load i32, i32* %19, align 4
  %586 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %587 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %586, i32 0, i32 0
  store i32 %585, i32* %587, align 8
  %588 = load i32*, i32** @stdout, align 8
  %589 = load i8*, i8** %7, align 8
  %590 = load i8*, i8** %8, align 8
  %591 = load %struct.wt_status*, %struct.wt_status** %10, align 8
  %592 = call i32 @run_status(i32* %588, i8* %589, i8* %590, i32 0, %struct.wt_status* %591)
  %593 = load i64, i64* @amend, align 8
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %595, label %600

595:                                              ; preds = %584
  %596 = load i8*, i8** @empty_amend_advice, align 8
  %597 = call i8* @_(i8* %596)
  %598 = load i32*, i32** @stderr, align 8
  %599 = call i32 @fputs(i8* %597, i32* %598)
  br label %623

600:                                              ; preds = %584
  %601 = load i64, i64* @whence, align 8
  %602 = load i64, i64* @FROM_CHERRY_PICK, align 8
  %603 = icmp eq i64 %601, %602
  br i1 %603, label %604, label %622

604:                                              ; preds = %600
  %605 = load i8*, i8** @empty_cherry_pick_advice, align 8
  %606 = call i8* @_(i8* %605)
  %607 = load i32*, i32** @stderr, align 8
  %608 = call i32 @fputs(i8* %606, i32* %607)
  %609 = load i32, i32* @sequencer_in_use, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %616, label %611

611:                                              ; preds = %604
  %612 = load i8*, i8** @empty_cherry_pick_advice_single, align 8
  %613 = call i8* @_(i8* %612)
  %614 = load i32*, i32** @stderr, align 8
  %615 = call i32 @fputs(i8* %613, i32* %614)
  br label %621

616:                                              ; preds = %604
  %617 = load i8*, i8** @empty_cherry_pick_advice_multi, align 8
  %618 = call i8* @_(i8* %617)
  %619 = load i32*, i32** @stderr, align 8
  %620 = call i32 @fputs(i8* %618, i32* %619)
  br label %621

621:                                              ; preds = %616, %611
  br label %622

622:                                              ; preds = %621, %600
  br label %623

623:                                              ; preds = %622, %595
  store i32 0, i32* %6, align 4
  br label %679

624:                                              ; preds = %580, %574, %570, %562
  %625 = load i32, i32* @no_verify, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %632, label %627

627:                                              ; preds = %624
  %628 = call i64 @find_hook(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %632

630:                                              ; preds = %627
  %631 = call i32 (...) @discard_cache()
  br label %632

632:                                              ; preds = %630, %627, %624
  %633 = load i8*, i8** %7, align 8
  %634 = call i32 @read_cache_from(i8* %633)
  %635 = call i64 @update_main_cache_tree(i32 0)
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %640

637:                                              ; preds = %632
  %638 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0))
  %639 = call i32 @error(i8* %638)
  store i32 0, i32* %6, align 4
  br label %679

640:                                              ; preds = %632
  %641 = load i64, i64* @use_editor, align 8
  %642 = load i8*, i8** %7, align 8
  %643 = call i32 (...) @git_path_commit_editmsg()
  %644 = load i8*, i8** %16, align 8
  %645 = load i8*, i8** %17, align 8
  %646 = call i64 (i64, i8*, i8*, i32, ...) @run_commit_hook(i64 %641, i8* %642, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), i32 %643, i8* %644, i8* %645, i8* null)
  %647 = icmp ne i64 %646, 0
  br i1 %647, label %648, label %649

648:                                              ; preds = %640
  store i32 0, i32* %6, align 4
  br label %679

649:                                              ; preds = %640
  %650 = load i64, i64* @use_editor, align 8
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %668

652:                                              ; preds = %649
  %653 = bitcast %struct.argv_array* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %653, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %654 = load i8*, i8** %7, align 8
  %655 = call i32 @argv_array_pushf(%struct.argv_array* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8* %654)
  %656 = call i32 (...) @git_path_commit_editmsg()
  %657 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %36, i32 0, i32 0
  %658 = load i32, i32* %657, align 4
  %659 = call i64 @launch_editor(i32 %656, i32* null, i32 %658)
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %666

661:                                              ; preds = %652
  %662 = load i32*, i32** @stderr, align 8
  %663 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.38, i64 0, i64 0))
  %664 = call i32 @fprintf(i32* %662, i8* %663)
  %665 = call i32 @exit(i32 1) #4
  unreachable

666:                                              ; preds = %652
  %667 = call i32 @argv_array_clear(%struct.argv_array* %36)
  br label %668

668:                                              ; preds = %666, %649
  %669 = load i32, i32* @no_verify, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %678, label %671

671:                                              ; preds = %668
  %672 = load i64, i64* @use_editor, align 8
  %673 = load i8*, i8** %7, align 8
  %674 = call i32 (...) @git_path_commit_editmsg()
  %675 = call i64 (i64, i8*, i8*, i32, ...) @run_commit_hook(i64 %672, i8* %673, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i32 %674, i8* null)
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %677, label %678

677:                                              ; preds = %671
  store i32 0, i32* %6, align 4
  br label %679

678:                                              ; preds = %671, %668
  store i32 1, i32* %6, align 4
  br label %679

679:                                              ; preds = %678, %677, %648, %637, %623, %52
  %680 = load i32, i32* %6, align 4
  ret i32 %680
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @determine_author_info(%struct.strbuf*) #2

declare dso_local i64 @run_commit_hook(i64, i8*, i8*, i32, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.commit* @lookup_commit_reference_by_name(i8*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @get_commit_output_encoding(...) #2

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, i32*) #2

declare dso_local i64 @isatty(i32) #2

declare dso_local i32 @fprintf(i32*, i8*) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @die_errno(i8*, ...) #2

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #2

declare dso_local i8* @strstr(i32, i8*) #2

declare dso_local i8* @skip_blank_lines(i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i8* @git_path_merge_msg(i32) #2

declare dso_local i8* @git_path_squash_msg(i32) #2

declare dso_local i64 @wt_status_locate_end(i64, i64) #2

declare dso_local i32* @fopen_for_writing(i32) #2

declare dso_local i32 @git_path_commit_editmsg(...) #2

declare dso_local i32 @strbuf_stripspace(%struct.strbuf*, i32) #2

declare dso_local i32 @append_signoff(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @ignore_non_trailer(i64, i64) #2

declare dso_local i64 @fwrite(i64, i32, i64, i32*) #2

declare dso_local i32 @adjust_comment_line_char(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @git_committer_info(i32) #2

declare dso_local i32 @wt_status_add_cut_line(i32*) #2

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i32, i8*, i8*, ...) #2

declare dso_local i8* @git_path_merge_head(i32) #2

declare dso_local i8* @git_path_cherry_pick_head(i32) #2

declare dso_local i32 @status_printf(%struct.wt_status*, i32, i8*, i32) #2

declare dso_local i32 @assert_split_ident(%struct.ident_split*, %struct.strbuf*) #2

declare dso_local i64 @ident_cmp(%struct.ident_split*, %struct.ident_split*) #2

declare dso_local i64 @author_date_is_interesting(...) #2

declare dso_local i32 @show_ident_date(%struct.ident_split*, i32) #2

declare dso_local i32 @DATE_MODE(i32) #2

declare dso_local i32 @committer_ident_sufficiently_given(...) #2

declare dso_local i32 @run_status(i32*, i8*, i8*, i32, %struct.wt_status*) #2

declare dso_local i32 @string_list_clear(i32*, i32) #2

declare dso_local i64 @read_cache(...) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i64 @ce_intent_to_add(i32) #2

declare dso_local i32 @index_differs_from(i32, i8*, %struct.diff_flags*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @is_a_merge(%struct.commit*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i64 @find_hook(i8*) #2

declare dso_local i32 @discard_cache(...) #2

declare dso_local i32 @read_cache_from(i8*) #2

declare dso_local i64 @update_main_cache_tree(i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i8*) #2

declare dso_local i64 @launch_editor(i32, i32*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
