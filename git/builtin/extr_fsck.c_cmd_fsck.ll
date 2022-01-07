; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_cmd_fsck.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_cmd_fsck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.object_directory* }
%struct.object_directory = type { i8*, %struct.object_directory* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.child_process = type { i8**, i32 }
%struct.packed_git = type { i64, %struct.packed_git* }
%struct.progress = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }
%struct.blob = type { %struct.object }

@fetch_if_missing = common dso_local global i64 0, align 8
@errors_found = common dso_local global i32 0, align 4
@read_replace_refs = common dso_local global i64 0, align 8
@fsck_opts = common dso_local global i32 0, align 4
@fsck_usage = common dso_local global i32 0, align 4
@mark_object = common dso_local global i32 0, align 4
@fsck_walk_options = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@mark_used = common dso_local global i32 0, align 4
@fsck_obj_options = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@fsck_error_func = common dso_local global i32 0, align 4
@check_strict = common dso_local global i64 0, align 8
@show_progress = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@write_lost_and_found = common dso_local global i64 0, align 8
@check_full = common dso_local global i32 0, align 4
@include_reflogs = common dso_local global i64 0, align 8
@name_objects = common dso_local global i64 0, align 8
@fsck_config = common dso_local global i32 0, align 4
@connectivity_only = common dso_local global i64 0, align 8
@mark_loose_for_connectivity = common dso_local global i32 0, align 4
@mark_packed_for_connectivity = common dso_local global i32 0, align 4
@the_repository = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Checking objects\00", align 1
@fsck_obj_buffer = common dso_local global i32 0, align 4
@ERROR_PACK = common dso_local global i32 0, align 4
@ERROR_OBJECT = common dso_local global i32 0, align 4
@HAS_OBJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: object missing\00", align 1
@USED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"invalid parameter: expected sha1, got '%s'\00", align 1
@keep_cache_objects = common dso_local global i32 0, align 4
@verify_index_checksum = common dso_local global i32 0, align 4
@verify_ce_order = common dso_local global i32 0, align 4
@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.TYPE_12__** null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@active_cache_tree = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"core.commitgraph\00", align 1
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"commit-graph\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"--object-dir\00", align 1
@ERROR_COMMIT_GRAPH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"core.multipackindex\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"multi-pack-index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_fsck(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_directory*, align 8
  %9 = alloca %struct.packed_git*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.progress*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.object*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.blob*, align 8
  %18 = alloca %struct.object*, align 8
  %19 = alloca %struct.child_process, align 8
  %20 = alloca [5 x i8*], align 16
  %21 = alloca %struct.child_process, align 8
  %22 = alloca [5 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* @fetch_if_missing, align 8
  store i32 0, i32* @errors_found, align 4
  store i64 0, i64* @read_replace_refs, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @fsck_opts, align 4
  %27 = load i32, i32* @fsck_usage, align 4
  %28 = call i32 @parse_options(i32 %23, i8** %24, i8* %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @mark_object, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fsck_walk_options, i32 0, i32 1), align 4
  %30 = load i32, i32* @mark_used, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fsck_obj_options, i32 0, i32 2), align 4
  %31 = load i32, i32* @fsck_error_func, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fsck_obj_options, i32 0, i32 1), align 4
  %32 = load i64, i64* @check_strict, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fsck_obj_options, i32 0, i32 0), align 4
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* @show_progress, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @isatty(i32 2)
  store i32 %39, i32* @show_progress, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i64, i64* @verbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* @show_progress, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i64, i64* @write_lost_and_found, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* @check_full, align 4
  store i64 0, i64* @include_reflogs, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i64, i64* @name_objects, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @xcalloc(i32 1, i32 4)
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fsck_walk_options, i32 0, i32 0), align 4
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32, i32* @fsck_config, align 4
  %55 = call i32 @git_config(i32 %54, i32* null)
  %56 = load i64, i64* @connectivity_only, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @mark_loose_for_connectivity, align 4
  %60 = call i32 @for_each_loose_object(i32 %59, i32* null, i32 0)
  %61 = load i32, i32* @mark_packed_for_connectivity, align 4
  %62 = call i32 @for_each_packed_object(i32 %61, i32* null, i32 0)
  br label %156

