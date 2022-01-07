; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_init-db.c_create_default_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_init-db.c_create_default_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@init_db_template_dir = common dso_local global i32* null, align 8
@git_init_db_config = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@init_is_bare_repository = common dso_local global i32 0, align 4
@is_bare_repository_cfg = common dso_local global i32 0, align 4
@init_shared_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to set up refs db: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GIT_REPO_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"core.repositoryformatversion\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@TEST_FILEMODE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"core.filemode\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"core.bare\00", align 1
@log_all_ref_updates = common dso_local global i64 0, align 8
@LOG_REFS_UNSET = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"core.logallrefupdates\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"tXXXXXX\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"testing\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"core.symlinks\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"CoNfIg\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @create_default_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_default_files(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [10 x i8], align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.stat, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** @init_db_template_dir, align 8
  %17 = load i32, i32* @git_init_db_config, align 4
  %18 = call i32 @git_config(i32 %17, i32* null)
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @copy_templates(i8* %19)
  %21 = call i32 (...) @git_config_clear()
  %22 = call i32 (...) @reset_shared_repository()
  %23 = load i32, i32* @git_default_config, align 4
  %24 = call i32 @git_config(i32 %23, i32* null)
  %25 = load i32, i32* @init_is_bare_repository, align 4
  store i32 %25, i32* @is_bare_repository_cfg, align 4
  %26 = load i32, i32* @init_shared_repository, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @init_shared_repository, align 4
  %30 = call i32 @set_shared_repository(i32 %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = call i64 (...) @get_shared_repository()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = call i32 (...) @get_git_dir()
  %36 = call i32 @adjust_shared_perm(i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = call i32 @git_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @safe_create_dir(i32 %38, i32 1)
  %40 = call i32 @git_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @adjust_shared_perm(i32 %40)
  %42 = call i64 @refs_init_db(%struct.strbuf* %12)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %37
  %49 = call i8* @git_path_buf(%struct.strbuf* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @R_OK, align 4
  %52 = call i32 @access(i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %57 = call i32 @readlink(i8* %55, i8* %56, i32 1)
  %58 = icmp ne i32 %57, -1
  br label %59

59:                                               ; preds = %54, %48
  %60 = phi i1 [ true, %48 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = call i64 @create_symref(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 @exit(i32 1) #4
  unreachable

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %59
  %71 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %72 = load i32, i32* @GIT_REPO_VERSION, align 4
  %73 = call i32 @xsnprintf(i8* %71, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %75 = call i32 @git_config_set(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  %76 = call i8* @git_path_buf(%struct.strbuf* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %76, i8** %7, align 8
  %77 = load i32, i32* @TEST_FILEMODE, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* @TEST_FILEMODE, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %70
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @lstat(i8* %81, %struct.stat* %5)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %125, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @S_IXUSR, align 4
  %89 = xor i32 %87, %88
  %90 = call i32 @chmod(i8* %85, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %84
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @lstat(i8* %93, %struct.stat* %13)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @chmod(i8* %103, i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br label %109

109:                                              ; preds = %102, %96, %92, %84
  %110 = phi i1 [ false, %96 ], [ false, %92 ], [ false, %84 ], [ %108, %102 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @S_IXUSR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %117, %114, %109
  br label %125

125:                                              ; preds = %124, %80, %70
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %130 = call i32 @git_config_set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %129)
  %131 = call i64 (...) @is_bare_repository()
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = call i32 @git_config_set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %152

135:                                              ; preds = %125
  %136 = call i8* (...) @get_git_work_tree()
  store i8* %136, i8** %14, align 8
  %137 = call i32 @git_config_set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %138 = load i64, i64* @log_all_ref_updates, align 8
  %139 = load i64, i64* @LOG_REFS_UNSET, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = call i32 @git_config_set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %135
  %144 = load i8*, i8** %4, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = call i64 @needs_work_tree_config(i8* %144, i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 @git_config_set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %151, %133
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %193, label %155

155:                                              ; preds = %152
  %156 = call i8* @git_path_buf(%struct.strbuf* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store i8* %156, i8** %7, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @xmkstemp(i8* %157)
  %159 = call i32 @close(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %181, label %161

161:                                              ; preds = %155
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @unlink(i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %161
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 @symlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %165
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @lstat(i8* %170, %struct.stat* %5)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @S_ISLNK(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i8*, i8** %7, align 8
  %180 = call i32 @unlink(i8* %179)
  br label %183

181:                                              ; preds = %173, %169, %165, %161, %155
  %182 = call i32 @git_config_set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %178
  %184 = call i8* @git_path_buf(%struct.strbuf* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  store i8* %184, i8** %7, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = load i32, i32* @F_OK, align 4
  %187 = call i32 @access(i8* %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %183
  %190 = call i32 @git_config_set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %183
  %192 = call i32 (...) @probe_utf8_pathname_composition()
  br label %193

193:                                              ; preds = %191, %152
  %194 = call i32 @strbuf_release(%struct.strbuf* %6)
  %195 = load i32, i32* %10, align 4
  ret i32 %195
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @copy_templates(i8*) #2

declare dso_local i32 @git_config_clear(...) #2

declare dso_local i32 @reset_shared_repository(...) #2

declare dso_local i32 @set_shared_repository(i32) #2

declare dso_local i64 @get_shared_repository(...) #2

declare dso_local i32 @adjust_shared_perm(i32) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i32 @safe_create_dir(i32, i32) #2

declare dso_local i32 @git_path(i8*) #2

declare dso_local i64 @refs_init_db(%struct.strbuf*) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i8* @git_path_buf(%struct.strbuf*, i8*) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i64 @create_symref(i8*, i8*, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @git_config_set(i8*, i8*) #2

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @chmod(i8*, i32) #2

declare dso_local i64 @is_bare_repository(...) #2

declare dso_local i8* @get_git_work_tree(...) #2

declare dso_local i64 @needs_work_tree_config(i8*, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @xmkstemp(i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @symlink(i8*, i8*) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i32 @probe_utf8_pathname_composition(...) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
