; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_cmd_fetch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_cmd_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.argv_array = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.remote = type { i32 }
%struct.split_commit_graph_opts = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@default_rla = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@submodule_fetch_jobs_config = common dso_local global i32 0, align 4
@recurse_submodules = common dso_local global i64 0, align 8
@git_fetch_config = common dso_local global i32 0, align 4
@builtin_fetch_options = common dso_local global i32 0, align 4
@builtin_fetch_usage = common dso_local global i32 0, align 4
@deepen_relative = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Negative depth in --deepen is not supported\00", align 1
@depth = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"--deepen and --depth are mutually exclusive\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@unshallow = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"--depth and --unshallow cannot be used together\00", align 1
@the_repository = common dso_local global %struct.TYPE_9__* null, align 8
@.str.6 = private unnamed_addr constant [57 x i8] c"--unshallow on a complete repository does not make sense\00", align 1
@INFINITE_DEPTH = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"depth %s is not a positive number\00", align 1
@deepen_since = common dso_local global i64 0, align 8
@deepen_not = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@deepen = common dso_local global i32 0, align 4
@filter_options = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [62 x i8] c"--filter can only be used when extensions.partialClone is set\00", align 1
@all = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [48 x i8] c"fetch --all does not take a repository argument\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"fetch --all does not make sense with refspecs\00", align 1
@get_one_remote_for_fetch = common dso_local global i32 0, align 4
@multiple = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"No such remote or remote group: %s\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"Fetching a group and specifying refspecs does not make sense\00", align 1
@fetch_if_missing = common dso_local global i64 0, align 8
@max_jobs = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [80 x i8] c"--filter can only be used with the remote configured in extensions.partialclone\00", align 1
@fetch_parallel_config = common dso_local global i32 0, align 4
@RECURSE_SUBMODULES_OFF = common dso_local global i64 0, align 8
@submodule_prefix = common dso_local global i32 0, align 4
@recurse_submodules_default = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@COMMIT_GRAPH_WRITE_SPLIT = common dso_local global i32 0, align 4
@progress = common dso_local global i64 0, align 8
@COMMIT_GRAPH_WRITE_PROGRESS = common dso_local global i32 0, align 4
@enable_auto_gc = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"--auto\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_fetch(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.string_list, align 4
  %9 = alloca %struct.remote*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.argv_array, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.argv_array, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.split_commit_graph_opts, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  store %struct.remote* null, %struct.remote** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %19 = bitcast %struct.argv_array* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %20 = call i32 @packet_trace_identity(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @strbuf_addstr(i32* @default_rla, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %33, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strbuf_addf(i32* @default_rla, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %22

36:                                               ; preds = %22
  %37 = call i32 @fetch_config_from_gitmodules(i32* @submodule_fetch_jobs_config, i64* @recurse_submodules)
  %38 = load i32, i32* @git_fetch_config, align 4
  %39 = call i32 @git_config(i32 %38, i32* null)
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @builtin_fetch_options, align 4
  %44 = load i32, i32* @builtin_fetch_usage, align 4
  %45 = call i32 @parse_options(i32 %40, i8** %41, i8* %42, i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* @deepen_relative, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %36
  %49 = load i64, i64* @deepen_relative, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @die(i8* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* @depth, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 (i8*, ...) @die(i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64, i64* @deepen_relative, align 8
  %62 = call i64 @xstrfmt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  store i64 %62, i64* @depth, align 8
  br label %63

63:                                               ; preds = %60, %36
  %64 = load i64, i64* @unshallow, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i64, i64* @depth, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @die(i8* %70)
  br label %83

72:                                               ; preds = %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_repository, align 8
  %74 = call i32 @is_repository_shallow(%struct.TYPE_9__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %78 = call i32 (i8*, ...) @die(i8* %77)
  br label %82

79:                                               ; preds = %72
  %80 = load i64, i64* @INFINITE_DEPTH, align 8
  %81 = call i64 @xstrfmt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  store i64 %81, i64* @depth, align 8
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %69
  br label %84

84:                                               ; preds = %83, %63
  %85 = load i64, i64* @depth, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i64, i64* @depth, align 8
  %89 = call i32 @atoi(i64 %88)
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %93 = load i64, i64* @depth, align 8
  %94 = call i32 (i8*, ...) @die(i8* %92, i64 %93)
  br label %95

95:                                               ; preds = %91, %87, %84
  %96 = load i64, i64* @depth, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load i64, i64* @deepen_since, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @deepen_not, i32 0, i32 0), align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98, %95
  store i32 1, i32* @deepen, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @filter_options, i32 0, i32 0), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = call i64 (...) @has_promisor_remote()
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108, %105
  %114 = load i64, i64* @all, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load i32, i32* %4, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  %121 = call i32 (i8*, ...) @die(i8* %120)
  br label %129

122:                                              ; preds = %116
  %123 = load i32, i32* %4, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %127 = call i32 (i8*, ...) @die(i8* %126)
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %119
  %130 = load i32, i32* @get_one_remote_for_fetch, align 4
  %131 = call i32 @for_each_remote(i32 %130, %struct.string_list* %8)
  br label %196

132:                                              ; preds = %113
  %133 = load i32, i32* %4, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = call %struct.remote* @remote_get(i8* null)
  store %struct.remote* %136, %struct.remote** %9, align 8
  br label %195

137:                                              ; preds = %132
  %138 = load i64, i64* @multiple, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %166

140:                                              ; preds = %137
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %162, %140
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %141
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @add_remote_or_group(i8* %150, %struct.string_list* %8)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %145
  %154 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i8*, ...) @die(i8* %154, i8* %159)
  br label %161

161:                                              ; preds = %153, %145
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %141

165:                                              ; preds = %141
  br label %194

166:                                              ; preds = %137
  %167 = load i8**, i8*** %5, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @add_remote_or_group(i8* %169, %struct.string_list* %8)
  %171 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %181

174:                                              ; preds = %166
  %175 = load i32, i32* %4, align 4
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0))
  %179 = call i32 (i8*, ...) @die(i8* %178)
  br label %180

180:                                              ; preds = %177, %174
  br label %193

181:                                              ; preds = %166
  %182 = load i8**, i8*** %5, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = call %struct.remote* @remote_get(i8* %184)
  store %struct.remote* %185, %struct.remote** %9, align 8
  %186 = load i32, i32* %4, align 4
  %187 = icmp eq i32 %186, 1
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %4, align 4
  %191 = load i8**, i8*** %5, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i32 1
  store i8** %192, i8*** %5, align 8
  br label %193

193:                                              ; preds = %181, %180
  br label %194

194:                                              ; preds = %193, %165
  br label %195

195:                                              ; preds = %194, %135
  br label %196

196:                                              ; preds = %195, %129
  store i64 0, i64* @fetch_if_missing, align 8
  %197 = load %struct.remote*, %struct.remote** %9, align 8
  %198 = icmp ne %struct.remote* %197, null
  br i1 %198, label %199, label %214

199:                                              ; preds = %196
  %200 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @filter_options, i32 0, i32 0), align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = call i64 (...) @has_promisor_remote()
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202, %199
  %206 = load %struct.remote*, %struct.remote** %9, align 8
  %207 = call i32 @fetch_one_setup_partial(%struct.remote* %206)
  br label %208

208:                                              ; preds = %205, %202
  %209 = load %struct.remote*, %struct.remote** %9, align 8
  %210 = load i32, i32* %4, align 4
  %211 = load i8**, i8*** %5, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @fetch_one(%struct.remote* %209, i32 %210, i8** %211, i32 %212)
  store i32 %213, i32* %10, align 4
  br label %229

214:                                              ; preds = %196
  %215 = load i32, i32* @max_jobs, align 4
  store i32 %215, i32* %13, align 4
  %216 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @filter_options, i32 0, i32 0), align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.13, i64 0, i64 0))
  %220 = call i32 (i8*, ...) @die(i8* %219)
  br label %221