63:                                               ; preds = %53
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %65 = call i32 @prepare_alt_odb(%struct.TYPE_14__* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.object_directory*, %struct.object_directory** %69, align 8
  store %struct.object_directory* %70, %struct.object_directory** %8, align 8
  br label %71

71:                                               ; preds = %79, %63
  %72 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %73 = icmp ne %struct.object_directory* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %76 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @fsck_object_dir(i8* %77)
  br label %79

79:                                               ; preds = %74
  %80 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %81 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %80, i32 0, i32 1
  %82 = load %struct.object_directory*, %struct.object_directory** %81, align 8
  store %struct.object_directory* %82, %struct.object_directory** %8, align 8
  br label %71

83:                                               ; preds = %71
  %84 = load i32, i32* @check_full, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %148

86:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.progress* null, %struct.progress** %12, align 8
  %87 = load i32, i32* @show_progress, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %91 = call %struct.packed_git* @get_all_packs(%struct.TYPE_14__* %90)
  store %struct.packed_git* %91, %struct.packed_git** %9, align 8
  br label %92

92:                                               ; preds = %108, %89
  %93 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %94 = icmp ne %struct.packed_git* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %97 = call i64 @open_pack_index(%struct.packed_git* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %108

100:                                              ; preds = %95
  %101 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %102 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %100, %99
  %109 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %110 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %109, i32 0, i32 1
  %111 = load %struct.packed_git*, %struct.packed_git** %110, align 8
  store %struct.packed_git* %111, %struct.packed_git** %9, align 8
  br label %92

112:                                              ; preds = %92
  %113 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* %10, align 4
  %115 = call %struct.progress* @start_progress(i32 %113, i32 %114)
  store %struct.progress* %115, %struct.progress** %12, align 8
  br label %116

116:                                              ; preds = %112, %86
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %118 = call %struct.packed_git* @get_all_packs(%struct.TYPE_14__* %117)
  store %struct.packed_git* %118, %struct.packed_git** %9, align 8
  br label %119

119:                                              ; preds = %142, %116
  %120 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %121 = icmp ne %struct.packed_git* %120, null
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %124 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %125 = load i32, i32* @fsck_obj_buffer, align 4
  %126 = load %struct.progress*, %struct.progress** %12, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i64 @verify_pack(%struct.TYPE_14__* %123, %struct.packed_git* %124, i32 %125, %struct.progress* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, i32* @ERROR_PACK, align 4
  %132 = load i32, i32* @errors_found, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* @errors_found, align 4
  br label %134

134:                                              ; preds = %130, %122
  %135 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %136 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %134
  %143 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %144 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %143, i32 0, i32 1
  %145 = load %struct.packed_git*, %struct.packed_git** %144, align 8
  store %struct.packed_git* %145, %struct.packed_git** %9, align 8
  br label %119

146:                                              ; preds = %119
  %147 = call i32 @stop_progress(%struct.progress** %12)
  br label %148

148:                                              ; preds = %146, %83
  %149 = call i64 @fsck_finish(%struct.TYPE_16__* @fsck_obj_options)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* @ERROR_OBJECT, align 4
  %153 = load i32, i32* @errors_found, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* @errors_found, align 4
  br label %155

155:                                              ; preds = %151, %148
  br label %156

156:                                              ; preds = %155, %58
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %217, %156
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %220

161:                                              ; preds = %157
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %13, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = call i32 @get_oid(i8* %167, %struct.object_id* %14)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %210, label %170

170:                                              ; preds = %161
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %172 = call %struct.object* @lookup_object(%struct.TYPE_14__* %171, %struct.object_id* %14)
  store %struct.object* %172, %struct.object** %15, align 8
  %173 = load %struct.object*, %struct.object** %15, align 8
  %174 = icmp ne %struct.object* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load %struct.object*, %struct.object** %15, align 8
  %177 = getelementptr inbounds %struct.object, %struct.object* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @HAS_OBJ, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %175, %170
  %183 = call i64 @is_promisor_object(%struct.object_id* %14)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %217

186:                                              ; preds = %182
  %187 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %188 = call i8* @oid_to_hex(%struct.object_id* %14)
  %189 = call i32 @error(i32 %187, i8* %188)
  %190 = load i32, i32* @ERROR_OBJECT, align 4
  %191 = load i32, i32* @errors_found, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* @errors_found, align 4
  br label %217

193:                                              ; preds = %175
  %194 = load i32, i32* @USED, align 4
  %195 = load %struct.object*, %struct.object** %15, align 8
  %196 = getelementptr inbounds %struct.object, %struct.object* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i64, i64* @name_objects, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fsck_walk_options, i32 0, i32 0), align 4
  %203 = load %struct.object*, %struct.object** %15, align 8
  %204 = load i8*, i8** %13, align 8
  %205 = call i32 @xstrdup(i8* %204)
  %206 = call i32 @add_decoration(i32 %202, %struct.object* %203, i32 %205)
  br label %207

207:                                              ; preds = %201, %193
  %208 = load %struct.object*, %struct.object** %15, align 8
  %209 = call i32 @mark_object_reachable(%struct.object* %208)
  br label %217

210:                                              ; preds = %161
  %211 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %212 = load i8*, i8** %13, align 8
  %213 = call i32 @error(i32 %211, i8* %212)
  %214 = load i32, i32* @ERROR_OBJECT, align 4
  %215 = load i32, i32* @errors_found, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* @errors_found, align 4
  br label %217

217:                                              ; preds = %210, %207, %186, %185
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %7, align 4
  br label %157

220:                                              ; preds = %157
  %221 = load i32, i32* %4, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = call i32 (...) @get_default_heads()
  store i32 1, i32* @keep_cache_objects, align 4
  br label %225

225:                                              ; preds = %223, %220
  %226 = load i32, i32* @keep_cache_objects, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %293

228:                                              ; preds = %225
  store i32 1, i32* @verify_index_checksum, align 4
  store i32 1, i32* @verify_ce_order, align 4
  %229 = call i32 (...) @read_cache()
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %283, %228
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @active_nr, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %286

234:                                              ; preds = %230
  %235 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @active_cache, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %235, i64 %237
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %16, align 4
  %242 = load i32, i32* %16, align 4
  %243 = call i64 @S_ISGITLINK(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %234
  br label %283

246:                                              ; preds = %234
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %248 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @active_cache, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %248, i64 %250
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = call %struct.blob* @lookup_blob(%struct.TYPE_14__* %247, i32* %253)
  store %struct.blob* %254, %struct.blob** %17, align 8
  %255 = load %struct.blob*, %struct.blob** %17, align 8
  %256 = icmp ne %struct.blob* %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %246
  br label %283

258:                                              ; preds = %246
  %259 = load %struct.blob*, %struct.blob** %17, align 8
  %260 = getelementptr inbounds %struct.blob, %struct.blob* %259, i32 0, i32 0
  store %struct.object* %260, %struct.object** %18, align 8
  %261 = load i32, i32* @USED, align 4
  %262 = load %struct.object*, %struct.object** %18, align 8
  %263 = getelementptr inbounds %struct.object, %struct.object* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load i64, i64* @name_objects, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %280

268:                                              ; preds = %258
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fsck_walk_options, i32 0, i32 0), align 4
  %270 = load %struct.object*, %struct.object** %18, align 8
  %271 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @active_cache, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %271, i64 %273
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @xstrfmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %277)
  %279 = call i32 @add_decoration(i32 %269, %struct.object* %270, i32 %278)
  br label %280

280:                                              ; preds = %268, %258
  %281 = load %struct.object*, %struct.object** %18, align 8
  %282 = call i32 @mark_object_reachable(%struct.object* %281)
  br label %283

283:                                              ; preds = %280, %257, %245
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  br label %230

286:                                              ; preds = %230
  %287 = load i64, i64* @active_cache_tree, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i64, i64* @active_cache_tree, align 8
  %291 = call i32 @fsck_cache_tree(i64 %290)
  br label %292

292:                                              ; preds = %289, %286
  br label %293

293:                                              ; preds = %292, %225
  %294 = call i32 (...) @check_connectivity()
  %295 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %338, label %297

297:                                              ; preds = %293
  %298 = load i32, i32* %7, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %338

300:                                              ; preds = %297
  %301 = bitcast %struct.child_process* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %301, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %302 = bitcast [5 x i8*]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %302, i8 0, i64 40, i1 false)
  %303 = bitcast i8* %302 to [5 x i8*]*
  %304 = getelementptr inbounds [5 x i8*], [5 x i8*]* %303, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8** %304, align 16
  %305 = getelementptr inbounds [5 x i8*], [5 x i8*]* %303, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8** %305, align 8
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %307 = call i32 @prepare_alt_odb(%struct.TYPE_14__* %306)
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  %312 = load %struct.object_directory*, %struct.object_directory** %311, align 8
  store %struct.object_directory* %312, %struct.object_directory** %8, align 8
  br label %313

