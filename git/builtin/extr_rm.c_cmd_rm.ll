; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rm.c_cmd_rm.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rm.c_cmd_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.cache_entry = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.strbuf = type { i32 }
%struct.pathspec = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.object_id = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@git_default_config = common dso_local global i32 0, align 4
@builtin_rm_options = common dso_local global i32 0, align 4
@builtin_rm_usage = common dso_local global i32 0, align 4
@index_only = common dso_local global i32 0, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@PATHSPEC_PREFER_CWD = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@REFRESH_QUIET = common dso_local global i32 0, align 4
@REFRESH_UNMERGED = common dso_local global i32 0, align 4
@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"please stage your changes to .gitmodules or stash them to proceed\00", align 1
@ignore_unmatch = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"pathspec '%s' did not match any files\00", align 1
@recursive = common dso_local global i32 0, align 4
@MATCHED_RECURSIVELY = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"not removing '%s' recursively without -r\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@force = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"rm '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"git rm: unable to remove %s\00", align 1
@show_only = common dso_local global i64 0, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"could not remove '%s'\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"git rm: '%s'\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@SKIP_IF_UNCHANGED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Unable to write new index file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_rm(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lock_file, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pathspec, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cache_entry*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.object_id, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.strbuf, align 4
  %20 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = bitcast %struct.lock_file* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %22 = load i32, i32* @git_default_config, align 4
  %23 = call i32 @git_config(i32 %22, i32* null)
  %24 = load i32, i32* %5, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @builtin_rm_options, align 4
  %28 = load i32, i32* @builtin_rm_usage, align 4
  %29 = call i32 @parse_options(i32 %24, i8** %25, i8* %26, i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @builtin_rm_usage, align 4
  %34 = load i32, i32* @builtin_rm_options, align 4
  %35 = call i32 @usage_with_options(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i32, i32* @index_only, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 (...) @setup_work_tree()
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %43 = call i32 @hold_locked_index(%struct.lock_file* %8, i32 %42)
  %44 = call i64 (...) @read_cache()
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 (i32, ...) @die(i32 %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* @PATHSPEC_PREFER_CWD, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = call i32 @parse_pathspec(%struct.pathspec* %10, i32 0, i32 %50, i8* %51, i8** %52)
  %54 = load i32, i32* @REFRESH_QUIET, align 4
  %55 = load i32, i32* @REFRESH_UNMERGED, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @refresh_index(i32* @the_index, i32 %56, %struct.pathspec* %10, i32* null, i32* null)
  %58 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @xcalloc(i32 %59, i32 1)
  store i8* %60, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %115, %49
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @active_nr, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %118

65:                                               ; preds = %61
  %66 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %66, i64 %68
  %70 = load %struct.cache_entry*, %struct.cache_entry** %69, align 8
  store %struct.cache_entry* %70, %struct.cache_entry** %12, align 8
  %71 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @ce_path_match(i32* @the_index, %struct.cache_entry* %71, %struct.pathspec* %10, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %115

76:                                               ; preds = %65
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 1), align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 0), align 8
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 2), align 8
  %81 = call i32 @ALLOC_GROW(%struct.TYPE_6__* %77, i32 %79, i32 %80)
  %82 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %83 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @xstrdup(i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 1), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 0), align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i8* %85, i8** %90, align 8
  %91 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %92 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @S_ISGITLINK(i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 1), align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 0), align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i64 %94, i64* %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 1), align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 0), align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 0), align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %76
  %109 = call i32 @is_staging_gitmodules_ok(i32* @the_index)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %113 = call i32 (i32, ...) @die(i32 %112)
  br label %114

114:                                              ; preds = %111, %108, %76
  br label %115

115:                                              ; preds = %114, %75
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %61

118:                                              ; preds = %61
  %119 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %186

122:                                              ; preds = %118
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %177, %122
  %124 = load i32, i32* %9, align 4
  %125 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %10, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %180

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %10, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %13, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %128
  %143 = load i32, i32* @ignore_unmatch, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i8*, i8** %13, align 8
  %148 = call i32 (i32, ...) @die(i32 %146, i8* %147)
  br label %149

149:                                              ; preds = %145, %142
  br label %151

150:                                              ; preds = %128
  store i32 1, i32* %14, align 4
  br label %151

151:                                              ; preds = %150, %149
  %152 = load i32, i32* @recursive, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %176, label %154

154:                                              ; preds = %151
  %155 = load i8*, i8** %11, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = load i8, i8* @MATCHED_RECURSIVELY, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %154
  %165 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i8*, i8** %13, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i8*, i8** %13, align 8
  br label %173

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %170
  %174 = phi i8* [ %171, %170 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %172 ]
  %175 = call i32 (i32, ...) @die(i32 %165, i8* %174)
  br label %176

176:                                              ; preds = %173, %154, %151
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %123

180:                                              ; preds = %123
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %180
  %184 = call i32 @exit(i32 0) #4
  unreachable

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185, %118
  %187 = load i32, i32* @index_only, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = call i32 (...) @submodules_absorb_gitdir_if_needed()
  br label %191

191:                                              ; preds = %189, %186
  %192 = load i32, i32* @force, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %191
  %195 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.object_id* %15)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i32 @oidclr(%struct.object_id* %15)
  br label %199

