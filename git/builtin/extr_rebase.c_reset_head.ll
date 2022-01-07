; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_reset_head.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_reset_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.strbuf = type { i64, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.object_id = type { i32 }
%struct.tree_desc = type { i64, i32* }
%struct.unpack_trees_options = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tree = type { i32 }

@RESET_HEAD_DETACH = common dso_local global i32 0, align 4
@RESET_HEAD_HARD = common dso_local global i32 0, align 4
@RESET_HEAD_RUN_POST_CHECKOUT_HOOK = common dso_local global i32 0, align 4
@RESET_HEAD_REFS_ONLY = common dso_local global i32 0, align 4
@RESET_ORIG_HEAD = common dso_local global i32 0, align 4
@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Not a fully qualified branch: '%s'\00", align 1
@LOCK_REPORT_ON_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"could not determine HEAD revision\00", align 1
@the_repository = common dso_local global %struct.TYPE_5__* null, align 8
@oneway_merge = common dso_local global i32 0, align 4
@twoway_merge = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"could not read index\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to find tree of %s\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"could not write index\00", align 1
@GIT_REFLOG_ACTION_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ORIG_HEAD\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"updating ORIG_HEAD\00", align 1
@UPDATE_REFS_MSG_ON_ERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"updating HEAD\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"post-checkout\00", align 1
@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*, i8*, i32, i8*, i8*)* @reset_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_head(%struct.object_id* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.object_id, align 4
  %19 = alloca [2 x %struct.tree_desc], align 16
  %20 = alloca %struct.lock_file, align 4
  %21 = alloca %struct.unpack_trees_options, align 4
  %22 = alloca %struct.tree*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.strbuf, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.object_id*, align 8
  %27 = alloca %struct.object_id, align 4
  %28 = alloca %struct.object_id*, align 8
  %29 = alloca %struct.object_id, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @RESET_HEAD_DETACH, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @RESET_HEAD_HARD, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @RESET_HEAD_RUN_POST_CHECKOUT_HOOK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @RESET_HEAD_REFS_ONLY, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @RESET_ORIG_HEAD, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %17, align 4
  %47 = bitcast [2 x %struct.tree_desc]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %47, i8 0, i64 32, i1 false)
  %48 = bitcast %struct.lock_file* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %49 = bitcast %struct.strbuf* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store %struct.object_id* null, %struct.object_id** %26, align 8
  store %struct.object_id* null, %struct.object_id** %28, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %6
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @starts_with(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @BUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %52, %6
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @LOCK_REPORT_ON_ERROR, align 4
  %64 = call i64 @hold_locked_index(%struct.lock_file* %20, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 -1, i32* %30, align 4
  br label %273

67:                                               ; preds = %62, %59
  %68 = load %struct.object_id*, %struct.object_id** %7, align 8
  %69 = icmp ne %struct.object_id* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70, %67
  %74 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.object_id* %18)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 (i32, ...) @error(i32 %77)
  store i32 %78, i32* %30, align 4
  br label %273

79:                                               ; preds = %73, %70
  %80 = load %struct.object_id*, %struct.object_id** %7, align 8
  %81 = icmp ne %struct.object_id* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store %struct.object_id* %18, %struct.object_id** %7, align 8
  br label %83

83:                                               ; preds = %82, %79
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %176

87:                                               ; preds = %83
  %88 = call i32 @memset(%struct.unpack_trees_options* %21, i32 0, i32 28)
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @setup_unpack_trees_porcelain(%struct.unpack_trees_options* %21, i8* %89)
  %91 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 0
  store i32 1, i32* %91, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 6
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 5
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = load i32, i32* @oneway_merge, align 4
  br label %106

104:                                              ; preds = %87
  %105 = load i32, i32* @twoway_merge, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 4
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 2
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 3
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %113, %106
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %117 = call i64 @repo_read_index_unmerged(%struct.TYPE_5__* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %121 = call i32 (i32, ...) @error(i32 %120)
  store i32 %121, i32* %30, align 4
  br label %273

122:                                              ; preds = %115
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %127 = load i32, i32* %31, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %31, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds [2 x %struct.tree_desc], [2 x %struct.tree_desc]* %19, i64 0, i64 %129
  %131 = call i32 @fill_tree_descriptor(%struct.TYPE_5__* %126, %struct.tree_desc* %130, %struct.object_id* %18)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %125
  %134 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %135 = call i32 @oid_to_hex(%struct.object_id* %18)
  %136 = call i32 (i32, ...) @error(i32 %134, i32 %135)
  store i32 %136, i32* %30, align 4
  br label %273

137:                                              ; preds = %125, %122
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %139 = load i32, i32* %31, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %31, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds [2 x %struct.tree_desc], [2 x %struct.tree_desc]* %19, i64 0, i64 %141
  %143 = load %struct.object_id*, %struct.object_id** %7, align 8
  %144 = call i32 @fill_tree_descriptor(%struct.TYPE_5__* %138, %struct.tree_desc* %142, %struct.object_id* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %137
  %147 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %148 = load %struct.object_id*, %struct.object_id** %7, align 8
  %149 = call i32 @oid_to_hex(%struct.object_id* %148)
  %150 = call i32 (i32, ...) @error(i32 %147, i32 %149)
  store i32 %150, i32* %30, align 4
  br label %273

151:                                              ; preds = %137
  %152 = load i32, i32* %31, align 4
  %153 = getelementptr inbounds [2 x %struct.tree_desc], [2 x %struct.tree_desc]* %19, i64 0, i64 0
  %154 = call i64 @unpack_trees(i32 %152, %struct.tree_desc* %153, %struct.unpack_trees_options* %21)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 -1, i32* %30, align 4
  br label %273

157:                                              ; preds = %151
  %158 = load %struct.object_id*, %struct.object_id** %7, align 8
  %159 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %158)
  store %struct.tree* %159, %struct.tree** %22, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.tree*, %struct.tree** %22, align 8
  %165 = call i32 @prime_cache_tree(%struct.TYPE_5__* %160, i32 %163, %struct.tree* %164)
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @COMMIT_LOCK, align 4
  %170 = call i64 @write_locked_index(i32 %168, %struct.lock_file* %20, i32 %169)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %157
  %173 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %174 = call i32 (i32, ...) @error(i32 %173)
  store i32 %174, i32* %30, align 4
  br label %273

175:                                              ; preds = %157
  br label %176

176:                                              ; preds = %175, %86
  %177 = load i32, i32* @GIT_REFLOG_ACTION_ENVIRONMENT, align 4
  %178 = call i8* @getenv(i32 %177)
  store i8* %178, i8** %23, align 8
  %179 = load i8*, i8** %23, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i8*, i8** %23, align 8
  br label %184

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i8* [ %182, %181 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %183 ]
  %186 = call i32 @strbuf_addf(%struct.strbuf* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %185)
  %187 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %25, align 8
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %219

191:                                              ; preds = %184
  %192 = call i64 @get_oid(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.object_id* %29)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  store %struct.object_id* %29, %struct.object_id** %28, align 8
  br label %195

195:                                              ; preds = %194, %191
  %196 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.object_id* %27)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %211, label %198

198:                                              ; preds = %195
  store %struct.object_id* %27, %struct.object_id** %26, align 8
  %199 = load i8*, i8** %11, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = call i32 @strbuf_addstr(%struct.strbuf* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %203 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  store i8* %204, i8** %11, align 8
  br label %205

205:                                              ; preds = %201, %198
  %206 = load i8*, i8** %11, align 8
  %207 = load %struct.object_id*, %struct.object_id** %26, align 8
  %208 = load %struct.object_id*, %struct.object_id** %28, align 8
  %209 = load i32, i32* @UPDATE_REFS_MSG_ON_ERR, align 4
  %210 = call i32 @update_ref(i8* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.object_id* %207, %struct.object_id* %208, i32 0, i32 %209)
  br label %218

211:                                              ; preds = %195
  %212 = load %struct.object_id*, %struct.object_id** %28, align 8
  %213 = icmp ne %struct.object_id* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.object_id*, %struct.object_id** %28, align 8
  %216 = call i32 @delete_ref(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.object_id* %215, i32 0)
  br label %217

217:                                              ; preds = %214, %211
  br label %218

218:                                              ; preds = %217, %205
  br label %219

219:                                              ; preds = %218, %184
  %220 = load i8*, i8** %12, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = load i64, i64* %25, align 8
  %224 = call i32 @strbuf_setlen(%struct.strbuf* %24, i64 %223)
  %225 = call i32 @strbuf_addstr(%struct.strbuf* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %226 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  store i8* %227, i8** %12, align 8
  br label %228

228:                                              ; preds = %222, %219
  %229 = load i8*, i8** %9, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %244, label %231

231:                                              ; preds = %228
  %232 = load i8*, i8** %12, align 8
  %233 = load %struct.object_id*, %struct.object_id** %7, align 8
  %234 = load %struct.object_id*, %struct.object_id** %26, align 8
  %235 = load i32, i32* %13, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load i32, i32* @REF_NO_DEREF, align 4
  br label %240

239:                                              ; preds = %231
  br label %240

240:                                              ; preds = %239, %237
  %241 = phi i32 [ %238, %237 ], [ 0, %239 ]
  %242 = load i32, i32* @UPDATE_REFS_MSG_ON_ERR, align 4
  %243 = call i32 @update_ref(i8* %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.object_id* %233, %struct.object_id* %234, i32 %241, i32 %242)
  store i32 %243, i32* %30, align 4
  br label %257

244:                                              ; preds = %228
  %245 = load i8*, i8** %12, align 8
  %246 = load i8*, i8** %9, align 8
  %247 = load %struct.object_id*, %struct.object_id** %7, align 8
  %248 = load i32, i32* @UPDATE_REFS_MSG_ON_ERR, align 4
  %249 = call i32 @update_ref(i8* %245, i8* %246, %struct.object_id* %247, %struct.object_id* null, i32 0, i32 %248)
  store i32 %249, i32* %30, align 4
  %250 = load i32, i32* %30, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %244
  %253 = load i8*, i8** %9, align 8
  %254 = load i8*, i8** %12, align 8
  %255 = call i32 @create_symref(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %253, i8* %254)
  store i32 %255, i32* %30, align 4
  br label %256

256:                                              ; preds = %252, %244
  br label %257

257:                                              ; preds = %256, %240
  %258 = load i32, i32* %15, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %257
  %261 = load %struct.object_id*, %struct.object_id** %26, align 8
  %262 = icmp ne %struct.object_id* %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = load %struct.object_id*, %struct.object_id** %26, align 8
  br label %266

265:                                              ; preds = %260
  br label %266

266:                                              ; preds = %265, %263
  %267 = phi %struct.object_id* [ %264, %263 ], [ @null_oid, %265 ]
  %268 = call i32 @oid_to_hex(%struct.object_id* %267)
  %269 = load %struct.object_id*, %struct.object_id** %7, align 8
  %270 = call i32 @oid_to_hex(%struct.object_id* %269)
  %271 = call i32 @run_hook_le(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %268, i32 %270, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32* null)
  br label %272

272:                                              ; preds = %266, %257
  br label %273

273:                                              ; preds = %272, %172, %156, %146, %133, %119, %76, %66
  %274 = call i32 @strbuf_release(%struct.strbuf* %24)
  %275 = call i32 @rollback_lock_file(%struct.lock_file* %20)
  br label %276

276:                                              ; preds = %279, %273
  %277 = load i32, i32* %31, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %276
  %280 = load i32, i32* %31, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %31, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [2 x %struct.tree_desc], [2 x %struct.tree_desc]* %19, i64 0, i64 %282
  %284 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 16
  %286 = inttoptr i64 %285 to i8*
  %287 = call i32 @free(i8* %286)
  br label %276

288:                                              ; preds = %276
  %289 = load i32, i32* %30, align 4
  ret i32 %289
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @starts_with(i8*, i8*) #2

declare dso_local i32 @BUG(i8*, i8*) #2

declare dso_local i64 @hold_locked_index(%struct.lock_file*, i32) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @memset(%struct.unpack_trees_options*, i32, i32) #2

declare dso_local i32 @setup_unpack_trees_porcelain(%struct.unpack_trees_options*, i8*) #2

declare dso_local i64 @repo_read_index_unmerged(%struct.TYPE_5__*) #2

declare dso_local i32 @fill_tree_descriptor(%struct.TYPE_5__*, %struct.tree_desc*, %struct.object_id*) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i64 @unpack_trees(i32, %struct.tree_desc*, %struct.unpack_trees_options*) #2

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #2

declare dso_local i32 @prime_cache_tree(%struct.TYPE_5__*, i32, %struct.tree*) #2

declare dso_local i64 @write_locked_index(i32, %struct.lock_file*, i32) #2

declare dso_local i8* @getenv(i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @update_ref(i8*, i8*, %struct.object_id*, %struct.object_id*, i32, i32) #2

declare dso_local i32 @delete_ref(i32*, i8*, %struct.object_id*, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @create_symref(i8*, i8*, i8*) #2

declare dso_local i32 @run_hook_le(i32*, i8*, i32, i32, i8*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