313:                                              ; preds = %333, %300
  %314 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %315 = icmp ne %struct.object_directory* %314, null
  br i1 %315, label %316, label %337

316:                                              ; preds = %313
  %317 = call i32 @child_process_init(%struct.child_process* %19)
  %318 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  %319 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 0
  store i8** %318, i8*** %319, align 8
  %320 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 1
  store i32 1, i32* %320, align 8
  %321 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %321, align 16
  %322 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %323 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 3
  store i8* %324, i8** %325, align 8
  %326 = call i64 @run_command(%struct.child_process* %19)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %316
  %329 = load i32, i32* @ERROR_COMMIT_GRAPH, align 4
  %330 = load i32, i32* @errors_found, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* @errors_found, align 4
  br label %332

332:                                              ; preds = %328, %316
  br label %333

333:                                              ; preds = %332
  %334 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %335 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %334, i32 0, i32 1
  %336 = load %struct.object_directory*, %struct.object_directory** %335, align 8
  store %struct.object_directory* %336, %struct.object_directory** %8, align 8
  br label %313

337:                                              ; preds = %313
  br label %338

338:                                              ; preds = %337, %297, %293
  %339 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32* %7)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %382, label %341

341:                                              ; preds = %338
  %342 = load i32, i32* %7, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %382

