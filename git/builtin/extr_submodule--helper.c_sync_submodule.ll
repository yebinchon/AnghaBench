; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_sync_submodule.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_sync_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.child_process = type { i32, i8*, i32, i32 }
%struct.submodule = type { i8*, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"remote.%s.url\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OPT_QUIET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Synchronizing submodule url for '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"submodule.%s.url\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"failed to register url for submodule path '%s'\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"submodule--helper\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"print-default-remote\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"failed to get the default remote for submodule '%s'\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"/config\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"failed to update remote for submodule '%s'\00", align 1
@OPT_RECURSIVE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"--super-prefix\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"--recursive\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"failed to recurse into submodule '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @sync_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_submodule(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.submodule*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.child_process, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.child_process, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %19 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %20 = bitcast %struct.child_process* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  store i8* null, i8** %14, align 8
  %21 = load i32, i32* @the_repository, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @is_submodule_active(i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %205

26:                                               ; preds = %3
  %27 = load i32, i32* @the_repository, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.submodule* @submodule_from_path(i32 %27, i32* @null_oid, i8* %28)
  store %struct.submodule* %29, %struct.submodule** %7, align 8
  %30 = load %struct.submodule*, %struct.submodule** %7, align 8
  %31 = icmp ne %struct.submodule* %30, null
  br i1 %31, label %32, label %89

32:                                               ; preds = %26
  %33 = load %struct.submodule*, %struct.submodule** %7, align 8
  %34 = getelementptr inbounds %struct.submodule, %struct.submodule* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %89

37:                                               ; preds = %32
  %38 = load %struct.submodule*, %struct.submodule** %7, align 8
  %39 = getelementptr inbounds %struct.submodule, %struct.submodule* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @starts_with_dot_dot_slash(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.submodule*, %struct.submodule** %7, align 8
  %45 = getelementptr inbounds %struct.submodule, %struct.submodule* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @starts_with_dot_slash(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %43, %37
  %50 = call i8* (...) @get_default_remote()
  store i8* %50, i8** %17, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @git_config_get_string(i32 %54, i8** %15)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i8* (...) @xgetcwd()
  store i8* %58, i8** %15, align 8
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i8*, i8** %4, align 8
  %61 = call i8* @get_up_path(i8* %60)
  store i8* %61, i8** %16, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load %struct.submodule*, %struct.submodule** %7, align 8
  %64 = getelementptr inbounds %struct.submodule, %struct.submodule* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = call i8* @relative_url(i8* %62, i8* %65, i8* %66)
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load %struct.submodule*, %struct.submodule** %7, align 8
  %70 = getelementptr inbounds %struct.submodule, %struct.submodule* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @relative_url(i8* %68, i8* %71, i8* null)
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @free(i8* %77)
  br label %88

79:                                               ; preds = %43
  %80 = load %struct.submodule*, %struct.submodule** %7, align 8
  %81 = getelementptr inbounds %struct.submodule, %struct.submodule* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @xstrdup(i8* %82)
  store i8* %83, i8** %9, align 8
  %84 = load %struct.submodule*, %struct.submodule** %7, align 8
  %85 = getelementptr inbounds %struct.submodule, %struct.submodule* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @xstrdup(i8* %86)
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %79, %59
  br label %92

89:                                               ; preds = %32, %26
  %90 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %90, i8** %9, align 8
  %91 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %89, %88
  %93 = load i8*, i8** %4, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i8* @get_submodule_displaypath(i8* %93, i8* %94)
  store i8* %95, i8** %11, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @OPT_QUIET, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %92
  %101 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @printf(i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %100, %92
  %105 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %106 = load %struct.submodule*, %struct.submodule** %7, align 8
  %107 = getelementptr inbounds %struct.submodule, %struct.submodule* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  %110 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = call i64 @git_config_set_gently(i32 %111, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @die(i8* %116, i8* %117)
  br label %119

119:                                              ; preds = %115, %104
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @is_submodule_populated_gently(i8* %120, i32* null)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  br label %193

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %126 = call i32 @prepare_submodule_repo_env(i32* %125)
  %127 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  %131 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %132 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %133 = call i64 @capture_command(%struct.child_process* %13, %struct.strbuf* %12, i32 0)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %124
  %136 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @die(i8* %136, i8* %137)
  br label %139

139:                                              ; preds = %135, %124
  %140 = call i32 @strbuf_strip_suffix(%struct.strbuf* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %141 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @xstrfmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %142)
  store i8* %143, i8** %8, align 8
  %144 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 @submodule_to_gitdir(%struct.strbuf* %12, i8* %145)
  %147 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %148 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %8, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = call i64 @git_config_set_in_file_gently(i32 %149, i8* %150, i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %139
  %155 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @die(i8* %155, i8* %156)
  br label %158

158:                                              ; preds = %154, %139
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @OPT_RECURSIVE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %192

163:                                              ; preds = %158
  %164 = bitcast %struct.child_process* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %164, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %165 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load i8*, i8** %4, align 8
  %167 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 1
  store i8* %166, i8** %167, align 8
  %168 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 3
  %169 = call i32 @prepare_submodule_repo_env(i32* %168)
  %170 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 2
  %171 = call i32 @argv_array_push(i32* %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %172 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 2
  %173 = load i8*, i8** %11, align 8
  %174 = call i32 @argv_array_pushf(i32* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %173)
  %175 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 2
  %176 = call i32 (i32*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* null)
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @OPT_QUIET, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %163
  %182 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 2
  %183 = call i32 @argv_array_push(i32* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %163
  %185 = call i64 @run_command(%struct.child_process* %18)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %189 = load i8*, i8** %4, align 8
  %190 = call i32 @die(i8* %188, i8* %189)
  br label %191

191:                                              ; preds = %187, %184
  br label %192

192:                                              ; preds = %191, %158
  br label %193

193:                                              ; preds = %192, %123
  %194 = load i8*, i8** %10, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i8*, i8** %9, align 8
  %197 = call i32 @free(i8* %196)
  %198 = call i32 @strbuf_release(%struct.strbuf* %12)
  %199 = load i8*, i8** %8, align 8
  %200 = call i32 @free(i8* %199)
  %201 = load i8*, i8** %11, align 8
  %202 = call i32 @free(i8* %201)
  %203 = load i8*, i8** %14, align 8
  %204 = call i32 @free(i8* %203)
  br label %205

205:                                              ; preds = %193, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @is_submodule_active(i32, i8*) #2

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #2

declare dso_local i64 @starts_with_dot_dot_slash(i8*) #2

declare dso_local i64 @starts_with_dot_slash(i8*) #2

declare dso_local i8* @get_default_remote(...) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @git_config_get_string(i32, i8**) #2

declare dso_local i8* @xgetcwd(...) #2

declare dso_local i8* @get_up_path(i8*) #2

declare dso_local i8* @relative_url(i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @get_submodule_displaypath(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @git_config_set_gently(i32, i8*) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i32 @is_submodule_populated_gently(i8*, i32*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, ...) #2

declare dso_local i64 @capture_command(%struct.child_process*, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_strip_suffix(%struct.strbuf*, i8*) #2

declare dso_local i8* @xstrfmt(i8*, i32) #2

declare dso_local i32 @submodule_to_gitdir(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i64 @git_config_set_in_file_gently(i32, i8*, i8*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i8*) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
