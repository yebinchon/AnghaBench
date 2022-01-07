; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_shortlog.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_shortlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.strbuf = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.origin_data = type { i64, %struct.object_id }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.object, %struct.TYPE_5__* }
%struct.object = type { i64, i32, %struct.object_id }
%struct.TYPE_5__ = type { i64 }
%struct.rev_info = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.fmt_merge_msg_opts = type { i32, i64 }
%struct.pretty_print_context = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@UNINTERESTING = common dso_local global i32 0, align 4
@TREESAME = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@ADDED = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_8__* null, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"^HEAD\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\0A* %s: (%d commits)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\0A* %s:\0A\00", align 1
@use_branch_desc = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"  ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.origin_data*, %struct.commit*, %struct.rev_info*, %struct.fmt_merge_msg_opts*, %struct.strbuf*)* @shortlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shortlog(i8* %0, %struct.origin_data* %1, %struct.commit* %2, %struct.rev_info* %3, %struct.fmt_merge_msg_opts* %4, %struct.strbuf* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.origin_data*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.rev_info*, align 8
  %11 = alloca %struct.fmt_merge_msg_opts*, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.commit*, align 8
  %16 = alloca %struct.object*, align 8
  %17 = alloca %struct.string_list, align 8
  %18 = alloca %struct.string_list, align 8
  %19 = alloca %struct.string_list, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.strbuf, align 4
  %22 = alloca %struct.object_id*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.pretty_print_context, align 4
  store i8* %0, i8** %7, align 8
  store %struct.origin_data* %1, %struct.origin_data** %8, align 8
  store %struct.commit* %2, %struct.commit** %9, align 8
  store %struct.rev_info* %3, %struct.rev_info** %10, align 8
  store %struct.fmt_merge_msg_opts* %4, %struct.fmt_merge_msg_opts** %11, align 8
  store %struct.strbuf* %5, %struct.strbuf** %12, align 8
  store i32 0, i32* %14, align 4
  %25 = bitcast %struct.string_list* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %26 = bitcast %struct.string_list* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %27 = bitcast %struct.string_list* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %28 = load i32, i32* @UNINTERESTING, align 4
  %29 = load i32, i32* @TREESAME, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SEEN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SHOWN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ADDED, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %20, align 4
  %37 = bitcast %struct.strbuf* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %38 = load %struct.origin_data*, %struct.origin_data** %8, align 8
  %39 = getelementptr inbounds %struct.origin_data, %struct.origin_data* %38, i32 0, i32 1
  store %struct.object_id* %39, %struct.object_id** %22, align 8
  %40 = load %struct.fmt_merge_msg_opts*, %struct.fmt_merge_msg_opts** %11, align 8
  %41 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* @the_repository, align 4
  %44 = load i32, i32* @the_repository, align 4
  %45 = load %struct.object_id*, %struct.object_id** %22, align 8
  %46 = call i32 @parse_object(i32 %44, %struct.object_id* %45)
  %47 = load %struct.object_id*, %struct.object_id** %22, align 8
  %48 = call i32 @oid_to_hex(%struct.object_id* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.object* @deref_tag(i32 %43, i32 %46, i32 %48, i32 %51)
  store %struct.object* %52, %struct.object** %16, align 8
  %53 = load %struct.object*, %struct.object** %16, align 8
  %54 = icmp ne %struct.object* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %6
  %56 = load %struct.object*, %struct.object** %16, align 8
  %57 = getelementptr inbounds %struct.object, %struct.object* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @OBJ_COMMIT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %6
  br label %235

62:                                               ; preds = %55
  %63 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %64 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %63, i32* null)
  %65 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %66 = load %struct.object*, %struct.object** %16, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @add_pending_object(%struct.rev_info* %65, %struct.object* %66, i8* %67)
  %69 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %70 = load %struct.commit*, %struct.commit** %9, align 8
  %71 = getelementptr inbounds %struct.commit, %struct.commit* %70, i32 0, i32 0
  %72 = call i32 @add_pending_object(%struct.rev_info* %69, %struct.object* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @UNINTERESTING, align 4
  %74 = load %struct.commit*, %struct.commit** %9, align 8
  %75 = getelementptr inbounds %struct.commit, %struct.commit* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.object, %struct.object* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 8
  %79 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %80 = call i64 @prepare_revision_walk(%struct.rev_info* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %62
  br label %85

85:                                               ; preds = %154, %137, %110, %84
  %86 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %87 = call %struct.commit* @get_revision(%struct.rev_info* %86)
  store %struct.commit* %87, %struct.commit** %15, align 8
  %88 = icmp ne %struct.commit* %87, null
  br i1 %88, label %89, label %155

89:                                               ; preds = %85
  %90 = bitcast %struct.pretty_print_context* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %90, i8 0, i64 4, i1 false)
  %91 = load %struct.commit*, %struct.commit** %15, align 8
  %92 = getelementptr inbounds %struct.commit, %struct.commit* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load %struct.commit*, %struct.commit** %15, align 8
  %97 = getelementptr inbounds %struct.commit, %struct.commit* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.fmt_merge_msg_opts*, %struct.fmt_merge_msg_opts** %11, align 8
  %104 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.commit*, %struct.commit** %15, align 8
  %109 = call i32 @record_person(i8 signext 99, %struct.string_list* %19, %struct.commit* %108)
  br label %110

110:                                              ; preds = %107, %102
  br label %85

111:                                              ; preds = %95, %89
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  %115 = load %struct.fmt_merge_msg_opts*, %struct.fmt_merge_msg_opts** %11, align 8
  %116 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.commit*, %struct.commit** %15, align 8
  %121 = call i32 @record_person(i8 signext 99, %struct.string_list* %19, %struct.commit* %120)
  br label %122

122:                                              ; preds = %119, %114, %111
  %123 = load %struct.fmt_merge_msg_opts*, %struct.fmt_merge_msg_opts** %11, align 8
  %124 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.commit*, %struct.commit** %15, align 8
  %129 = call i32 @record_person(i8 signext 97, %struct.string_list* %18, %struct.commit* %128)
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  %133 = getelementptr inbounds %struct.string_list, %struct.string_list* %17, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %23, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %85

138:                                              ; preds = %130
  %139 = load %struct.commit*, %struct.commit** %15, align 8
  %140 = call i32 @format_commit_message(%struct.commit* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.strbuf* %21, %struct.pretty_print_context* %24)
  %141 = call i32 @strbuf_ltrim(%struct.strbuf* %21)
  %142 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %138
  %146 = load %struct.commit*, %struct.commit** %15, align 8
  %147 = getelementptr inbounds %struct.commit, %struct.commit* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.object, %struct.object* %147, i32 0, i32 2
  %149 = call i32 @oid_to_hex(%struct.object_id* %148)
  %150 = call i32 @string_list_append(%struct.string_list* %17, i32 %149)
  br label %154

151:                                              ; preds = %138
  %152 = call i32 @strbuf_detach(%struct.strbuf* %21, i32* null)
  %153 = call i32 @string_list_append_nodup(%struct.string_list* %17, i32 %152)
  br label %154

154:                                              ; preds = %151, %145
  br label %85

155:                                              ; preds = %85
  %156 = load %struct.fmt_merge_msg_opts*, %struct.fmt_merge_msg_opts** %11, align 8
  %157 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %162 = call i32 @add_people_info(%struct.strbuf* %161, %struct.string_list* %18, %struct.string_list* %19)
  br label %163

163:                                              ; preds = %160, %155
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %23, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %169, i32 %170)
  br label %176

