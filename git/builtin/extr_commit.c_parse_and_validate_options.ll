; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_parse_and_validate_options.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_parse_and_validate_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }
%struct.commit = type { i32 }
%struct.wt_status = type { i32 }

@force_author = common dso_local global i64 0, align 8
@renew_authorship = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Using both --reset-author and --author does not make sense\00", align 1
@logfile = common dso_local global i64 0, align 8
@have_option_m = common dso_local global i64 0, align 8
@use_message = common dso_local global i8* null, align 8
@fixup_message = common dso_local global i64 0, align 8
@use_editor = common dso_local global i64 0, align 8
@edit_flag = common dso_local global i64 0, align 8
@amend = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"You have nothing to amend.\00", align 1
@whence = common dso_local global i64 0, align 8
@FROM_COMMIT = common dso_local global i64 0, align 8
@FROM_MERGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"You are in the middle of a merge -- cannot amend.\00", align 1
@FROM_CHERRY_PICK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"You are in the middle of a cherry-pick -- cannot amend.\00", align 1
@squash_message = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"Options --squash and --fixup cannot be used together\00", align 1
@edit_message = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"Only one of -c/-C/-F/--fixup can be used.\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Option -m cannot be combined with -c/-C/-F.\00", align 1
@template_file = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"--reset-author can be used only with -C, -c or --amend.\00", align 1
@use_message_buffer = common dso_local global i8* null, align 8
@author_message = common dso_local global i8* null, align 8
@author_message_buffer = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"CHERRY_PICK_HEAD\00", align 1
@patch_interactive = common dso_local global i64 0, align 8
@interactive = common dso_local global i32 0, align 4
@also = common dso_local global i32 0, align 4
@only = common dso_local global i32 0, align 4
@all = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [70 x i8] c"Only one of --include/--only/--all/--interactive/--patch can be used.\00", align 1
@allow_empty = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [52 x i8] c"No paths with --include/--only does not make sense.\00", align 1
@cleanup_arg = common dso_local global i32 0, align 4
@cleanup_mode = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"paths '%s ...' with -a does not make sense\00", align 1
@status_format = common dso_local global i64 0, align 8
@STATUS_FORMAT_NONE = common dso_local global i64 0, align 8
@dry_run = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.option*, i8**, i8*, %struct.commit*, %struct.wt_status*)* @parse_and_validate_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_and_validate_options(i32 %0, i8** %1, %struct.option* %2, i8** %3, i8* %4, %struct.commit* %5, %struct.wt_status* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca %struct.wt_status*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store %struct.option* %2, %struct.option** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.commit* %5, %struct.commit** %13, align 8
  store %struct.wt_status* %6, %struct.wt_status** %14, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i8**, i8*** %9, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load %struct.option*, %struct.option** %10, align 8
  %20 = load i8**, i8*** %11, align 8
  %21 = call i32 @parse_options(i32 %16, i8** %17, i8* %18, %struct.option* %19, i8** %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.wt_status*, %struct.wt_status** %14, align 8
  %23 = call i32 @finalize_deferred_config(%struct.wt_status* %22)
  %24 = load i64, i64* @force_author, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %7
  %27 = load i64, i64* @force_author, align 8
  %28 = call i32 @strchr(i64 %27, i8 signext 62)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @force_author, align 8
  %32 = call i64 @find_author_by_nickname(i64 %31)
  store i64 %32, i64* @force_author, align 8
  br label %33

33:                                               ; preds = %30, %26, %7
  %34 = load i64, i64* @force_author, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* @renew_authorship, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 (i32, ...) @die(i32 %40)
  br label %42

42:                                               ; preds = %39, %36, %33
  %43 = load i64, i64* @logfile, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @have_option_m, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** @use_message, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* @fixup_message, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48, %45, %42
  store i64 0, i64* @use_editor, align 8
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i64, i64* @edit_flag, align 8
  %57 = icmp sle i64 0, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i64, i64* @edit_flag, align 8
  store i64 %59, i64* @use_editor, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i64, i64* @amend, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.commit*, %struct.commit** %13, align 8
  %65 = icmp ne %struct.commit* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 (i32, ...) @die(i32 %67)
  br label %69

69:                                               ; preds = %66, %63, %60
  %70 = load i64, i64* @amend, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load i64, i64* @whence, align 8
  %74 = load i64, i64* @FROM_COMMIT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load i64, i64* @whence, align 8
  %78 = load i64, i64* @FROM_MERGE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 (i32, ...) @die(i32 %81)
  br label %91

83:                                               ; preds = %76
  %84 = load i64, i64* @whence, align 8
  %85 = load i64, i64* @FROM_CHERRY_PICK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %89 = call i32 (i32, ...) @die(i32 %88)
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %91, %72, %69
  %93 = load i64, i64* @fixup_message, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i64, i64* @squash_message, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %100 = call i32 (i32, ...) @die(i32 %99)
  br label %101

101:                                              ; preds = %98, %95, %92
  %102 = load i8*, i8** @use_message, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i8*, i8** @edit_message, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i64, i64* @fixup_message, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i64, i64* @logfile, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %15, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %130 = call i32 (i32, ...) @die(i32 %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i64, i64* @have_option_m, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i8*, i8** @edit_message, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** @use_message, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i64, i64* @logfile, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140, %137, %134
  %144 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %145 = call i32 (i32, ...) @die(i32 %144)
  br label %146

146:                                              ; preds = %143, %140, %131
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i64, i64* @have_option_m, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149, %146
  store i32* null, i32** @template_file, align 8
  br label %153

153:                                              ; preds = %152, %149
  %154 = load i8*, i8** @edit_message, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i8*, i8** @edit_message, align 8
  store i8* %157, i8** @use_message, align 8
  br label %158

158:                                              ; preds = %156, %153
  %159 = load i64, i64* @amend, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load i8*, i8** @use_message, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = load i64, i64* @fixup_message, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** @use_message, align 8
  br label %168

168:                                              ; preds = %167, %164, %161, %158
  %169 = load i8*, i8** @use_message, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %181, label %171

171:                                              ; preds = %168
  %172 = load i64, i64* @whence, align 8
  %173 = load i64, i64* @FROM_CHERRY_PICK, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i64, i64* @renew_authorship, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %180 = call i32 (i32, ...) @die(i32 %179)
  br label %181

181:                                              ; preds = %178, %175, %171, %168
  %182 = load i8*, i8** @use_message, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load i8*, i8** @use_message, align 8
  %186 = call i8* @read_commit_message(i8* %185)
  store i8* %186, i8** @use_message_buffer, align 8
  %187 = load i64, i64* @renew_authorship, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i8*, i8** @use_message, align 8
  store i8* %190, i8** @author_message, align 8
  %191 = load i8*, i8** @use_message_buffer, align 8
  store i8* %191, i8** @author_message_buffer, align 8
  br label %192

192:                                              ; preds = %189, %184
  br label %193

193:                                              ; preds = %192, %181
  %194 = load i64, i64* @whence, align 8
  %195 = load i64, i64* @FROM_CHERRY_PICK, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i64, i64* @renew_authorship, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8** @author_message, align 8
  %201 = load i8*, i8** @author_message, align 8
  %202 = call i8* @read_commit_message(i8* %201)
  store i8* %202, i8** @author_message_buffer, align 8
  br label %203

203:                                              ; preds = %200, %197, %193
  %204 = load i64, i64* @patch_interactive, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 1, i32* @interactive, align 4
  br label %207

207:                                              ; preds = %206, %203
  %208 = load i32, i32* @also, align 4
  %209 = load i32, i32* @only, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* @all, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* @interactive, align 4
  %214 = add nsw i32 %212, %213
  %215 = icmp sgt i32 %214, 1
  br i1 %215, label %216, label %219

216:                                              ; preds = %207
  %217 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0))
  %218 = call i32 (i32, ...) @die(i32 %217)
  br label %219

219:                                              ; preds = %216, %207
  %220 = load i32, i32* %8, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %219
  %223 = load i32, i32* @also, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %234, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* @only, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = load i64, i64* @amend, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* @allow_empty, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231, %222
  %235 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  %236 = call i32 (i32, ...) @die(i32 %235)
  br label %237

237:                                              ; preds = %234, %231, %228, %225, %219
  %238 = load i32, i32* @cleanup_arg, align 4
  %239 = load i64, i64* @use_editor, align 8
  %240 = call i32 @get_cleanup_mode(i32 %238, i64 %239)
  store i32 %240, i32* @cleanup_mode, align 4
  %241 = load %struct.wt_status*, %struct.wt_status** %14, align 8
  %242 = call i32 @handle_untracked_files_arg(%struct.wt_status* %241)
  %243 = load i32, i32* @all, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %237
  %246 = load i32, i32* %8, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %250 = load i8**, i8*** %9, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 (i32, ...) @die(i32 %249, i8* %252)
  br label %254

254:                                              ; preds = %248, %245, %237
  %255 = load i64, i64* @status_format, align 8
  %256 = load i64, i64* @STATUS_FORMAT_NONE, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store i32 1, i32* @dry_run, align 4
  br label %259

259:                                              ; preds = %258, %254
  %260 = load i32, i32* %8, align 4
  ret i32 %260
}

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #1

declare dso_local i32 @finalize_deferred_config(%struct.wt_status*) #1

declare dso_local i32 @strchr(i64, i8 signext) #1

declare dso_local i64 @find_author_by_nickname(i64) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @read_commit_message(i8*) #1

declare dso_local i32 @get_cleanup_mode(i32, i64) #1

declare dso_local i32 @handle_untracked_files_arg(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
