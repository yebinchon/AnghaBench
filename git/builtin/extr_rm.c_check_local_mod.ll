; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rm.c_check_local_mod.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rm.c_check_local_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.cache_entry = type { i64, i32, i32 }
%struct.object_id = type { i32 }
%struct.stat = type { i32 }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1
@SUBMODULE_REMOVAL_DIE_ON_ERROR = common dso_local global i32 0, align 4
@SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"the following file has staged content different from both the\0Afile and the HEAD:\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"the following files have staged content different from both the\0Afile and the HEAD:\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0A(use -f to force removal)\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"the following file has changes staged in the index:\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"the following files have changes staged in the index:\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"\0A(use --cached to keep the file, or -f to force removal)\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"the following file has local modifications:\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"the following files have local modifications:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32)* @check_local_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_local_mod(%struct.object_id* %0, i32 %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.string_list, align 4
  %9 = alloca %struct.string_list, align 4
  %10 = alloca %struct.string_list, align 4
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cache_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.object_id, align 4
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %19 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %20 = bitcast %struct.string_list* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %21 = bitcast %struct.string_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %22 = load %struct.object_id*, %struct.object_id** %3, align 8
  %23 = call i32 @is_null_oid(%struct.object_id* %22)
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %177, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @list, i32 0, i32 0), align 8
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %180

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @list, i32 0, i32 1), align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @cache_name_pos(i8* %35, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %28
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @get_ours_cache_pos(i8* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %177

48:                                               ; preds = %41
  %49 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %49, i64 %51
  %53 = load %struct.cache_entry*, %struct.cache_entry** %52, align 8
  %54 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @S_ISGITLINK(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i8*, i8** %14, align 8
  %60 = call i64 @is_empty_dir(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %48
  br label %177

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %28
  %65 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %65, i64 %67
  %69 = load %struct.cache_entry*, %struct.cache_entry** %68, align 8
  store %struct.cache_entry* %69, %struct.cache_entry** %13, align 8
  %70 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %71 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @lstat(i32 %72, %struct.stat* %11)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %64
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @is_missing_file_error(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %82 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @warning_errno(i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %75
  br label %177

86:                                               ; preds = %64
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @S_ISDIR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %93 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @S_ISGITLINK(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %177

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %86
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %102 = call i64 @ce_match_stat(%struct.cache_entry* %101, %struct.stat* %11, i32 0)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %100
  %105 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %106 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @S_ISGITLINK(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %112 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SUBMODULE_REMOVAL_DIE_ON_ERROR, align 4
  %115 = load i32, i32* @SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED, align 4
  %116 = or i32 %114, %115
  %117 = call i64 @bad_to_remove_submodule(i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110, %100
  store i32 1, i32* %17, align 4
  br label %120

120:                                              ; preds = %119, %110, %104
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* @the_repository, align 4
  %125 = load %struct.object_id*, %struct.object_id** %3, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = call i64 @get_tree_entry(i32 %124, %struct.object_id* %125, i8* %126, %struct.object_id* %15, i16* %16)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %123
  %130 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %131 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i16, i16* %16, align 2
  %134 = call i64 @create_ce_mode(i16 zeroext %133)
  %135 = icmp ne i64 %132, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %138 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %137, i32 0, i32 1
  %139 = call i32 @oideq(i32* %138, %struct.object_id* %15)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %136, %129, %123, %120
  store i32 1, i32* %18, align 4
  br label %142

142:                                              ; preds = %141, %136
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %142
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %153 = call i32 @ce_intent_to_add(%struct.cache_entry* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %151, %148
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 @string_list_append(%struct.string_list* %8, i8* %156)
  br label %158

158:                                              ; preds = %155, %151
  br label %176

159:                                              ; preds = %145, %142
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %18, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @string_list_append(%struct.string_list* %9, i8* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i8*, i8** %14, align 8
  %173 = call i32 @string_list_append(%struct.string_list* %10, i8* %172)
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %159
  br label %176

176:                                              ; preds = %175, %158
  br label %177

177:                                              ; preds = %176, %97, %85, %62, %47
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %24

180:                                              ; preds = %24
  %181 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @Q_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  %184 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %185 = call i32 @print_error_files(%struct.string_list* %8, i32 %183, i32 %184, i32* %7)
  %186 = call i32 @string_list_clear(%struct.string_list* %8, i32 0)
  %187 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @Q_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %188)
  %190 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %191 = call i32 @print_error_files(%struct.string_list* %9, i32 %189, i32 %190, i32* %7)
  %192 = call i32 @string_list_clear(%struct.string_list* %9, i32 0)
  %193 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @Q_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %194)
  %196 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %197 = call i32 @print_error_files(%struct.string_list* %10, i32 %195, i32 %196, i32* %7)
  %198 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  %199 = load i32, i32* %7, align 4
  ret i32 %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @cache_name_pos(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @get_ours_cache_pos(i8*, i32) #2

declare dso_local i64 @S_ISGITLINK(i64) #2

declare dso_local i64 @is_empty_dir(i8*) #2

declare dso_local i64 @lstat(i32, %struct.stat*) #2

declare dso_local i32 @is_missing_file_error(i32) #2

declare dso_local i32 @warning_errno(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @ce_match_stat(%struct.cache_entry*, %struct.stat*, i32) #2

declare dso_local i64 @bad_to_remove_submodule(i32, i32) #2

declare dso_local i64 @get_tree_entry(i32, %struct.object_id*, i8*, %struct.object_id*, i16*) #2

declare dso_local i64 @create_ce_mode(i16 zeroext) #2

declare dso_local i32 @oideq(i32*, %struct.object_id*) #2

declare dso_local i32 @ce_intent_to_add(%struct.cache_entry*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #2

declare dso_local i32 @print_error_files(%struct.string_list*, i32, i32, i32*) #2

declare dso_local i32 @Q_(i8*, i8*, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
