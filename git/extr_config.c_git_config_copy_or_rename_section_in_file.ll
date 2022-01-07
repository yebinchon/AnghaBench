; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_config_copy_or_rename_section_in_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_config_copy_or_rename_section_in_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.strbuf = type { i64, i8* }
%struct.stat = type { i32 }
%struct.config_store_data = type { i8* }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid section name: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not lock config file %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"fstat on %s failed\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"chmod on %s failed\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"could not write config file %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @git_config_copy_or_rename_section_in_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_config_copy_or_rename_section_in_file(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lock_file, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i32*, align 8
  %16 = alloca %struct.stat, align 4
  %17 = alloca %struct.strbuf, align 8
  %18 = alloca %struct.config_store_data, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.strbuf, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %25 = bitcast %struct.lock_file* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %15, align 8
  %26 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %27 = call i32 @memset(%struct.config_store_data* %18, i32 0, i32 8)
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @section_name_is_ok(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @error(i32 %35, i8* %36)
  store i32 %37, i32* %9, align 4
  br label %257

38:                                               ; preds = %30, %4
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i8* @git_pathdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %42, i8** %11, align 8
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @hold_lock_file_for_update(%struct.lock_file* %12, i8* %44, i32 0)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @error(i32 %49, i8* %50)
  store i32 %51, i32* %9, align 4
  br label %249

52:                                               ; preds = %43
  %53 = load i8*, i8** %5, align 8
  %54 = call i32* @fopen(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %54, i32** %15, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @warn_on_fopen_errors(i8* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %249

62:                                               ; preds = %56
  br label %241

63:                                               ; preds = %52
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @fileno(i32* %64)
  %66 = call i32 @fstat(i32 %65, %struct.stat* %16)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @error_errno(i32 %69, i8* %70)
  store i32 %71, i32* %9, align 4
  br label %249

72:                                               ; preds = %63
  %73 = call i8* @get_lock_file_path(%struct.lock_file* %12)
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 4095
  %77 = call i64 @chmod(i8* %73, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i8* @get_lock_file_path(%struct.lock_file* %12)
  %82 = call i32 @error_errno(i32 %80, i8* %81)
  store i32 %82, i32* %9, align 4
  br label %249

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %219, %195, %149, %83
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %86 = load i32*, i32** %15, align 8
  %87 = call i64 @fgets(i8* %85, i32 1024, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %220

89:                                               ; preds = %84
  store i32 0, i32* %21, align 4
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  store i8* %90, i8** %22, align 8
  store i32 0, i32* %19, align 4
  br label %91

91:                                               ; preds = %108, %89
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isspace(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %98, %91
  %106 = phi i1 [ false, %91 ], [ %104, %98 ]
  br i1 %106, label %107, label %111

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  br label %91

111:                                              ; preds = %105
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 91
  br i1 %117, label %118, label %192

118:                                              ; preds = %111
  store i32 1, i32* %21, align 4
  %119 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load i32, i32* %13, align 4
  %124 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i64 @write_in_full(i32 %123, i8* %125, i32 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = call i8* @get_lock_file_path(%struct.lock_file* %12)
  %133 = call i32 @write_error(i8* %132)
  store i32 %133, i32* %9, align 4
  br label %249

134:                                              ; preds = %122
  %135 = call i32 @strbuf_reset(%struct.strbuf* %17)
  br label %136

136:                                              ; preds = %134, %118
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %138
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @section_name_match(i8* %139, i8* %140)
  store i32 %141, i32* %23, align 4
  %142 = load i32, i32* %23, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %191

144:                                              ; preds = %136
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32 1, i32* %10, align 4
  br label %84

150:                                              ; preds = %144
  %151 = load i8*, i8** %7, align 8
  %152 = call i8* @strlen(i8* %151)
  %153 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %18, i32 0, i32 0
  store i8* %152, i8** %153, align 8
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %180, label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %13, align 4
  %158 = load i8*, i8** %7, align 8
  %159 = call i64 @write_section(i32 %157, i8* %158, %struct.config_store_data* %18)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = call i8* @get_lock_file_path(%struct.lock_file* %12)
  %163 = call i32 @write_error(i8* %162)
  store i32 %163, i32* %9, align 4
  br label %249

164:                                              ; preds = %156
  %165 = load i32, i32* %23, align 4
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i8*, i8** %22, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %22, align 8
  %171 = load i8*, i8** %22, align 8
  %172 = call i8* @strlen(i8* %171)
  %173 = icmp ugt i8* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load i8*, i8** %22, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 -1
  store i8* %176, i8** %22, align 8
  %177 = load i8*, i8** %22, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  store i8 9, i8* %178, align 1
  br label %179

179:                                              ; preds = %174, %164
  br label %190

180:                                              ; preds = %150
  %181 = load i8*, i8** %7, align 8
  %182 = call { i64, i8* } @store_create_section(i8* %181, %struct.config_store_data* %18)
  %183 = bitcast %struct.strbuf* %24 to { i64, i8* }*
  %184 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %183, i32 0, i32 0
  %185 = extractvalue { i64, i8* } %182, 0
  store i64 %185, i64* %184, align 8
  %186 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %183, i32 0, i32 1
  %187 = extractvalue { i64, i8* } %182, 1
  store i8* %187, i8** %186, align 8
  %188 = bitcast %struct.strbuf* %17 to i8*
  %189 = bitcast %struct.strbuf* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %188, i8* align 8 %189, i64 16, i1 false)
  br label %190

190:                                              ; preds = %180, %179
  br label %191

191:                                              ; preds = %190, %136
  store i32 0, i32* %10, align 4
  br label %192

192:                                              ; preds = %191, %111
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %84

196:                                              ; preds = %192
  %197 = load i8*, i8** %22, align 8
  %198 = call i8* @strlen(i8* %197)
  %199 = ptrtoint i8* %198 to i32
  store i32 %199, i32* %20, align 4
  %200 = load i32, i32* %21, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i8*, i8** %22, align 8
  %208 = load i32, i32* %20, align 4
  %209 = call i32 @strbuf_add(%struct.strbuf* %17, i8* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %202, %196
  %211 = load i32, i32* %13, align 4
  %212 = load i8*, i8** %22, align 8
  %213 = load i32, i32* %20, align 4
  %214 = call i64 @write_in_full(i32 %211, i8* %212, i32 %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = call i8* @get_lock_file_path(%struct.lock_file* %12)
  %218 = call i32 @write_error(i8* %217)
  store i32 %218, i32* %9, align 4
  br label %249

219:                                              ; preds = %210
  br label %84

220:                                              ; preds = %84
  %221 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = load i32, i32* %13, align 4
  %226 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i64 @write_in_full(i32 %225, i8* %227, i32 %230)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %224
  %234 = call i8* @get_lock_file_path(%struct.lock_file* %12)
  %235 = call i32 @write_error(i8* %234)
  store i32 %235, i32* %9, align 4
  br label %249

236:                                              ; preds = %224
  %237 = call i32 @strbuf_reset(%struct.strbuf* %17)
  br label %238

238:                                              ; preds = %236, %220
  %239 = load i32*, i32** %15, align 8
  %240 = call i32 @fclose(i32* %239)
  store i32* null, i32** %15, align 8
  br label %241

241:                                              ; preds = %238, %62
  %242 = call i64 @commit_lock_file(%struct.lock_file* %12)
  %243 = icmp slt i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %246 = load i8*, i8** %5, align 8
  %247 = call i32 @error_errno(i32 %245, i8* %246)
  store i32 %247, i32* %9, align 4
  br label %248

248:                                              ; preds = %244, %241
  br label %249

249:                                              ; preds = %248, %233, %216, %161, %131, %79, %68, %61, %48
  %250 = load i32*, i32** %15, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32*, i32** %15, align 8
  %254 = call i32 @fclose(i32* %253)
  br label %255

255:                                              ; preds = %252, %249
  %256 = call i32 @rollback_lock_file(%struct.lock_file* %12)
  br label %257

257:                                              ; preds = %255, %34
  %258 = load i8*, i8** %11, align 8
  %259 = call i32 @free(i8* %258)
  %260 = call i32 @config_store_data_clear(%struct.config_store_data* %18)
  %261 = load i32, i32* %9, align 4
  ret i32 %261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.config_store_data*, i32, i32) #2

declare dso_local i32 @section_name_is_ok(i8*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @git_pathdup(i8*) #2

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warn_on_fopen_errors(i8*) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i64 @chmod(i8*, i32) #2

declare dso_local i8* @get_lock_file_path(%struct.lock_file*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i64 @write_in_full(i32, i8*, i32) #2

declare dso_local i32 @write_error(i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @section_name_match(i8*, i8*) #2

declare dso_local i8* @strlen(i8*) #2

declare dso_local i64 @write_section(i32, i8*, %struct.config_store_data*) #2

declare dso_local { i64, i8* } @store_create_section(i8*, %struct.config_store_data*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @commit_lock_file(%struct.lock_file*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @config_store_data_clear(%struct.config_store_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