221:                                              ; preds = %218, %214
  %222 = load i32, i32* %13, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = load i32, i32* @fetch_parallel_config, align 4
  store i32 %225, i32* %13, align 4
  br label %226

226:                                              ; preds = %224, %221
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @fetch_multiple(%struct.string_list* %8, i32 %227)
  store i32 %228, i32* %10, align 4
  br label %229

229:                                              ; preds = %226, %208
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %260, label %232

232:                                              ; preds = %229
  %233 = load i64, i64* @recurse_submodules, align 8
  %234 = load i64, i64* @RECURSE_SUBMODULES_OFF, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %260

236:                                              ; preds = %232
  %237 = bitcast %struct.argv_array* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %237, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %238 = load i32, i32* @max_jobs, align 4
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %15, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i32, i32* @submodule_fetch_jobs_config, align 4
  store i32 %242, i32* %15, align 4
  br label %243

243:                                              ; preds = %241, %236
  %244 = load i32, i32* %15, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load i32, i32* @fetch_parallel_config, align 4
  store i32 %247, i32* %15, align 4
  br label %248

248:                                              ; preds = %246, %243
  %249 = call i32 @add_options_to_argv(%struct.argv_array* %14)
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_repository, align 8
  %251 = load i32, i32* @submodule_prefix, align 4
  %252 = load i64, i64* @recurse_submodules, align 8
  %253 = load i32, i32* @recurse_submodules_default, align 4
  %254 = load i64, i64* @verbosity, align 8
  %255 = icmp slt i64 %254, 0
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @fetch_populated_submodules(%struct.TYPE_9__* %250, %struct.argv_array* %14, i32 %251, i64 %252, i32 %253, i32 %256, i32 %257)
  store i32 %258, i32* %10, align 4
  %259 = call i32 @argv_array_clear(%struct.argv_array* %14)
  br label %260

