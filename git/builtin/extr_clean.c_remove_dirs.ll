; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clean.c_remove_dirs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clean.c_remove_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dirent = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@REMOVE_DIR_KEEP_NESTED_GIT = common dso_local global i32 0, align 4
@msg_would_skip_git_dir = common dso_local global i32 0, align 4
@msg_skip_git_dir = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@msg_warn_remove_failed = common dso_local global i32 0, align 4
@msg_warn_lstat_failed = common dso_local global i32 0, align 4
@msg_would_remove = common dso_local global i32 0, align 4
@msg_remove = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*, i32, i32, i32, i32*)* @remove_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_dirs(%struct.strbuf* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca %struct.dirent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.string_list, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.stat, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %27 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %28 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %19, align 4
  %31 = bitcast %struct.string_list* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %32 = load i32*, i32** %12, align 8
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @REMOVE_DIR_KEEP_NESTED_GIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %6
  %38 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %39 = call i64 @is_nonbare_repository_dir(%struct.strbuf* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @quote_path_relative(i32 %47, i8* %48, %struct.strbuf* %14)
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @msg_would_skip_git_dir, align 4
  %54 = call i8* @_(i32 %53)
  br label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @msg_skip_git_dir, align 4
  %57 = call i8* @_(i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i8* [ %54, %52 ], [ %57, %55 ]
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @printf(i8* %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %41
  %64 = load i32*, i32** %12, align 8
  store i32 0, i32* %64, align 4
  br label %283

65:                                               ; preds = %37, %6
  %66 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @opendir(i32 %68)
  store i32* %69, i32** %13, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %101, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %81

76:                                               ; preds = %72
  %77 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rmdir(i32 %79)
  br label %81

81:                                               ; preds = %76, %75
  %82 = phi i32 [ 0, %75 ], [ %80, %76 ]
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load i32, i32* @errno, align 4
  store i32 %86, i32* %22, align 4
  %87 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @quote_path_relative(i32 %89, i8* %90, %struct.strbuf* %14)
  %92 = load i32, i32* %22, align 4
  store i32 %92, i32* @errno, align 4
  %93 = load i32, i32* @msg_warn_remove_failed, align 4
  %94 = call i8* @_(i32 %93)
  %95 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @warning_errno(i8* %94, i32 %96)
  %98 = load i32*, i32** %12, align 8
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %85, %81
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %17, align 4
  br label %283

101:                                              ; preds = %65
  %102 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %103 = call i32 @strbuf_complete(%struct.strbuf* %102, i8 signext 47)
  %104 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %105 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %20, align 4
  br label %107

107:                                              ; preds = %204, %167, %117, %101
  %108 = load i32*, i32** %13, align 8
  %109 = call %struct.dirent* @readdir(i32* %108)
  store %struct.dirent* %109, %struct.dirent** %15, align 8
  %110 = icmp ne %struct.dirent* %109, null
  br i1 %110, label %111, label %207

111:                                              ; preds = %107
  %112 = load %struct.dirent*, %struct.dirent** %15, align 8
  %113 = getelementptr inbounds %struct.dirent, %struct.dirent* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @is_dot_or_dotdot(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %107

118:                                              ; preds = %111
  %119 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %120 = load i32, i32* %20, align 4
  %121 = call i32 @strbuf_setlen(%struct.strbuf* %119, i32 %120)
  %122 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %123 = load %struct.dirent*, %struct.dirent** %15, align 8
  %124 = getelementptr inbounds %struct.dirent, %struct.dirent* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @strbuf_addstr(%struct.strbuf* %122, i32 %125)
  %127 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %128 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @lstat(i32 %129, %struct.stat* %23)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %118
  %133 = load i32, i32* @msg_warn_lstat_failed, align 4
  %134 = call i8* @_(i32 %133)
  %135 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %136 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @warning_errno(i8* %134, i32 %137)
  br label %205

139:                                              ; preds = %118
  %140 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @S_ISDIR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %139
  %145 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @remove_dirs(%struct.strbuf* %145, i8* %146, i32 %147, i32 %148, i32 %149, i32* %18)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  store i32 1, i32* %17, align 4
  br label %153

153:                                              ; preds = %152, %144
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %158 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @quote_path_relative(i32 %159, i8* %160, %struct.strbuf* %14)
  %162 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @string_list_append(%struct.string_list* %21, i32 %163)
  br label %167

165:                                              ; preds = %153
  %166 = load i32*, i32** %12, align 8
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %165, %156
  br label %107

168:                                              ; preds = %139
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %177

172:                                              ; preds = %168
  %173 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %174 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @unlink(i32 %175)
  br label %177

177:                                              ; preds = %172, %171
  %178 = phi i32 [ 0, %171 ], [ %176, %172 ]
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %177
  %182 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %183 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 @quote_path_relative(i32 %184, i8* %185, %struct.strbuf* %14)
  %187 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @string_list_append(%struct.string_list* %21, i32 %188)
  br label %204

190:                                              ; preds = %177
  %191 = load i32, i32* @errno, align 4
  store i32 %191, i32* %24, align 4
  %192 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %193 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i8*, i8** %8, align 8
  %196 = call i32 @quote_path_relative(i32 %194, i8* %195, %struct.strbuf* %14)
  %197 = load i32, i32* %24, align 4
  store i32 %197, i32* @errno, align 4
  %198 = load i32, i32* @msg_warn_remove_failed, align 4
  %199 = call i8* @_(i32 %198)
  %200 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @warning_errno(i8* %199, i32 %201)
  %203 = load i32*, i32** %12, align 8
  store i32 0, i32* %203, align 4
  store i32 1, i32* %17, align 4
  br label %204

204:                                              ; preds = %190, %181
  br label %107

205:                                              ; preds = %132
  %206 = load i32*, i32** %12, align 8
  store i32 0, i32* %206, align 4
  store i32 1, i32* %17, align 4
  br label %207

207:                                              ; preds = %205, %107
  %208 = load i32*, i32** %13, align 8
  %209 = call i32 @closedir(i32* %208)
  %210 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @strbuf_setlen(%struct.strbuf* %210, i32 %211)
  %213 = load i32*, i32** %12, align 8
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %246

216:                                              ; preds = %207
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %225

220:                                              ; preds = %216
  %221 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %222 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @rmdir(i32 %223)
  br label %225

225:                                              ; preds = %220, %219
  %226 = phi i32 [ 0, %219 ], [ %224, %220 ]
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = load i32*, i32** %12, align 8
  store i32 1, i32* %230, align 4
  br label %245

231:                                              ; preds = %225
  %232 = load i32, i32* @errno, align 4
  store i32 %232, i32* %25, align 4
  %233 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %234 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i8*, i8** %8, align 8
  %237 = call i32 @quote_path_relative(i32 %235, i8* %236, %struct.strbuf* %14)
  %238 = load i32, i32* %25, align 4
  store i32 %238, i32* @errno, align 4
  %239 = load i32, i32* @msg_warn_remove_failed, align 4
  %240 = call i8* @_(i32 %239)
  %241 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @warning_errno(i8* %240, i32 %242)
  %244 = load i32*, i32** %12, align 8
  store i32 0, i32* %244, align 4
  store i32 1, i32* %17, align 4
  br label %245

245:                                              ; preds = %231, %229
  br label %246

246:                                              ; preds = %245, %207
  %247 = load i32*, i32** %12, align 8
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %282, label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %282, label %253

253:                                              ; preds = %250
  store i32 0, i32* %26, align 4
  br label %254

254:                                              ; preds = %278, %253
  %255 = load i32, i32* %26, align 4
  %256 = getelementptr inbounds %struct.string_list, %struct.string_list* %21, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %255, %257
  br i1 %258, label %259, label %281

259:                                              ; preds = %254
  %260 = load i32, i32* %10, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i32, i32* @msg_would_remove, align 4
  %264 = call i8* @_(i32 %263)
  br label %268

265:                                              ; preds = %259
  %266 = load i32, i32* @msg_remove, align 4
  %267 = call i8* @_(i32 %266)
  br label %268

268:                                              ; preds = %265, %262
  %269 = phi i8* [ %264, %262 ], [ %267, %265 ]
  %270 = getelementptr inbounds %struct.string_list, %struct.string_list* %21, i32 0, i32 1
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %270, align 8
  %272 = load i32, i32* %26, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @printf(i8* %269, i32 %276)
  br label %278

278:                                              ; preds = %268
  %279 = load i32, i32* %26, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %26, align 4
  br label %254

281:                                              ; preds = %254
  br label %282

282:                                              ; preds = %281, %250, %246
  br label %283

283:                                              ; preds = %282, %99, %63
  %284 = call i32 @strbuf_release(%struct.strbuf* %14)
  %285 = call i32 @string_list_clear(%struct.string_list* %21, i32 0)
  %286 = load i32, i32* %17, align 4
  ret i32 %286
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_nonbare_repository_dir(%struct.strbuf*) #2

declare dso_local i32 @quote_path_relative(i32, i8*, %struct.strbuf*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i8* @_(i32) #2

declare dso_local i32* @opendir(i32) #2

declare dso_local i32 @rmdir(i32) #2

declare dso_local i32 @warning_errno(i8*, i32) #2

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @is_dot_or_dotdot(i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i64 @lstat(i32, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
