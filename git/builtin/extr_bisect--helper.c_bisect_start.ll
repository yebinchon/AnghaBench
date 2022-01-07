; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_start.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i8* }
%struct.argv_array = type { i32 }
%struct.bisect_terms = type { i8*, i8* }
%struct.object_id = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"--no-checkout\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"--term-good\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"--term-old\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"--term-good=\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"--term-old=\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"--term-bad\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"--term-new\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"--term-bad=\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"--term-new=\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"unrecognized option: '%s'\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s^{commit}\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"'%s' does not appear to be a valid revision\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"bad HEAD - I need a HEAD\00", align 1
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [65 x i8] c"checking out '%s' failed. Try 'git bisect start <valid-branch>'.\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"won't bisect on cg-seek'ed tree\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"bad HEAD - strange symbolic ref\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"invalid ref: '%s'\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"BISECT_HEAD\00", align 1
@UPDATE_REFS_MSG_ON_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bisect_terms*, i32, i8**, i32)* @bisect_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisect_start(%struct.bisect_terms* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bisect_terms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.string_list, align 8
  %18 = alloca %struct.string_list, align 8
  %19 = alloca %struct.strbuf, align 8
  %20 = alloca %struct.strbuf, align 8
  %21 = alloca %struct.object_id, align 4
  %22 = alloca %struct.object_id, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.argv_array, align 4
  store %struct.bisect_terms* %0, %struct.bisect_terms** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %27 = bitcast %struct.string_list* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %28 = bitcast %struct.string_list* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %29 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %30 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %31 = call i64 (...) @is_bare_repository()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %49, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i8**, i8*** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %35

52:                                               ; preds = %47, %35
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %191, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %194

57:                                               ; preds = %53
  %58 = load i8**, i8*** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %24, align 8
  %63 = load i8**, i8*** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %57
  br label %194

71:                                               ; preds = %57
  %72 = load i8*, i8** %24, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 1, i32* %7, align 4
  br label %189

76:                                               ; preds = %71
  %77 = load i8*, i8** %24, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8*, i8** %24, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %80, %76
  store i32 1, i32* %12, align 4
  %85 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %86 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8**, i8*** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @xstrdup(i8* %94)
  %96 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %97 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %188

98:                                               ; preds = %80
  %99 = load i8*, i8** %24, align 8
  %100 = call i64 @skip_prefix(i8* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %24)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %24, align 8
  %104 = call i64 @skip_prefix(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %24)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102, %98
  store i32 1, i32* %12, align 4
  %107 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %108 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i8*, i8** %24, align 8
  %112 = call i8* @xstrdup(i8* %111)
  %113 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %114 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %187

115:                                              ; preds = %102
  %116 = load i8*, i8** %24, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8*, i8** %24, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %119, %115
  store i32 1, i32* %12, align 4
  %124 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %125 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8**, i8*** %8, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @xstrdup(i8* %133)
  %135 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %136 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %186

137:                                              ; preds = %119
  %138 = load i8*, i8** %24, align 8
  %139 = call i64 @skip_prefix(i8* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %24)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i8*, i8** %24, align 8
  %143 = call i64 @skip_prefix(i8* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %24)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141, %137
  store i32 1, i32* %12, align 4
  %146 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %147 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i8*, i8** %24, align 8
  %151 = call i8* @xstrdup(i8* %150)
  %152 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %153 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  br label %185

154:                                              ; preds = %141
  %155 = load i8*, i8** %24, align 8
  %156 = call i64 @starts_with(i8* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load i8*, i8** %24, align 8
  %160 = call i32 @one_of(i8* %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %164 = load i8*, i8** %24, align 8
  %165 = call i32 (i32, ...) @error(i32 %163, i8* %164)
  store i32 %165, i32* %5, align 4
  br label %393

166:                                              ; preds = %158, %154
  %167 = load i8*, i8** %24, align 8
  %168 = call i8* @xstrfmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %167)
  store i8* %168, i8** %25, align 8
  %169 = load i8*, i8** %25, align 8
  %170 = call i64 @get_oid(i8* %169, %struct.object_id* %22)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %177 = load i8*, i8** %24, align 8
  %178 = call i32 @die(i32 %176, i8* %177)
  br label %179

179:                                              ; preds = %175, %172, %166
  %180 = call i8* @oid_to_hex(%struct.object_id* %22)
  %181 = call i32 @string_list_append(%struct.string_list* %17, i8* %180)
  %182 = load i8*, i8** %25, align 8
  %183 = call i32 @free(i8* %182)
  br label %184

184:                                              ; preds = %179
  br label %185

185:                                              ; preds = %184, %145
  br label %186

186:                                              ; preds = %185, %123
  br label %187

187:                                              ; preds = %186, %106
  br label %188

188:                                              ; preds = %187, %84
  br label %189

189:                                              ; preds = %188, %75
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %53

194:                                              ; preds = %70, %53
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %15, align 4
  %196 = getelementptr inbounds %struct.string_list, %struct.string_list* %17, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  store i32 1, i32* %12, align 4
  br label %200

200:                                              ; preds = %199, %194
  store i32 0, i32* %10, align 4
  br label %201

201:                                              ; preds = %220, %200
  %202 = load i32, i32* %10, align 4
  %203 = getelementptr inbounds %struct.string_list, %struct.string_list* %17, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %223

206:                                              ; preds = %201
  %207 = load i32, i32* %13, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %211 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @string_list_append(%struct.string_list* %18, i8* %212)
  br label %219

214:                                              ; preds = %206
  store i32 1, i32* %13, align 4
  %215 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %216 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @string_list_append(%struct.string_list* %18, i8* %217)
  br label %219

219:                                              ; preds = %214, %209
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %201

223:                                              ; preds = %201
  %224 = call i8* @resolve_ref_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 0, %struct.object_id* %21, i32* %14)
  store i8* %224, i8** %23, align 8
  %225 = load i8*, i8** %23, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %223
  %228 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.object_id* %21)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %232 = call i32 (i32, ...) @error(i32 %231)
  store i32 %232, i32* %5, align 4
  br label %393