260:                                              ; preds = %248, %232, %229
  %261 = call i32 @string_list_clear(%struct.string_list* %8, i32 0)
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_repository, align 8
  %263 = call i32 @prepare_repo_settings(%struct.TYPE_9__* %262)
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_repository, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %282

269:                                              ; preds = %260
  %270 = load i32, i32* @COMMIT_GRAPH_WRITE_SPLIT, align 4
  store i32 %270, i32* %16, align 4
  %271 = call i32 @memset(%struct.split_commit_graph_opts* %17, i32 0, i32 4)
  %272 = load i64, i64* @progress, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = load i32, i32* @COMMIT_GRAPH_WRITE_PROGRESS, align 4
  %276 = load i32, i32* %16, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %16, align 4
  br label %278

278:                                              ; preds = %274, %269
  %279 = call i32 (...) @get_object_directory()
  %280 = load i32, i32* %16, align 4
  %281 = call i32 @write_commit_graph_reachable(i32 %279, i32 %280, %struct.split_commit_graph_opts* %17)
  br label %282

282:                                              ; preds = %278, %260
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_repository, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @close_object_store(i32 %285)
  %287 = load i64, i64* @enable_auto_gc, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %301

289:                                              ; preds = %282
  %290 = call i32 @argv_array_pushl(%struct.argv_array* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32* null)
  %291 = load i64, i64* @verbosity, align 8
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = call i32 @argv_array_push(%struct.argv_array* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %295

295:                                              ; preds = %293, %289
  %296 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %12, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @RUN_GIT_CMD, align 4
  %299 = call i32 @run_command_v_opt(i32 %297, i32 %298)
  %300 = call i32 @argv_array_clear(%struct.argv_array* %12)
  br label %301

301:                                              ; preds = %295, %282
  %302 = load i32, i32* %10, align 4
  ret i32 %302
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @packet_trace_identity(i8*) #2

declare dso_local i32 @strbuf_addstr(i32*, i8*) #2

declare dso_local i32 @strbuf_addf(i32*, i8*, i8*) #2

declare dso_local i32 @fetch_config_from_gitmodules(i32*, i64*) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, i32, i32, i32) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i64 @xstrfmt(i8*, i64) #2

declare dso_local i32 @is_repository_shallow(%struct.TYPE_9__*) #2

declare dso_local i32 @atoi(i64) #2

declare dso_local i64 @has_promisor_remote(...) #2

declare dso_local i32 @for_each_remote(i32, %struct.string_list*) #2

declare dso_local %struct.remote* @remote_get(i8*) #2

declare dso_local i32 @add_remote_or_group(i8*, %struct.string_list*) #2

declare dso_local i32 @fetch_one_setup_partial(%struct.remote*) #2

declare dso_local i32 @fetch_one(%struct.remote*, i32, i8**, i32) #2

declare dso_local i32 @fetch_multiple(%struct.string_list*, i32) #2

declare dso_local i32 @add_options_to_argv(%struct.argv_array*) #2

declare dso_local i32 @fetch_populated_submodules(%struct.TYPE_9__*, %struct.argv_array*, i32, i64, i32, i32, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @prepare_repo_settings(%struct.TYPE_9__*) #2

declare dso_local i32 @memset(%struct.split_commit_graph_opts*, i32, i32) #2

declare dso_local i32 @write_commit_graph_reachable(i32, i32, %struct.split_commit_graph_opts*) #2

declare dso_local i32 @get_object_directory(...) #2

declare dso_local i32 @close_object_store(i32) #2

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @run_command_v_opt(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
