; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_fake_working_tree_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_fake_working_tree_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.commit = type { %struct.commit_list*, i32, %struct.TYPE_13__ }
%struct.commit_list = type { %struct.TYPE_15__*, %struct.commit_list* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.repository = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32 }
%struct.diff_options = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.blame_origin = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.cache_entry = type { i32, i32, i32, i32, i32 }
%struct.stat = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no such ref: HEAD\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Not Committed Yet\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"not.committed.yet\00", align 1
@WANT_BLANK_IDENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"tree 0000000000000000000000000000000000000000\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"parent %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"author %s\0Acommitter %s\0A\0AVersion of %s from %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Cannot stat '%s'\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Cannot lstat '%s'\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"cannot open or read '%s'\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"cannot readlink '%s'\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"unsupported file type %s\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"failed to read from stdin\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.repository*, %struct.diff_options*, i8*, i8*)* @fake_working_tree_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @fake_working_tree_commit(%struct.repository* %0, %struct.diff_options* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.blame_origin*, align 8
  %11 = alloca %struct.commit_list**, align 8
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca %struct.object_id, align 4
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cache_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.strbuf, align 4
  %21 = alloca %struct.stat, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.diff_options* %1, %struct.diff_options** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %26 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %27 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %28 = load %struct.repository*, %struct.repository** %5, align 8
  %29 = call i32 @repo_read_index(%struct.repository* %28)
  %30 = call i32 @time(i32* %16)
  %31 = load %struct.repository*, %struct.repository** %5, align 8
  %32 = call %struct.commit* @alloc_commit_node(%struct.repository* %31)
  store %struct.commit* %32, %struct.commit** %9, align 8
  %33 = load %struct.commit*, %struct.commit** %9, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.commit*, %struct.commit** %9, align 8
  %38 = getelementptr inbounds %struct.commit, %struct.commit* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.commit*, %struct.commit** %9, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 0
  store %struct.commit_list** %40, %struct.commit_list*** %11, align 8
  %41 = load i32, i32* @RESOLVE_REF_READING, align 4
  %42 = call i32 @resolve_ref_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %41, %struct.object_id* %13, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %4
  %45 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %4
  %47 = load %struct.repository*, %struct.repository** %5, align 8
  %48 = load %struct.commit_list**, %struct.commit_list*** %11, align 8
  %49 = call %struct.commit_list** @append_parent(%struct.repository* %47, %struct.commit_list** %48, %struct.object_id* %13)
  store %struct.commit_list** %49, %struct.commit_list*** %11, align 8
  %50 = load %struct.repository*, %struct.repository** %5, align 8
  %51 = load %struct.commit_list**, %struct.commit_list*** %11, align 8
  %52 = call i32 @append_merge_parents(%struct.repository* %50, %struct.commit_list** %51)
  %53 = load %struct.repository*, %struct.repository** %5, align 8
  %54 = load %struct.commit*, %struct.commit** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @verify_working_tree_path(%struct.repository* %53, %struct.commit* %54, i8* %55)
  %57 = load %struct.commit*, %struct.commit** %9, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call %struct.blame_origin* @make_origin(%struct.commit* %57, i8* %58)
  store %struct.blame_origin* %59, %struct.blame_origin** %10, align 8
  %60 = load i32, i32* @WANT_BLANK_IDENT, align 4
  %61 = call i8* @fmt_ident(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32* null, i32 0)
  store i8* %61, i8** %15, align 8
  %62 = call i32 @strbuf_addstr(%struct.strbuf* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.commit*, %struct.commit** %9, align 8
  %64 = getelementptr inbounds %struct.commit, %struct.commit* %63, i32 0, i32 0
  %65 = load %struct.commit_list*, %struct.commit_list** %64, align 8
  store %struct.commit_list* %65, %struct.commit_list** %12, align 8
  br label %66

66:                                               ; preds = %79, %46
  %67 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %68 = icmp ne %struct.commit_list* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %71 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = call i32 @oid_to_hex(i32* %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %69
  %80 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %81 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %80, i32 0, i32 1
  %82 = load %struct.commit_list*, %struct.commit_list** %81, align 8
  store %struct.commit_list* %82, %struct.commit_list** %12, align 8
  br label %66

83:                                               ; preds = %66
  %84 = load i8*, i8** %15, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = load i8*, i8** %7, align 8
  br label %100

91:                                               ; preds = %83
  %92 = load i8*, i8** %8, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  br label %98

96:                                               ; preds = %91
  %97 = load i8*, i8** %8, align 8
  br label %98

98:                                               ; preds = %96, %95
  %99 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %95 ], [ %97, %96 ]
  br label %100

100:                                              ; preds = %98, %89
  %101 = phi i8* [ %90, %89 ], [ %99, %98 ]
  %102 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %84, i8* %85, i8* %86, i8* %101)
  %103 = load %struct.repository*, %struct.repository** %5, align 8
  %104 = load %struct.commit*, %struct.commit** %9, align 8
  %105 = call i32 @set_commit_buffer_from_strbuf(%struct.repository* %103, %struct.commit* %104, %struct.strbuf* %20)
  %106 = load i8*, i8** %8, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i8*, i8** %8, align 8
  %110 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %186

