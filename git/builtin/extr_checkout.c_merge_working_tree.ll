; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_merge_working_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_merge_working_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.strbuf = type { i32* }
%struct.checkout_opts = type { i32, i32, i64, i64, i64, i32, i64, i64 }
%struct.branch_info = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.tree = type { i32, i32 }
%struct.tree_desc = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.merge_options = type { i8*, %struct.strbuf, i32*, i32*, i64 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"'switch --orphan' should never accept a commit as starting point\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_7__* null, align 8
@the_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@REFRESH_QUIET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"you need to resolve your current index first\00", align 1
@twoway_merge = common dso_local global i32 0, align 4
@DIR_SHOW_IGNORED = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"cannot continue with staged changes in the following files:\0A%s\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@active_cache_tree = common dso_local global i64 0, align 8
@WRITE_TREE_SILENT = common dso_local global i32 0, align 4
@WRITE_TREE_REPAIR = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"unable to write new index file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.checkout_opts*, %struct.branch_info*, %struct.branch_info*, i32*)* @merge_working_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_working_tree(%struct.checkout_opts* %0, %struct.branch_info* %1, %struct.branch_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.checkout_opts*, align 8
  %7 = alloca %struct.branch_info*, align 8
  %8 = alloca %struct.branch_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lock_file, align 4
  %12 = alloca %struct.tree*, align 8
  %13 = alloca [2 x %struct.tree_desc], align 4
  %14 = alloca %struct.tree*, align 8
  %15 = alloca %struct.unpack_trees_options, align 8
  %16 = alloca %struct.tree*, align 8
  %17 = alloca %struct.tree*, align 8
  %18 = alloca %struct.merge_options, align 8
  %19 = alloca %struct.strbuf, align 8
  %20 = alloca %struct.strbuf, align 8
  store %struct.checkout_opts* %0, %struct.checkout_opts** %6, align 8
  store %struct.branch_info* %1, %struct.branch_info** %7, align 8
  store %struct.branch_info* %2, %struct.branch_info** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = bitcast %struct.lock_file* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %22 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %23 = call i32 @hold_locked_index(%struct.lock_file* %11, i32 %22)
  %24 = call i64 @read_cache_preload(i32* null)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @error(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %304

29:                                               ; preds = %4
  %30 = call i32 (...) @resolve_undo_clear()
  %31 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %32 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %37 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %42 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @BUG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_hash_algo, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call %struct.tree* @parse_tree_indirect(i32* %50)
  store %struct.tree* %51, %struct.tree** %12, align 8
  br label %57

52:                                               ; preds = %35, %29
  %53 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %54 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call %struct.tree* @get_commit_tree(%struct.TYPE_9__* %55)
  store %struct.tree* %56, %struct.tree** %12, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %59 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.tree*, %struct.tree** %12, align 8
  %64 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @reset_tree(%struct.tree* %63, %struct.checkout_opts* %64, i32 1, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %304

71:                                               ; preds = %62
  br label %259

72:                                               ; preds = %57
  %73 = call i32 @memset(%struct.unpack_trees_options* %15, i32 0, i32 56)
  %74 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 9
  store i32* @the_index, i32** %75, align 8
  %76 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 8
  store i32* @the_index, i32** %76, align 8
  %77 = call i32 @setup_unpack_trees_porcelain(%struct.unpack_trees_options* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @REFRESH_QUIET, align 4
  %79 = call i32 @refresh_cache(i32 %78)
  %80 = call i64 (...) @unmerged_cache()
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @error(i32 %83)
  store i32 1, i32* %5, align 4
  br label %304

85:                                               ; preds = %72
  %86 = call i32 (...) @is_cache_unborn()
  %87 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 7
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 2
  store i32 1, i32* %89, align 8
  %90 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %91 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.branch_info*, %struct.branch_info** %7, align 8
  %96 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br label %99

99:                                               ; preds = %94, %85
  %100 = phi i1 [ false, %85 ], [ %98, %94 ]
  %101 = zext i1 %100 to i32
  %102 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %104 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 6
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @twoway_merge, align 4
  %108 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 5
  store i32 %107, i32* %108, align 8
  %109 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %110 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %99
  %114 = call %struct.TYPE_6__* @xcalloc(i32 1, i32 4)
  %115 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 4
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %115, align 8
  %116 = load i32, i32* @DIR_SHOW_IGNORED, align 4
  %117 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = call i32 @setup_standard_excludes(%struct.TYPE_6__* %123)
  br label %125

125:                                              ; preds = %113, %99
  %126 = load %struct.branch_info*, %struct.branch_info** %7, align 8
  %127 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = icmp ne %struct.TYPE_9__* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.branch_info*, %struct.branch_info** %7, align 8
  %132 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  br label %140

136:                                              ; preds = %125
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_hash_algo, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  br label %140

140:                                              ; preds = %136, %130
  %141 = phi i32* [ %135, %130 ], [ %139, %136 ]
  %142 = call %struct.tree* @parse_tree_indirect(i32* %141)
  store %struct.tree* %142, %struct.tree** %14, align 8
  %143 = getelementptr inbounds [2 x %struct.tree_desc], [2 x %struct.tree_desc]* %13, i64 0, i64 0
  %144 = load %struct.tree*, %struct.tree** %14, align 8
  %145 = getelementptr inbounds %struct.tree, %struct.tree* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.tree*, %struct.tree** %14, align 8
  %148 = getelementptr inbounds %struct.tree, %struct.tree* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @init_tree_desc(%struct.tree_desc* %143, i32 %146, i32 %149)
  %151 = load %struct.tree*, %struct.tree** %12, align 8
  %152 = call i32 @parse_tree(%struct.tree* %151)
  %153 = load %struct.tree*, %struct.tree** %12, align 8
  store %struct.tree* %153, %struct.tree** %14, align 8
  %154 = getelementptr inbounds [2 x %struct.tree_desc], [2 x %struct.tree_desc]* %13, i64 0, i64 1
  %155 = load %struct.tree*, %struct.tree** %14, align 8
  %156 = getelementptr inbounds %struct.tree, %struct.tree* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tree*, %struct.tree** %14, align 8
  %159 = getelementptr inbounds %struct.tree, %struct.tree* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @init_tree_desc(%struct.tree_desc* %154, i32 %157, i32 %160)
  %162 = getelementptr inbounds [2 x %struct.tree_desc], [2 x %struct.tree_desc]* %13, i64 0, i64 0
  %163 = call i32 @unpack_trees(i32 2, %struct.tree_desc* %162, %struct.unpack_trees_options* %15)
  store i32 %163, i32* %10, align 4
  %164 = call i32 @clear_unpack_trees_porcelain(%struct.unpack_trees_options* %15)
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %258

167:                                              ; preds = %140
  %168 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %169 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %170 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %171 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %167
  store i32 1, i32* %5, align 4
  br label %304

175:                                              ; preds = %167
  %176 = load %struct.branch_info*, %struct.branch_info** %7, align 8
  %177 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = icmp ne %struct.TYPE_9__* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  store i32 1, i32* %5, align 4
  br label %304

181:                                              ; preds = %175
  %182 = load %struct.branch_info*, %struct.branch_info** %7, align 8
  %183 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = call %struct.tree* @get_commit_tree(%struct.TYPE_9__* %184)
  store %struct.tree* %185, %struct.tree** %17, align 8
  %186 = load i32, i32* @the_repository, align 4
  %187 = load %struct.tree*, %struct.tree** %17, align 8
  %188 = call i64 @repo_index_has_changes(i32 %186, %struct.tree* %187, %struct.strbuf* %19)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %181
  %191 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %192 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 (i32, ...) @die(i32 %191, i32* %193)
  br label %195

195:                                              ; preds = %190, %181
  %196 = call i32 @strbuf_release(%struct.strbuf* %19)
  %197 = call i32 @add_files_to_cache(i32* null, i32* null, i32 0)
  %198 = load i32, i32* @the_repository, align 4
  %199 = call i32 @init_merge_options(%struct.merge_options* %18, i32 %198)
  %200 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 4
  store i64 0, i64* %200, align 8
  %201 = load i32, i32* @the_repository, align 4
  %202 = call %struct.tree* @write_in_core_index_as_tree(i32 %201)
  store %struct.tree* %202, %struct.tree** %16, align 8
  %203 = load %struct.tree*, %struct.tree** %12, align 8
  %204 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = call i32 @reset_tree(%struct.tree* %203, %struct.checkout_opts* %204, i32 1, i32* %205)
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %195
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %5, align 4
  br label %304

211:                                              ; preds = %195
  %212 = load %struct.branch_info*, %struct.branch_info** %7, align 8
  %213 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 3
  store i32* %214, i32** %215, align 8
  %216 = load %struct.branch_info*, %struct.branch_info** %7, align 8
  %217 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = icmp eq i32* %218, null
  br i1 %219, label %220, label %231

220:                                              ; preds = %211
  %221 = load %struct.branch_info*, %struct.branch_info** %7, align 8
  %222 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %221, i32 0, i32 0
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* @DEFAULT_ABBREV, align 4
  %227 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %20, i32* %225, i32 %226)
  %228 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 3
  store i32* %229, i32** %230, align 8
  br label %231

231:                                              ; preds = %220, %211
  %232 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %233 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 2
  store i32* %234, i32** %235, align 8
  %236 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %236, align 8
  %237 = load %struct.tree*, %struct.tree** %12, align 8
  %238 = load %struct.tree*, %struct.tree** %16, align 8
  %239 = load %struct.tree*, %struct.tree** %17, align 8
  %240 = call i32 @merge_trees(%struct.merge_options* %18, %struct.tree* %237, %struct.tree* %238, %struct.tree* %239)
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %231
  %244 = call i32 @exit(i32 128) #4
  unreachable

245:                                              ; preds = %231
  %246 = load %struct.tree*, %struct.tree** %12, align 8
  %247 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %248 = load i32*, i32** %9, align 8
  %249 = call i32 @reset_tree(%struct.tree* %246, %struct.checkout_opts* %247, i32 0, i32* %248)
  store i32 %249, i32* %10, align 4
  %250 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 1
  %251 = call i32 @strbuf_release(%struct.strbuf* %250)
  %252 = call i32 @strbuf_release(%struct.strbuf* %20)
  %253 = load i32, i32* %10, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %245
  %256 = load i32, i32* %10, align 4
  store i32 %256, i32* %5, align 4
  br label %304

257:                                              ; preds = %245
  br label %258

258:                                              ; preds = %257, %140
  br label %259

259:                                              ; preds = %258, %71
  %260 = load i64, i64* @active_cache_tree, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %259
  %263 = call i64 (...) @cache_tree()
  store i64 %263, i64* @active_cache_tree, align 8
  br label %264

264:                                              ; preds = %262, %259
  %265 = load i64, i64* @active_cache_tree, align 8
  %266 = call i32 @cache_tree_fully_valid(i64 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %264
  %269 = load i32, i32* @WRITE_TREE_SILENT, align 4
  %270 = load i32, i32* @WRITE_TREE_REPAIR, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @cache_tree_update(i32* @the_index, i32 %271)
  br label %273

273:                                              ; preds = %268, %264
  %274 = load i32, i32* @COMMIT_LOCK, align 4
  %275 = call i64 @write_locked_index(i32* @the_index, %struct.lock_file* %11, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %279 = call i32 (i32, ...) @die(i32 %278)
  br label %280

280:                                              ; preds = %277, %273
  %281 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %282 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %303, label %285

285:                                              ; preds = %280
  %286 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %287 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %303, label %290

290:                                              ; preds = %285
  %291 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %292 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %291, i32 0, i32 0
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %292, align 8
  %294 = icmp ne %struct.TYPE_9__* %293, null
  br i1 %294, label %295, label %303

295:                                              ; preds = %290
  %296 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %297 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %296, i32 0, i32 0
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %301 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %300, i32 0, i32 0
  %302 = call i32 @show_local_changes(%struct.TYPE_8__* %299, i32* %301)
  br label %303

303:                                              ; preds = %295, %290, %285, %280
  store i32 0, i32* %5, align 4
  br label %304

304:                                              ; preds = %303, %255, %209, %180, %174, %82, %69, %26
  %305 = load i32, i32* %5, align 4
  ret i32 %305
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hold_locked_index(%struct.lock_file*, i32) #2

declare dso_local i64 @read_cache_preload(i32*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @resolve_undo_clear(...) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local %struct.tree* @parse_tree_indirect(i32*) #2

declare dso_local %struct.tree* @get_commit_tree(%struct.TYPE_9__*) #2

declare dso_local i32 @reset_tree(%struct.tree*, %struct.checkout_opts*, i32, i32*) #2

declare dso_local i32 @memset(%struct.unpack_trees_options*, i32, i32) #2

declare dso_local i32 @setup_unpack_trees_porcelain(%struct.unpack_trees_options*, i8*) #2

declare dso_local i32 @refresh_cache(i32) #2

declare dso_local i64 @unmerged_cache(...) #2

declare dso_local i32 @is_cache_unborn(...) #2

declare dso_local %struct.TYPE_6__* @xcalloc(i32, i32) #2

declare dso_local i32 @setup_standard_excludes(%struct.TYPE_6__*) #2

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #2

declare dso_local i32 @parse_tree(%struct.tree*) #2

declare dso_local i32 @unpack_trees(i32, %struct.tree_desc*, %struct.unpack_trees_options*) #2

declare dso_local i32 @clear_unpack_trees_porcelain(%struct.unpack_trees_options*) #2

declare dso_local i64 @repo_index_has_changes(i32, %struct.tree*, %struct.strbuf*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @add_files_to_cache(i32*, i32*, i32) #2

declare dso_local i32 @init_merge_options(%struct.merge_options*, i32) #2

declare dso_local %struct.tree* @write_in_core_index_as_tree(i32) #2

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, i32*, i32) #2

declare dso_local i32 @merge_trees(%struct.merge_options*, %struct.tree*, %struct.tree*, %struct.tree*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @cache_tree(...) #2

declare dso_local i32 @cache_tree_fully_valid(i64) #2

declare dso_local i32 @cache_tree_update(i32*, i32) #2

declare dso_local i64 @write_locked_index(i32*, %struct.lock_file*, i32) #2

declare dso_local i32 @show_local_changes(%struct.TYPE_8__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