199:                                              ; preds = %197, %194
  %200 = load i32, i32* @index_only, align 4
  %201 = call i64 @check_local_mod(%struct.object_id* %15, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = call i32 @exit(i32 1) #4
  unreachable

205:                                              ; preds = %199
  br label %206

206:                                              ; preds = %205, %191
  store i32 0, i32* %9, align 4
  br label %207

207:                                              ; preds = %232, %206
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 0), align 8
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %235

211:                                              ; preds = %207
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 1), align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  store i8* %217, i8** %16, align 8
  %218 = load i32, i32* @quiet, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %211
  %221 = load i8*, i8** %16, align 8
  %222 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %221)
  br label %223

223:                                              ; preds = %220, %211
  %224 = load i8*, i8** %16, align 8
  %225 = call i64 @remove_file_from_cache(i8* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %229 = load i8*, i8** %16, align 8
  %230 = call i32 (i32, ...) @die(i32 %228, i8* %229)
  br label %231

231:                                              ; preds = %227, %223
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %207

235:                                              ; preds = %207
  %236 = load i64, i64* @show_only, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 0, i32* %4, align 4
  br label %310

239:                                              ; preds = %235
  %240 = load i32, i32* @index_only, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %300, label %242

242:                                              ; preds = %239
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %243 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %243, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %9, align 4
  br label %244

244:                                              ; preds = %290, %242
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 0), align 8
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %293

248:                                              ; preds = %244
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 1), align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  store i8* %254, i8** %20, align 8
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @list, i32 0, i32 1), align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %248
  %263 = call i32 @strbuf_reset(%struct.strbuf* %19)
  %264 = load i8*, i8** %20, align 8
  %265 = call i32 @strbuf_addstr(%struct.strbuf* %19, i8* %264)
  %266 = call i64 @remove_dir_recursively(%struct.strbuf* %19, i32 0)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %262
  %269 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %270 = load i8*, i8** %20, align 8
  %271 = call i32 (i32, ...) @die(i32 %269, i8* %270)
  br label %272

272:                                              ; preds = %268, %262
  store i32 1, i32* %17, align 4
  %273 = load i8*, i8** %20, align 8
  %274 = call i32 @remove_path_from_gitmodules(i8* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %272
  store i32 1, i32* %18, align 4
  br label %277

277:                                              ; preds = %276, %272
  br label %290

278:                                              ; preds = %248
  %279 = load i8*, i8** %20, align 8
  %280 = call i32 @remove_path(i8* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  store i32 1, i32* %17, align 4
  br label %290

283:                                              ; preds = %278
  %284 = load i32, i32* %17, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = load i8*, i8** %20, align 8
  %288 = call i32 @die_errno(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %287)
  br label %289

289:                                              ; preds = %286, %283
  br label %290

290:                                              ; preds = %289, %282, %277
  %291 = load i32, i32* %9, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %9, align 4
  br label %244

293:                                              ; preds = %244
  %294 = call i32 @strbuf_release(%struct.strbuf* %19)
  %295 = load i32, i32* %18, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = call i32 @stage_updated_gitmodules(i32* @the_index)
  br label %299

299:                                              ; preds = %297, %293
  br label %300

300:                                              ; preds = %299, %239
  %301 = load i32, i32* @COMMIT_LOCK, align 4
  %302 = load i32, i32* @SKIP_IF_UNCHANGED, align 4
  %303 = or i32 %301, %302
  %304 = call i64 @write_locked_index(i32* @the_index, %struct.lock_file* %8, i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %300
  %307 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %308 = call i32 (i32, ...) @die(i32 %307)
  br label %309

309:                                              ; preds = %306, %300
  store i32 0, i32* %4, align 4
  br label %310

310:                                              ; preds = %309, %238
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, i32, i32, i32) #2

declare dso_local i32 @usage_with_options(i32, i32) #2

declare dso_local i32 @setup_work_tree(...) #2

declare dso_local i32 @hold_locked_index(%struct.lock_file*, i32) #2

declare dso_local i64 @read_cache(...) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @parse_pathspec(%struct.pathspec*, i32, i32, i8*, i8**) #2

declare dso_local i32 @refresh_index(i32*, i32, %struct.pathspec*, i32*, i32*) #2

declare dso_local i8* @xcalloc(i32, i32) #2

declare dso_local i32 @ce_path_match(i32*, %struct.cache_entry*, %struct.pathspec*, i8*) #2

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i8* @xstrdup(i32) #2

declare dso_local i64 @S_ISGITLINK(i32) #2

declare dso_local i32 @is_staging_gitmodules_ok(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @submodules_absorb_gitdir_if_needed(...) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @oidclr(%struct.object_id*) #2

declare dso_local i64 @check_local_mod(%struct.object_id*, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i64 @remove_file_from_cache(i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i64 @remove_dir_recursively(%struct.strbuf*, i32) #2

declare dso_local i32 @remove_path_from_gitmodules(i8*) #2

declare dso_local i32 @remove_path(i8*) #2

declare dso_local i32 @die_errno(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @stage_updated_gitmodules(i32*) #2

declare dso_local i64 @write_locked_index(i32*, %struct.lock_file*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