112:                                              ; preds = %108, %100
  %113 = load i8*, i8** %8, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i8*, i8** %8, align 8
  %117 = call i64 @stat(i8* %116, %struct.stat* %21)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i8*, i8** %8, align 8
  store i8* %123, i8** %22, align 8
  br label %133

124:                                              ; preds = %112
  %125 = load i8*, i8** %7, align 8
  %126 = call i64 @lstat(i8* %125, %struct.stat* %21)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i8*, i8** %7, align 8
  store i8* %132, i8** %22, align 8
  br label %133

133:                                              ; preds = %131, %122
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @canon_mode(i32 %135)
  store i32 %136, i32* %19, align 4
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @S_IFMT, align 4
  %140 = and i32 %138, %139
  switch i32 %140, label %182 [
    i32 128, label %141
    i32 129, label %172
  ]

141:                                              ; preds = %133
  %142 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %143 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = load %struct.repository*, %struct.repository** %5, align 8
  %149 = load i8*, i8** %22, align 8
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @textconv_object(%struct.repository* %148, i8* %149, i32 %150, i32* @null_oid, i32 0, i8** %23, i64* %24)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load i8*, i8** %23, align 8
  %155 = load i64, i64* %24, align 8
  %156 = load i64, i64* %24, align 8
  %157 = add i64 %156, 1
  %158 = call i32 @strbuf_attach(%struct.strbuf* %14, i8* %154, i64 %155, i64 %157)
  br label %171

159:                                              ; preds = %147, %141
  %160 = load i8*, i8** %22, align 8
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @strbuf_read_file(%struct.strbuf* %14, i8* %160, i32 %162)
  %164 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %163, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load i8*, i8** %22, align 8
  %169 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %167, %159
  br label %171

171:                                              ; preds = %170, %153
  br label %185

172:                                              ; preds = %133
  %173 = load i8*, i8** %22, align 8
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @strbuf_readlink(%struct.strbuf* %14, i8* %173, i32 %175)
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load i8*, i8** %22, align 8
  %180 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %178, %172
  br label %185

182:                                              ; preds = %133
  %183 = load i8*, i8** %22, align 8
  %184 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %182, %181, %171
  br label %192

186:                                              ; preds = %108
  store i32 0, i32* %19, align 4
  %187 = call i64 @strbuf_read(%struct.strbuf* %14, i32 0, i32 0)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %186
  br label %192

192:                                              ; preds = %191, %185
  %193 = load %struct.repository*, %struct.repository** %5, align 8
  %194 = getelementptr inbounds %struct.repository, %struct.repository* %193, i32 0, i32 0
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = load i8*, i8** %7, align 8
  %197 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @convert_to_git(%struct.TYPE_19__* %195, i8* %196, i32 %198, i32 %200, %struct.strbuf* %14, i32 0)
  %202 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  %205 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 4
  %207 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  %210 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 4
  %212 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @OBJ_BLOB, align 4
  %217 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  %218 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %217, i32 0, i32 0
  %219 = call i32 @pretend_object_file(i32 %213, i32 %215, i32 %216, i32* %218)
  %220 = load %struct.repository*, %struct.repository** %5, align 8
  %221 = getelementptr inbounds %struct.repository, %struct.repository* %220, i32 0, i32 0
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  %223 = call i32 @discard_index(%struct.TYPE_19__* %222)
  %224 = load %struct.repository*, %struct.repository** %5, align 8
  %225 = call i32 @repo_read_index(%struct.repository* %224)
  %226 = load i8*, i8** %7, align 8
  %227 = call i32 @strlen(i8* %226)
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %19, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %253, label %230