233:                                              ; preds = %227
  br label %234

234:                                              ; preds = %233, %223
  %235 = call i32 (...) @git_path_bisect_start()
  %236 = call i32 @is_empty_or_missing_file(i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %261, label %238

238:                                              ; preds = %234
  %239 = call i32 (...) @git_path_bisect_start()
  %240 = call i32 @strbuf_read_file(%struct.strbuf* %19, i32 %239, i32 0)
  %241 = call i32 @strbuf_trim(%struct.strbuf* %19)
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %260, label %244

244:                                              ; preds = %238
  %245 = bitcast %struct.argv_array* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %245, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %246 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @argv_array_pushl(%struct.argv_array* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null)
  %249 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %26, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @RUN_GIT_CMD, align 4
  %252 = call i64 @run_command_v_opt(i32 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %244
  %255 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i64 0, i64 0))
  %256 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 (i32, ...) @error(i32 %255, i8* %257)
  store i32 %258, i32* %16, align 4
  br label %387

259:                                              ; preds = %244
  br label %260

260:                                              ; preds = %259, %238
  br label %296

261:                                              ; preds = %234
  %262 = load i8*, i8** %23, align 8
  %263 = call i64 @get_oid(i8* %262, %struct.object_id* %21)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %261
  %266 = load i8*, i8** %23, align 8
  %267 = call i64 @starts_with(i8* %266, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %265
  %270 = call i32 @strbuf_reset(%struct.strbuf* %19)
  %271 = call i8* @oid_to_hex(%struct.object_id* %21)
  %272 = call i32 @strbuf_addstr(%struct.strbuf* %19, i8* %271)
  br label %295

273:                                              ; preds = %265, %261
  %274 = load i8*, i8** %23, align 8
  %275 = call i64 @get_oid(i8* %274, %struct.object_id* %21)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %291, label %277

277:                                              ; preds = %273
  %278 = load i8*, i8** %23, align 8
  %279 = call i64 @skip_prefix(i8* %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8** %23)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %277
  %282 = call i32 (...) @git_path_head_name()
  %283 = call i32 @is_empty_or_missing_file(i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %281
  %286 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  %287 = call i32 (i32, ...) @error(i32 %286)
  store i32 %287, i32* %5, align 4
  br label %393

288:                                              ; preds = %281
  %289 = load i8*, i8** %23, align 8
  %290 = call i32 @strbuf_addstr(%struct.strbuf* %19, i8* %289)
  br label %294

291:                                              ; preds = %277, %273
  %292 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %293 = call i32 (i32, ...) @error(i32 %292)
  store i32 %293, i32* %5, align 4
  br label %393

294:                                              ; preds = %288
  br label %295

295:                                              ; preds = %294, %269
  br label %296

296:                                              ; preds = %295, %260
  %297 = call i64 (...) @bisect_clean_state()
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  store i32 -1, i32* %5, align 4
  br label %393

300:                                              ; preds = %296
  %301 = call i32 (...) @git_path_bisect_start()
  %302 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = call i32 @write_file(i32 %301, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %303)
  %305 = load i32, i32* %7, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %323

307:                                              ; preds = %300
  %308 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = call i64 @get_oid(i8* %309, %struct.object_id* %22)
  %311 = icmp slt i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %314 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 (i32, ...) @error(i32 %313, i8* %315)
  store i32 %316, i32* %16, align 4
  br label %387

317:                                              ; preds = %307
  %318 = load i32, i32* @UPDATE_REFS_MSG_ON_ERR, align 4
  %319 = call i64 @update_ref(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), %struct.object_id* %22, i32* null, i32 0, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %317
  store i32 -1, i32* %16, align 4
  br label %387

322:                                              ; preds = %317
  br label %323

323:                                              ; preds = %322, %300
  %324 = load i32, i32* %15, align 4
  %325 = load i32, i32* %9, align 4
  %326 = sub nsw i32 %325, 1
  %327 = icmp slt i32 %324, %326
  br i1 %327, label %328, label %334

328:                                              ; preds = %323
  %329 = load i8**, i8*** %8, align 8
  %330 = load i32, i32* %15, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %329, i64 %331
  %333 = call i32 @sq_quote_argv(%struct.strbuf* %20, i8** %332)
  br label %334

334:                                              ; preds = %328, %323
  %335 = call i32 (...) @git_path_bisect_names()
  %336 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = call i32 @write_file(i32 %335, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %337)
  store i32 0, i32* %10, align 4
  br label %339

339:                                              ; preds = %364, %334
  %340 = load i32, i32* %10, align 4
  %341 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %340, %342
  br i1 %343, label %344, label %367

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 1
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** %345, align 8
  %347 = load i32, i32* %10, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = getelementptr inbounds %struct.string_list, %struct.string_list* %17, i32 0, i32 1
  %353 = load %struct.TYPE_2__*, %struct.TYPE_2__** %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %360 = call i64 @bisect_write(i32 %351, i32 %358, %struct.bisect_terms* %359, i32 1)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %344
  store i32 -1, i32* %16, align 4
  br label %387

363:                                              ; preds = %344
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %10, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %10, align 4
  br label %339

367:                                              ; preds = %339
  %368 = load i32, i32* %12, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %380

370:                                              ; preds = %367
  %371 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %372 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %371, i32 0, i32 1
  %373 = load i8*, i8** %372, align 8
  %374 = load %struct.bisect_terms*, %struct.bisect_terms** %6, align 8
  %375 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %374, i32 0, i32 0
  %376 = load i8*, i8** %375, align 8
  %377 = call i64 @write_terms(i8* %373, i8* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %370
  store i32 -1, i32* %16, align 4
  br label %387

380:                                              ; preds = %370, %367
  %381 = load i8**, i8*** %8, align 8
  %382 = call i32 @bisect_append_log_quoted(i8** %381)
  store i32 %382, i32* %16, align 4
  %383 = load i32, i32* %16, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %380
  store i32 -1, i32* %16, align 4
  br label %386

386:                                              ; preds = %385, %380
  br label %387

387:                                              ; preds = %386, %379, %362, %321, %312, %254
  %388 = call i32 @string_list_clear(%struct.string_list* %17, i32 0)
  %389 = call i32 @string_list_clear(%struct.string_list* %18, i32 0)
  %390 = call i32 @strbuf_release(%struct.strbuf* %19)
  %391 = call i32 @strbuf_release(%struct.strbuf* %20)
  %392 = load i32, i32* %16, align 4
  store i32 %392, i32* %5, align 4
  br label %393

393:                                              ; preds = %387, %299, %291, %285, %230, %162
  %394 = load i32, i32* %5, align 4
  ret i32 %394
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_bare_repository(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @one_of(i8*, i8*, i8*, i32*) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @xstrfmt(i8*, i8*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, %struct.object_id*, i32*) #2

declare dso_local i32 @is_empty_or_missing_file(i32) #2

declare dso_local i32 @git_path_bisect_start(...) #2

declare dso_local i32 @strbuf_read_file(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i8*, i32*) #2

declare dso_local i64 @run_command_v_opt(i32, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @git_path_head_name(...) #2

declare dso_local i64 @bisect_clean_state(...) #2

declare dso_local i32 @write_file(i32, i8*, i8*) #2

declare dso_local i64 @update_ref(i32*, i8*, %struct.object_id*, i32*, i32, i32) #2

declare dso_local i32 @sq_quote_argv(%struct.strbuf*, i8**) #2

declare dso_local i32 @git_path_bisect_names(...) #2

declare dso_local i64 @bisect_write(i32, i32, %struct.bisect_terms*, i32) #2

declare dso_local i64 @write_terms(i8*, i8*) #2

declare dso_local i32 @bisect_append_log_quoted(i8**) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
