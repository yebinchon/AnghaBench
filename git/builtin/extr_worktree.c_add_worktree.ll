; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_add_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_add_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.child_process = type { i32, i8**, i32, i32, i8*, i8*, %struct.argv_array, i32* }
%struct.argv_array = type { i8** }
%struct.add_opts = type { i64, i32, i64, i32, i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid reference: %s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"How come '%s' becomes empty after sanitization?\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"worktrees/%s\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"could not create leading directories of '%s'\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"could not create directory of '%s'\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@junk_pid = common dso_local global i32 0, align 4
@remove_junk = common dso_local global i32 0, align 4
@remove_junk_on_signal = common dso_local global i32 0, align 4
@junk_git_dir = common dso_local global i32 0, align 4
@is_junk = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"%s/locked\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"initializing\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"added with --lock\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@junk_work_tree = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"%s/gitdir\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"gitdir: %s/worktrees/%s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s/HEAD\00", align 1
@null_oid = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"%s/commondir\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"../..\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@GIT_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@GIT_WORK_TREE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"update-ref\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"symbolic-ref\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"--hard\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"post-checkout\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"GIT_DIR\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GIT_WORK_TREE\00", align 1
@__const.add_worktree.env = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* null], align 16
@.str.26 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.add_opts*)* @add_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_worktree(i8* %0, i8* %1, %struct.add_opts* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.add_opts*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.child_process, align 8
  %12 = alloca %struct.argv_array, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.strbuf, align 8
  %17 = alloca %struct.commit*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.strbuf, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [3 x i8*], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.add_opts* %2, %struct.add_opts** %6, align 8
  %22 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %23 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %24 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %25 = bitcast %struct.child_process* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 56, i1 false)
  %26 = bitcast %struct.argv_array* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %13, align 4
  %27 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store %struct.commit* null, %struct.commit** %17, align 8
  store i32 0, i32* %18, align 4
  %28 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.add_opts*, %struct.add_opts** %6, align 8
  %31 = call i32 @validate_worktree_add(i8* %29, %struct.add_opts* %30)
  %32 = load %struct.add_opts*, %struct.add_opts** %6, align 8
  %33 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %3
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strbuf_check_branch_ref(%struct.strbuf* %16, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @ref_exists(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  store i32 1, i32* %18, align 4
  %46 = load %struct.add_opts*, %struct.add_opts** %6, align 8
  %47 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @die_if_checked_out(i8* %52, i32 0)
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %40, %36, %3
  %56 = load i8*, i8** %5, align 8
  %57 = call %struct.commit* @lookup_commit_reference_by_name(i8* %56)
  store %struct.commit* %57, %struct.commit** %17, align 8
  %58 = load %struct.commit*, %struct.commit** %17, align 8
  %59 = icmp ne %struct.commit* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @die(i32 %61, i8* %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i8*, i8** %4, align 8
  %66 = call i8* @worktree_basename(i8* %65, i32* %14)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8*, i8** %10, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @strbuf_add(%struct.strbuf* %9, i8* %67, i32 %76)
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @sanitize_refname_component(i8* %79, %struct.strbuf* %19)
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %64
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @BUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %64
  %89 = call i32 @strbuf_reset(%struct.strbuf* %9)
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %10, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @git_path_buf(%struct.strbuf* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %14, align 4
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @safe_create_leading_directories_const(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %88
  %101 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @die_errno(i32 %101, i8* %103)
  br label %105

105:                                              ; preds = %100, %88
  br label %106

106:                                              ; preds = %125, %105
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @mkdir(i8* %108, i32 511)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %13, align 4
  %114 = load i64, i64* @errno, align 8
  %115 = load i64, i64* @EEXIST, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117, %111
  %121 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %122 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @die_errno(i32 %121, i8* %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @strbuf_setlen(%struct.strbuf* %8, i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  br label %106

130:                                              ; preds = %106
  %131 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @strrchr(i8* %132, i8 signext 47)
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  store i8* %134, i8** %10, align 8
  %135 = call i32 (...) @getpid()
  store i32 %135, i32* @junk_pid, align 4
  %136 = load i32, i32* @remove_junk, align 4
  %137 = call i32 @atexit(i32 %136)
  %138 = load i32, i32* @remove_junk_on_signal, align 4
  %139 = call i32 @sigchain_push_common(i32 %138)
  %140 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @xstrdup(i8* %141)
  store i32 %142, i32* @junk_git_dir, align 4
  store i32 1, i32* @is_junk, align 4
  %143 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %144)
  %146 = load %struct.add_opts*, %struct.add_opts** %6, align 8
  %147 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %130
  %151 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i8*, i8*, ...) @write_file(i8* %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %158

154:                                              ; preds = %130
  %155 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, i8*, ...) @write_file(i8* %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %150
  %159 = load i8*, i8** %4, align 8
  %160 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %159)
  %161 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @safe_create_leading_directories_const(i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %167 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @die_errno(i32 %166, i8* %168)
  br label %170

170:                                              ; preds = %165, %158
  %171 = load i8*, i8** %4, align 8
  %172 = call i32 @xstrdup(i8* %171)
  store i32 %172, i32* @junk_work_tree, align 4
  %173 = call i32 @strbuf_reset(%struct.strbuf* %9)
  %174 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %175)
  %177 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @real_path(i8* %180)
  %182 = call i32 (i8*, i8*, ...) @write_file(i8* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %181)
  %183 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i8* (...) @get_git_common_dir()
  %186 = call i32 @real_path(i8* %185)
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 (i8*, i8*, ...) @write_file(i8* %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %186, i8* %187)
  %189 = call i32 @strbuf_reset(%struct.strbuf* %9)
  %190 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %191)
  %193 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @oid_to_hex(i32* @null_oid)
  %196 = call i32 (i8*, i8*, ...) @write_file(i8* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %195)
  %197 = call i32 @strbuf_reset(%struct.strbuf* %9)
  %198 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %199)
  %201 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 (i8*, i8*, ...) @write_file(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %204 = load i32, i32* @GIT_DIR_ENVIRONMENT, align 4
  %205 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @argv_array_pushf(%struct.argv_array* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %204, i8* %206)
  %208 = load i32, i32* @GIT_WORK_TREE_ENVIRONMENT, align 4
  %209 = load i8*, i8** %4, align 8
  %210 = call i32 @argv_array_pushf(%struct.argv_array* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %208, i8* %209)
  %211 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 0
  store i32 1, i32* %211, align 8
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %223, label %214

214:                                              ; preds = %170
  %215 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 6
  %216 = load %struct.commit*, %struct.commit** %17, align 8
  %217 = getelementptr inbounds %struct.commit, %struct.commit* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = call i32 @oid_to_hex(i32* %218)
  %220 = sext i32 %219 to i64
  %221 = inttoptr i64 %220 to i8*
  %222 = call i32 (%struct.argv_array*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.argv_array* %215, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %221, i8* null)
  br label %236

223:                                              ; preds = %170
  %224 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 6
  %225 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 (%struct.argv_array*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.argv_array* %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %226, i8* null)
  %228 = load %struct.add_opts*, %struct.add_opts** %6, align 8
  %229 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %223
  %233 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 6
  %234 = call i32 @argv_array_push(%struct.argv_array* %233, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %223
  br label %236

236:                                              ; preds = %235, %214
  %237 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %12, i32 0, i32 0
  %238 = load i8**, i8*** %237, align 8
  %239 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  store i8** %238, i8*** %239, align 8
  %240 = call i32 @run_command(%struct.child_process* %11)
  store i32 %240, i32* %15, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %276

244:                                              ; preds = %236
  %245 = load %struct.add_opts*, %struct.add_opts** %6, align 8
  %246 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %271

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 7
  store i32* null, i32** %250, align 8
  %251 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 6
  %252 = call i32 @argv_array_clear(%struct.argv_array* %251)
  %253 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 6
  %254 = call i32 (%struct.argv_array*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.argv_array* %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* null)
  %255 = load %struct.add_opts*, %struct.add_opts** %6, align 8
  %256 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %249
  %260 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 6
  %261 = call i32 @argv_array_push(%struct.argv_array* %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %249
  %263 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %12, i32 0, i32 0
  %264 = load i8**, i8*** %263, align 8
  %265 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  store i8** %264, i8*** %265, align 8
  %266 = call i32 @run_command(%struct.child_process* %11)
  store i32 %266, i32* %15, align 4
  %267 = load i32, i32* %15, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %262
  br label %276

270:                                              ; preds = %262
  br label %271

271:                                              ; preds = %270, %244
  store i32 0, i32* @is_junk, align 4
  %272 = load i32, i32* @junk_work_tree, align 4
  %273 = call i32 @FREE_AND_NULL(i32 %272)
  %274 = load i32, i32* @junk_git_dir, align 4
  %275 = call i32 @FREE_AND_NULL(i32 %274)
  br label %276

276:                                              ; preds = %271, %269, %243
  %277 = load i32, i32* %15, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %276
  %280 = load %struct.add_opts*, %struct.add_opts** %6, align 8
  %281 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %292, label %284

284:                                              ; preds = %279, %276
  %285 = call i32 @strbuf_reset(%struct.strbuf* %9)
  %286 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %287)
  %289 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @unlink_or_warn(i8* %290)
  br label %292

292:                                              ; preds = %284, %279
  %293 = load i32, i32* %15, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %332, label %295

295:                                              ; preds = %292
  %296 = load %struct.add_opts*, %struct.add_opts** %6, align 8
  %297 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %332

300:                                              ; preds = %295
  %301 = call i8* @find_hook(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  store i8* %301, i8** %20, align 8
  %302 = load i8*, i8** %20, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %331

304:                                              ; preds = %300
  %305 = bitcast [3 x i8*]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %305, i8* align 16 bitcast ([3 x i8*]* @__const.add_worktree.env to i8*), i64 24, i1 false)
  %306 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 0
  store i32 0, i32* %306, align 8
  %307 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 2
  store i32 1, i32* %307, align 8
  %308 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  store i32 1, i32* %308, align 4
  %309 = load i8*, i8** %4, align 8
  %310 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 4
  store i8* %309, i8** %310, align 8
  %311 = getelementptr inbounds [3 x i8*], [3 x i8*]* %21, i64 0, i64 0
  %312 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  store i8** %311, i8*** %312, align 8
  %313 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 7
  store i32* null, i32** %313, align 8
  %314 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 5
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** %314, align 8
  %315 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 6
  %316 = load i8*, i8** %20, align 8
  %317 = call i32 @absolute_path(i8* %316)
  %318 = sext i32 %317 to i64
  %319 = inttoptr i64 %318 to i8*
  %320 = call i32 @oid_to_hex(i32* @null_oid)
  %321 = sext i32 %320 to i64
  %322 = inttoptr i64 %321 to i8*
  %323 = load %struct.commit*, %struct.commit** %17, align 8
  %324 = getelementptr inbounds %struct.commit, %struct.commit* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = call i32 @oid_to_hex(i32* %325)
  %327 = sext i32 %326 to i64
  %328 = inttoptr i64 %327 to i8*
  %329 = call i32 (%struct.argv_array*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.argv_array* %315, i8* %319, i8* %322, i8* %328, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8* null)
  %330 = call i32 @run_command(%struct.child_process* %11)
  store i32 %330, i32* %15, align 4
  br label %331

331:                                              ; preds = %304, %300
  br label %332

332:                                              ; preds = %331, %295, %292
  %333 = call i32 @argv_array_clear(%struct.argv_array* %12)
  %334 = call i32 @strbuf_release(%struct.strbuf* %9)
  %335 = call i32 @strbuf_release(%struct.strbuf* %16)
  %336 = call i32 @strbuf_release(%struct.strbuf* %8)
  %337 = call i32 @strbuf_release(%struct.strbuf* %7)
  %338 = call i32 @strbuf_release(%struct.strbuf* %19)
  %339 = load i32, i32* %15, align 4
  ret i32 %339
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @validate_worktree_add(i8*, %struct.add_opts*) #2

declare dso_local i32 @strbuf_check_branch_ref(%struct.strbuf*, i8*) #2

declare dso_local i64 @ref_exists(i8*) #2

declare dso_local i32 @die_if_checked_out(i8*, i32) #2

declare dso_local %struct.commit* @lookup_commit_reference_by_name(i8*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @worktree_basename(i8*, i32*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @sanitize_refname_component(i8*, %struct.strbuf*) #2

declare dso_local i32 @BUG(i8*, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @git_path_buf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @safe_create_leading_directories_const(i8*) #2

declare dso_local i32 @die_errno(i32, i8*) #2

declare dso_local i64 @mkdir(i8*, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @atexit(i32) #2

declare dso_local i32 @sigchain_push_common(i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @write_file(i8*, i8*, ...) #2

declare dso_local i32 @real_path(i8*) #2

declare dso_local i8* @get_git_common_dir(...) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32, i8*) #2

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i32 @FREE_AND_NULL(i32) #2

declare dso_local i32 @unlink_or_warn(i8*) #2

declare dso_local i8* @find_hook(i8*) #2

declare dso_local i32 @absolute_path(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