344:                                              ; preds = %341
  %345 = bitcast %struct.child_process* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %345, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %346 = bitcast [5 x i8*]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %346, i8 0, i64 40, i1 false)
  %347 = bitcast i8* %346 to [5 x i8*]*
  %348 = getelementptr inbounds [5 x i8*], [5 x i8*]* %347, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8** %348, align 16
  %349 = getelementptr inbounds [5 x i8*], [5 x i8*]* %347, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8** %349, align 8
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %351 = call i32 @prepare_alt_odb(%struct.TYPE_14__* %350)
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_repository, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = load %struct.object_directory*, %struct.object_directory** %355, align 8
  store %struct.object_directory* %356, %struct.object_directory** %8, align 8
  br label %357

357:                                              ; preds = %377, %344
  %358 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %359 = icmp ne %struct.object_directory* %358, null
  br i1 %359, label %360, label %381

360:                                              ; preds = %357
  %361 = call i32 @child_process_init(%struct.child_process* %21)
  %362 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i64 0, i64 0
  %363 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 0
  store i8** %362, i8*** %363, align 8
  %364 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 1
  store i32 1, i32* %364, align 8
  %365 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i64 0, i64 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %365, align 16
  %366 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %367 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %366, i32 0, i32 0
  %368 = load i8*, i8** %367, align 8
  %369 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i64 0, i64 3
  store i8* %368, i8** %369, align 8
  %370 = call i64 @run_command(%struct.child_process* %21)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %360
  %373 = load i32, i32* @ERROR_COMMIT_GRAPH, align 4
  %374 = load i32, i32* @errors_found, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* @errors_found, align 4
  br label %376

376:                                              ; preds = %372, %360
  br label %377

377:                                              ; preds = %376
  %378 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %379 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %378, i32 0, i32 1
  %380 = load %struct.object_directory*, %struct.object_directory** %379, align 8
  store %struct.object_directory* %380, %struct.object_directory** %8, align 8
  br label %357

381:                                              ; preds = %357
  br label %382

382:                                              ; preds = %381, %341, %338
  %383 = load i32, i32* @errors_found, align 4
  ret i32 %383
}

declare dso_local i32 @parse_options(i32, i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @xcalloc(i32, i32) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @for_each_loose_object(i32, i32*, i32) #1

declare dso_local i32 @for_each_packed_object(i32, i32*, i32) #1

declare dso_local i32 @prepare_alt_odb(%struct.TYPE_14__*) #1

declare dso_local i32 @fsck_object_dir(i8*) #1

declare dso_local %struct.packed_git* @get_all_packs(%struct.TYPE_14__*) #1

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local %struct.progress* @start_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @verify_pack(%struct.TYPE_14__*, %struct.packed_git*, i32, %struct.progress*, i32) #1

declare dso_local i32 @stop_progress(%struct.progress**) #1

declare dso_local i64 @fsck_finish(%struct.TYPE_16__*) #1

declare dso_local i32 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.object* @lookup_object(%struct.TYPE_14__*, %struct.object_id*) #1

declare dso_local i64 @is_promisor_object(%struct.object_id*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @add_decoration(i32, %struct.object*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @mark_object_reachable(%struct.object*) #1

declare dso_local i32 @get_default_heads(...) #1

declare dso_local i32 @read_cache(...) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local %struct.blob* @lookup_blob(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @xstrfmt(i8*, i32) #1

declare dso_local i32 @fsck_cache_tree(i64) #1

declare dso_local i32 @check_connectivity(...) #1

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @child_process_init(%struct.child_process*) #1

declare dso_local i64 @run_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