172:                                              ; preds = %163
  %173 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %172, %167
  %177 = load %struct.origin_data*, %struct.origin_data** %8, align 8
  %178 = getelementptr inbounds %struct.origin_data, %struct.origin_data* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load i64, i64* @use_branch_desc, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %186 = load i8*, i8** %7, align 8
  %187 = call i32 @add_branch_desc(%struct.strbuf* %185, i8* %186)
  br label %188

188:                                              ; preds = %184, %181, %176
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %212, %188
  %190 = load i32, i32* %13, align 4
  %191 = getelementptr inbounds %struct.string_list, %struct.string_list* %17, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %215

194:                                              ; preds = %189
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %23, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %200 = call i32 @strbuf_addstr(%struct.strbuf* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %211

201:                                              ; preds = %194
  %202 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %203 = getelementptr inbounds %struct.string_list, %struct.string_list* %17, i32 0, i32 1
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %209)
  br label %211

211:                                              ; preds = %201, %198
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %189

215:                                              ; preds = %189
  %216 = load %struct.object*, %struct.object** %16, align 8
  %217 = bitcast %struct.object* %216 to %struct.commit*
  %218 = load i32, i32* %20, align 4
  %219 = call i32 @clear_commit_marks(%struct.commit* %217, i32 %218)
  %220 = load %struct.commit*, %struct.commit** %9, align 8
  %221 = load i32, i32* %20, align 4
  %222 = call i32 @clear_commit_marks(%struct.commit* %220, i32 %221)
  %223 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %224 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @free_commit_list(i32* %225)
  %227 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %228 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %227, i32 0, i32 1
  store i32* null, i32** %228, align 8
  %229 = load %struct.rev_info*, %struct.rev_info** %10, align 8
  %230 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  store i64 0, i64* %231, align 8
  %232 = call i32 @string_list_clear(%struct.string_list* %18, i32 0)
  %233 = call i32 @string_list_clear(%struct.string_list* %19, i32 0)
  %234 = call i32 @string_list_clear(%struct.string_list* %17, i32 0)
  br label %235

235:                                              ; preds = %215, %61
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.object* @deref_tag(i32, i32, i32, i32) #2

declare dso_local i32 @parse_object(i32, %struct.object_id*) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, i32*) #2

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #2

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @record_person(i8 signext, %struct.string_list*, %struct.commit*) #2

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i32 @strbuf_ltrim(%struct.strbuf*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @string_list_append_nodup(%struct.string_list*, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @add_people_info(%struct.strbuf*, %struct.string_list*, %struct.string_list*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @add_branch_desc(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @clear_commit_marks(%struct.commit*, i32) #2

declare dso_local i32 @free_commit_list(i32*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
