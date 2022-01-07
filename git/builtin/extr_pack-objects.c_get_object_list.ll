; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_get_object_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_get_object_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.setup_revision_opt = type { i32 }
%struct.rev_info = type { i32 }
%struct.object_id = type { i32 }

@__const.get_object_list.s_r_opt = private unnamed_addr constant %struct.setup_revision_opt { i32 1 }, align 4
@the_repository = common dso_local global i32 0, align 4
@save_commit_buffer = common dso_local global i64 0, align 8
@warn_on_object_refname_ambiguity = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"--not\00", align 1
@UNINTERESTING = common dso_local global i32 0, align 4
@write_bitmap_index = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"--shallow \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"not an SHA-1 '%s'\00", align 1
@use_bitmap_index = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"not a rev '%s'\00", align 1
@REVARG_CANNOT_BE_FILENAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"bad revision '%s'\00", align 1
@use_delta_islands = common dso_local global i64 0, align 8
@progress = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@show_edge = common dso_local global i32 0, align 4
@sparse = common dso_local global i32 0, align 4
@fn_show_object = common dso_local global i64 0, align 8
@show_object = common dso_local global i64 0, align 8
@filter_options = common dso_local global i32 0, align 4
@show_commit = common dso_local global i32 0, align 4
@unpack_unreachable_expiration = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"unable to add recent objects\00", align 1
@record_recent_commit = common dso_local global i32 0, align 4
@record_recent_object = common dso_local global i32 0, align 4
@keep_unreachable = common dso_local global i64 0, align 8
@pack_loose_unreachable = common dso_local global i64 0, align 8
@unpack_unreachable = common dso_local global i64 0, align 8
@recent_objects = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @get_object_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_object_list(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.rev_info, align 4
  %6 = alloca %struct.setup_revision_opt, align 4
  %7 = alloca [1000 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = bitcast %struct.setup_revision_opt* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.setup_revision_opt* @__const.get_object_list.s_r_opt to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @the_repository, align 4
  %14 = call i32 @repo_init_revisions(i32 %13, %struct.rev_info* %5, i32* null)
  store i64 0, i64* @save_commit_buffer, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @setup_revisions(i32 %15, i8** %16, %struct.rev_info* %5, %struct.setup_revision_opt* %6)
  %18 = load i32, i32* @the_repository, align 4
  %19 = call i32 @is_repository_shallow(i32 %18)
  %20 = load i32, i32* @warn_on_object_refname_ambiguity, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* @warn_on_object_refname_ambiguity, align 4
  br label %21

21:                                               ; preds = %95, %74, %57, %2
  %22 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %23 = load i32, i32* @stdin, align 4
  %24 = call i32* @fgets(i8* %22, i32 1000, i32 %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %96

26:                                               ; preds = %21
  %27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %39, %31, %26
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %96

48:                                               ; preds = %44
  %49 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %50 = load i8, i8* %49, align 16
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @UNINTERESTING, align 4
  %59 = load i32, i32* %8, align 4
  %60 = xor i32 %59, %58
  store i32 %60, i32* %8, align 4
  store i64 0, i64* @write_bitmap_index, align 8
  br label %21

61:                                               ; preds = %53
  %62 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %63 = call i64 @starts_with(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %67 = getelementptr inbounds i8, i8* %66, i64 10
  %68 = call i64 @get_oid_hex(i8* %67, %struct.object_id* %11)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %72 = getelementptr inbounds i8, i8* %71, i64 10
  %73 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* @the_repository, align 4
  %76 = call i32 @register_shallow(i32 %75, %struct.object_id* %11)
  store i64 0, i64* @use_bitmap_index, align 8
  br label %21

77:                                               ; preds = %61
  %78 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %82 = call i32 (i8*, ...) @die(i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %77, %48
  %84 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @REVARG_CANNOT_BE_FILENAME, align 4
  %87 = call i64 @handle_revision_arg(i8* %84, %struct.rev_info* %5, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %94 = call i32 (i8*, ...) @die(i8* %92, i8* %93)
  br label %95

95:                                               ; preds = %89, %83
  br label %21

96:                                               ; preds = %47, %21
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* @warn_on_object_refname_ambiguity, align 4
  %98 = load i64, i64* @use_bitmap_index, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = call i32 @get_object_list_from_bitmap(%struct.rev_info* %5)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %172

104:                                              ; preds = %100, %96
  %105 = load i64, i64* @use_delta_islands, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* @the_repository, align 4
  %109 = load i32, i32* @progress, align 4
  %110 = call i32 @load_delta_islands(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %104
  %112 = call i64 @prepare_revision_walk(%struct.rev_info* %5)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 (i8*, ...) @die(i8* %117)
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* @show_edge, align 4
  %121 = load i32, i32* @sparse, align 4
  %122 = call i32 @mark_edges_uninteresting(%struct.rev_info* %5, i32 %120, i32 %121)
  %123 = load i64, i64* @fn_show_object, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = load i64, i64* @show_object, align 8
  store i64 %126, i64* @fn_show_object, align 8
  br label %127

127:                                              ; preds = %125, %119
  %128 = load i32, i32* @show_commit, align 4
  %129 = load i64, i64* @fn_show_object, align 8
  %130 = call i32 @traverse_commit_list_filtered(i32* @filter_options, %struct.rev_info* %5, i32 %128, i64 %129, i32* null, i32* null)
  %131 = load i64, i64* @unpack_unreachable_expiration, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  store i32 1, i32* %134, align 4
  %135 = load i64, i64* @unpack_unreachable_expiration, align 8
  %136 = call i64 @add_unseen_recent_objects_to_traversal(%struct.rev_info* %5, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 (i8*, ...) @die(i8* %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = call i64 @prepare_revision_walk(%struct.rev_info* %5)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 (i8*, ...) @die(i8* %149)
  br label %151

151:                                              ; preds = %146, %143
  %152 = load i32, i32* @record_recent_commit, align 4
  %153 = load i32, i32* @record_recent_object, align 4
  %154 = call i32 @traverse_commit_list(%struct.rev_info* %5, i32 %152, i32 %153, i32* null)
  br label %155

155:                                              ; preds = %151, %127
  %156 = load i64, i64* @keep_unreachable, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = call i32 (...) @add_objects_in_unpacked_packs()
  br label %160

160:                                              ; preds = %158, %155
  %161 = load i64, i64* @pack_loose_unreachable, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 (...) @add_unreachable_loose_objects()
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i64, i64* @unpack_unreachable, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 (...) @loosen_unused_packed_objects()
  br label %170

170:                                              ; preds = %168, %165
  %171 = call i32 @oid_array_clear(i32* @recent_objects)
  br label %172

172:                                              ; preds = %170, %103
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #2

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, %struct.setup_revision_opt*) #2

declare dso_local i32 @is_repository_shallow(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @register_shallow(i32, %struct.object_id*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @handle_revision_arg(i8*, %struct.rev_info*, i32, i32) #2

declare dso_local i32 @get_object_list_from_bitmap(%struct.rev_info*) #2

declare dso_local i32 @load_delta_islands(i32, i32) #2

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #2

declare dso_local i32 @mark_edges_uninteresting(%struct.rev_info*, i32, i32) #2

declare dso_local i32 @traverse_commit_list_filtered(i32*, %struct.rev_info*, i32, i64, i32*, i32*) #2

declare dso_local i64 @add_unseen_recent_objects_to_traversal(%struct.rev_info*, i64) #2

declare dso_local i32 @traverse_commit_list(%struct.rev_info*, i32, i32, i32*) #2

declare dso_local i32 @add_objects_in_unpacked_packs(...) #2

declare dso_local i32 @add_unreachable_loose_objects(...) #2

declare dso_local i32 @loosen_unused_packed_objects(...) #2

declare dso_local i32 @oid_array_clear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