230:                                              ; preds = %192
  %231 = load %struct.repository*, %struct.repository** %5, align 8
  %232 = getelementptr inbounds %struct.repository, %struct.repository* %231, i32 0, i32 0
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %232, align 8
  %234 = load i8*, i8** %7, align 8
  %235 = load i32, i32* %17, align 4
  %236 = call i32 @index_name_pos(%struct.TYPE_19__* %233, i8* %234, i32 %235)
  store i32 %236, i32* %25, align 4
  %237 = load i32, i32* %25, align 4
  %238 = icmp sle i32 0, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %230
  %240 = load %struct.repository*, %struct.repository** %5, align 8
  %241 = getelementptr inbounds %struct.repository, %struct.repository* %240, i32 0, i32 0
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %243, align 8
  %245 = load i32, i32* %25, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %244, i64 %246
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %19, align 4
  br label %252

251:                                              ; preds = %230
  store i32 420, i32* %19, align 4
  br label %252

252:                                              ; preds = %251, %239
  br label %253

253:                                              ; preds = %252, %192
  %254 = load %struct.repository*, %struct.repository** %5, align 8
  %255 = getelementptr inbounds %struct.repository, %struct.repository* %254, i32 0, i32 0
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %255, align 8
  %257 = load i32, i32* %17, align 4
  %258 = call %struct.cache_entry* @make_empty_cache_entry(%struct.TYPE_19__* %256, i32 %257)
  store %struct.cache_entry* %258, %struct.cache_entry** %18, align 8
  %259 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %260 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %259, i32 0, i32 4
  %261 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  %262 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %261, i32 0, i32 0
  %263 = call i32 @oidcpy(i32* %260, i32* %262)
  %264 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %265 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i8*, i8** %7, align 8
  %268 = load i32, i32* %17, align 4
  %269 = call i32 @memcpy(i32 %266, i8* %267, i32 %268)
  %270 = call i32 @create_ce_flags(i32 0)
  %271 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %272 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* %17, align 4
  %274 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %275 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 4
  %276 = load i32, i32* %19, align 4
  %277 = call i32 @create_ce_mode(i32 %276)
  %278 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %279 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 4
  %280 = load %struct.repository*, %struct.repository** %5, align 8
  %281 = getelementptr inbounds %struct.repository, %struct.repository* %280, i32 0, i32 0
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %281, align 8
  %283 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %284 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %285 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %286 = or i32 %284, %285
  %287 = call i32 @add_index_entry(%struct.TYPE_19__* %282, %struct.cache_entry* %283, i32 %286)
  %288 = load %struct.repository*, %struct.repository** %5, align 8
  %289 = getelementptr inbounds %struct.repository, %struct.repository* %288, i32 0, i32 0
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %289, align 8
  %291 = load i8*, i8** %7, align 8
  %292 = call i32 @cache_tree_invalidate_path(%struct.TYPE_19__* %290, i8* %291)
  %293 = load %struct.commit*, %struct.commit** %9, align 8
  ret %struct.commit* %293
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @repo_read_index(%struct.repository*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.commit* @alloc_commit_node(%struct.repository*) #2

declare dso_local i32 @resolve_ref_unsafe(i8*, i32, %struct.object_id*, i32*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local %struct.commit_list** @append_parent(%struct.repository*, %struct.commit_list**, %struct.object_id*) #2

declare dso_local i32 @append_merge_parents(%struct.repository*, %struct.commit_list**) #2

declare dso_local i32 @verify_working_tree_path(%struct.repository*, %struct.commit*, i8*) #2

declare dso_local %struct.blame_origin* @make_origin(%struct.commit*, i8*) #2

declare dso_local i8* @fmt_ident(i8*, i8*, i32, i32*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @set_commit_buffer_from_strbuf(%struct.repository*, %struct.commit*, %struct.strbuf*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @die_errno(i8*, ...) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @canon_mode(i32) #2

declare dso_local i32 @textconv_object(%struct.repository*, i8*, i32, i32*, i32, i8**, i64*) #2

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i64, i64) #2

declare dso_local i32 @strbuf_read_file(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_readlink(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @convert_to_git(%struct.TYPE_19__*, i8*, i32, i32, %struct.strbuf*, i32) #2

declare dso_local i32 @pretend_object_file(i32, i32, i32, i32*) #2

declare dso_local i32 @discard_index(%struct.TYPE_19__*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @index_name_pos(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @oidcpy(i32*, i32*) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @create_ce_flags(i32) #2

declare dso_local i32 @create_ce_mode(i32) #2

declare dso_local i32 @add_index_entry(%struct.TYPE_19__*, %struct.cache_entry*, i32) #2

declare dso_local i32 @cache_tree_invalidate_path(%struct.TYPE_19__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
