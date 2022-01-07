; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_do_push_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_do_push_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32* }
%struct.child_process = type { i32, i32 }
%struct.pathspec = type { i64 }
%struct.stash_info = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Can't use --patch and --include-untracked or --all at the same time\00", align 1
@active_nr = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@active_cache = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Did you forget to 'git add'?\00", align 1
@REFRESH_QUIET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"No local changes to save\00", align 1
@ref_stash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot initialize stash\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Cannot save the current status\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Saved working directory and index state %s\00", align 1
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@INCLUDE_ALL_FILES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"diff-index\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"--cached\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"--binary\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"--index\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"--hard\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"--no-recurse-submodules\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"--no-overlay\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c":/\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Cannot remove worktree changes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pathspec*, i8*, i32, i32, i32, i32)* @do_push_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_push_stash(%struct.pathspec* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pathspec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stash_info, align 4
  %15 = alloca %struct.strbuf, align 8
  %16 = alloca %struct.strbuf, align 8
  %17 = alloca %struct.strbuf, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.child_process, align 4
  %21 = alloca %struct.child_process, align 4
  %22 = alloca %struct.child_process, align 4
  %23 = alloca %struct.child_process, align 4
  %24 = alloca %struct.strbuf, align 8
  %25 = alloca %struct.child_process, align 4
  %26 = alloca %struct.child_process, align 4
  %27 = alloca %struct.child_process, align 4
  %28 = alloca %struct.child_process, align 4
  store %struct.pathspec* %0, %struct.pathspec** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %30 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %31 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %6
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %34, %6
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @fprintf_ln(i32 %45, i32 %46)
  store i32 -1, i32* %13, align 4
  br label %321

48:                                               ; preds = %41, %38
  %49 = call i32 @read_cache_preload(i32* null)
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %92, label %52

52:                                               ; preds = %48
  %53 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %54 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %52
  %58 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %59 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @xcalloc(i64 %60, i32 1)
  store i8* %61, i8** %19, align 8
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %75, %57
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @active_nr, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32*, i32** @active_cache, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %73 = load i8*, i8** %19, align 8
  %74 = call i32 @ce_path_match(i32* @the_index, i32 %71, %struct.pathspec* %72, i8* %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  br label %62

78:                                               ; preds = %62
  %79 = load i8*, i8** %19, align 8
  %80 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %81 = call i64 @report_path_error(i8* %79, %struct.pathspec* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @fprintf_ln(i32 %84, i32 %85)
  store i32 -1, i32* %13, align 4
  %87 = load i8*, i8** %19, align 8
  %88 = call i32 @free(i8* %87)
  br label %321

89:                                               ; preds = %78
  %90 = load i8*, i8** %19, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %89, %52, %48
  %93 = load i32, i32* @REFRESH_QUIET, align 4
  %94 = call i64 @refresh_and_write_cache(i32 %93, i32 0, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 -1, i32* %13, align 4
  br label %321

97:                                               ; preds = %92
  %98 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @check_changes(%struct.pathspec* %98, i32 %99, %struct.strbuf* %17)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %107 = call i32 (i32, ...) @printf_ln(i32 %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %321

109:                                              ; preds = %97
  %110 = load i32, i32* @ref_stash, align 4
  %111 = call i32 @reflog_exists(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %109
  %114 = call i64 (...) @do_clear_stash()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  store i32 -1, i32* %13, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %122 = call i32 @fprintf_ln(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %116
  br label %321

124:                                              ; preds = %113, %109
  %125 = load i8*, i8** %8, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i64 @do_create_stash(%struct.pathspec* %131, %struct.strbuf* %16, i32 %132, i32 %133, %struct.stash_info* %14, %struct.strbuf* %15, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 -1, i32* %13, align 4
  br label %321

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %14, i32 0, i32 1
  %140 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i64 @do_store_stash(i32* %139, i32* %141, i32 1)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  store i32 -1, i32* %13, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @stderr, align 4
  %149 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %150 = call i32 @fprintf_ln(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %144
  br label %321

152:                                              ; preds = %138
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %152
  %156 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %157 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 (i32, ...) @printf_ln(i32 %156, i32* %158)
  br label %160

160:                                              ; preds = %155, %152
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %286, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %168 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %187, label %171

171:                                              ; preds = %166
  %172 = bitcast %struct.child_process* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %173 = getelementptr inbounds %struct.child_process, %struct.child_process* %20, i32 0, i32 0
  store i32 1, i32* %173, align 4
  %174 = getelementptr inbounds %struct.child_process, %struct.child_process* %20, i32 0, i32 1
  %175 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* null)
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @INCLUDE_ALL_FILES, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.child_process, %struct.child_process* %20, i32 0, i32 1
  %181 = call i32 @argv_array_push(i32* %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %171
  %183 = call i64 @run_command(%struct.child_process* %20)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 -1, i32* %13, align 4
  br label %321

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186, %166, %163
  %188 = call i32 (...) @discard_cache()
  %189 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %190 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %244

193:                                              ; preds = %187
  %194 = bitcast %struct.child_process* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %194, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %195 = bitcast %struct.child_process* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %195, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %196 = bitcast %struct.child_process* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %196, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %197 = bitcast %struct.strbuf* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %197, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %198 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 0
  store i32 1, i32* %198, align 4
  %199 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 1
  %200 = call i32 @argv_array_push(i32* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 1
  %205 = call i32 @argv_array_push(i32* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %206

206:                                              ; preds = %203, %193
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @INCLUDE_ALL_FILES, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 1
  %212 = call i32 @argv_array_push(i32* %211, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %206
  %214 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 1
  %215 = call i32 @argv_array_push(i32* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %216 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 1
  %217 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %218 = call i32 @add_pathspecs(i32* %216, %struct.pathspec* %217)
  %219 = call i64 @run_command(%struct.child_process* %21)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  store i32 -1, i32* %13, align 4
  br label %321

222:                                              ; preds = %213
  %223 = getelementptr inbounds %struct.child_process, %struct.child_process* %22, i32 0, i32 0
  store i32 1, i32* %223, align 4
  %224 = getelementptr inbounds %struct.child_process, %struct.child_process* %22, i32 0, i32 1
  %225 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* null)
  %226 = getelementptr inbounds %struct.child_process, %struct.child_process* %22, i32 0, i32 1
  %227 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %228 = call i32 @add_pathspecs(i32* %226, %struct.pathspec* %227)
  %229 = call i64 @pipe_command(%struct.child_process* %22, i32* null, i32 0, %struct.strbuf* %24, i32 0, i32* null, i32 0)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %222
  store i32 -1, i32* %13, align 4
  br label %321

232:                                              ; preds = %222
  %233 = getelementptr inbounds %struct.child_process, %struct.child_process* %23, i32 0, i32 0
  store i32 1, i32* %233, align 4
  %234 = getelementptr inbounds %struct.child_process, %struct.child_process* %23, i32 0, i32 1
  %235 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* null)
  %236 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i64 @pipe_command(%struct.child_process* %23, i32* %237, i32 %239, %struct.strbuf* null, i32 0, i32* null, i32 0)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %232
  store i32 -1, i32* %13, align 4
  br label %321

243:                                              ; preds = %232
  br label %253

244:                                              ; preds = %187
  %245 = bitcast %struct.child_process* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %245, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %246 = getelementptr inbounds %struct.child_process, %struct.child_process* %25, i32 0, i32 0
  store i32 1, i32* %246, align 4
  %247 = getelementptr inbounds %struct.child_process, %struct.child_process* %25, i32 0, i32 1
  %248 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* null)
  %249 = call i64 @run_command(%struct.child_process* %25)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  store i32 -1, i32* %13, align 4
  br label %321

252:                                              ; preds = %244
  br label %253

253:                                              ; preds = %252, %243
  %254 = load i32, i32* %10, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %285

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %14, i32 0, i32 0
  %258 = call i32 @is_null_oid(i32* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %285, label %260

260:                                              ; preds = %256
  %261 = bitcast %struct.child_process* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %261, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %262 = getelementptr inbounds %struct.child_process, %struct.child_process* %26, i32 0, i32 0
  store i32 1, i32* %262, align 4
  %263 = getelementptr inbounds %struct.child_process, %struct.child_process* %26, i32 0, i32 1
  %264 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %14, i32 0, i32 0
  %265 = call i32 @oid_to_hex(i32* %264)
  %266 = sext i32 %265 to i64
  %267 = inttoptr i64 %266 to i8*
  %268 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* null)
  %269 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %270 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %260
  %274 = getelementptr inbounds %struct.child_process, %struct.child_process* %26, i32 0, i32 1
  %275 = call i32 @argv_array_push(i32* %274, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %280

276:                                              ; preds = %260
  %277 = getelementptr inbounds %struct.child_process, %struct.child_process* %26, i32 0, i32 1
  %278 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %279 = call i32 @add_pathspecs(i32* %277, %struct.pathspec* %278)
  br label %280

280:                                              ; preds = %276, %273
  %281 = call i64 @run_command(%struct.child_process* %26)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  store i32 -1, i32* %13, align 4
  br label %321

284:                                              ; preds = %280
  br label %285

285:                                              ; preds = %284, %256, %253
  br label %321

286:                                              ; preds = %160
  %287 = bitcast %struct.child_process* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %287, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %288 = getelementptr inbounds %struct.child_process, %struct.child_process* %27, i32 0, i32 0
  store i32 1, i32* %288, align 4
  %289 = getelementptr inbounds %struct.child_process, %struct.child_process* %27, i32 0, i32 1
  %290 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* null)
  %291 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i64 @pipe_command(%struct.child_process* %27, i32* %292, i32 %294, %struct.strbuf* null, i32 0, i32* null, i32 0)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %286
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* @stderr, align 4
  %302 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0))
  %303 = call i32 @fprintf_ln(i32 %301, i32 %302)
  br label %304

304:                                              ; preds = %300, %297
  store i32 -1, i32* %13, align 4
  br label %321

305:                                              ; preds = %286
  %306 = load i32, i32* %10, align 4
  %307 = icmp slt i32 %306, 1
  br i1 %307, label %308, label %320

308:                                              ; preds = %305
  %309 = bitcast %struct.child_process* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %309, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %310 = getelementptr inbounds %struct.child_process, %struct.child_process* %28, i32 0, i32 0
  store i32 1, i32* %310, align 4
  %311 = getelementptr inbounds %struct.child_process, %struct.child_process* %28, i32 0, i32 1
  %312 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* null)
  %313 = getelementptr inbounds %struct.child_process, %struct.child_process* %28, i32 0, i32 1
  %314 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %315 = call i32 @add_pathspecs(i32* %313, %struct.pathspec* %314)
  %316 = call i64 @run_command(%struct.child_process* %28)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %308
  store i32 -1, i32* %13, align 4
  br label %321

319:                                              ; preds = %308
  br label %320

320:                                              ; preds = %319, %305
  br label %321

321:                                              ; preds = %320, %318, %304, %285, %283, %251, %242, %231, %221, %185, %151, %137, %123, %108, %96, %83, %44
  %322 = call i32 @strbuf_release(%struct.strbuf* %16)
  %323 = load i32, i32* %13, align 4
  ret i32 %323
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf_ln(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @read_cache_preload(i32*) #2

declare dso_local i8* @xcalloc(i64, i32) #2

declare dso_local i32 @ce_path_match(i32*, i32, %struct.pathspec*, i8*) #2

declare dso_local i64 @report_path_error(i8*, %struct.pathspec*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @refresh_and_write_cache(i32, i32, i32) #2

declare dso_local i32 @check_changes(%struct.pathspec*, i32, %struct.strbuf*) #2

declare dso_local i32 @printf_ln(i32, ...) #2

declare dso_local i32 @reflog_exists(i32) #2

declare dso_local i64 @do_clear_stash(...) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i64 @do_create_stash(%struct.pathspec*, %struct.strbuf*, i32, i32, %struct.stash_info*, %struct.strbuf*, i32) #2

declare dso_local i64 @do_store_stash(i32*, i32*, i32) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @discard_cache(...) #2

declare dso_local i32 @add_pathspecs(i32*, %struct.pathspec*) #2

declare dso_local i64 @pipe_command(%struct.child_process*, i32*, i32, %struct.strbuf*, i32, i32*, i32) #2

declare dso_local i32 @is_null_oid(i32*) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
