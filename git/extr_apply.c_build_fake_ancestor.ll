; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_build_fake_ancestor.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_build_fake_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.apply_state = type { i8* }
%struct.patch = type { i8*, i8*, i64, i32, i32, i32, i32, %struct.patch* }
%struct.index_state = type { i32* }
%struct.object_id = type { i32 }
%struct.cache_entry = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str = private unnamed_addr constant [56 x i8] c"sha1 information is lacking or useless for submodule %s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"mode change for %s, which is not in current HEAD\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"sha1 information is lacking or useless (%s).\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"make_cache_entry failed for path '%s'\00", align 1
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"could not add %s to temporary index\00", align 1
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"could not write temporary index to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.patch*)* @build_fake_ancestor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_fake_ancestor(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca %struct.patch*, align 8
  %6 = alloca %struct.patch*, align 8
  %7 = alloca %struct.index_state, align 8
  %8 = alloca %struct.lock_file, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca i8*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store %struct.patch* %1, %struct.patch** %5, align 8
  %13 = bitcast %struct.index_state* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %struct.lock_file* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.patch*, %struct.patch** %5, align 8
  store %struct.patch* %15, %struct.patch** %6, align 8
  br label %16

16:                                               ; preds = %114, %2
  %17 = load %struct.patch*, %struct.patch** %6, align 8
  %18 = icmp ne %struct.patch* %17, null
  br i1 %18, label %19, label %118

19:                                               ; preds = %16
  %20 = load %struct.patch*, %struct.patch** %6, align 8
  %21 = getelementptr inbounds %struct.patch, %struct.patch* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.patch*, %struct.patch** %6, align 8
  %26 = getelementptr inbounds %struct.patch, %struct.patch* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.patch*, %struct.patch** %6, align 8
  %30 = getelementptr inbounds %struct.patch, %struct.patch* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i8* [ %27, %24 ], [ %31, %28 ]
  store i8* %33, i8** %12, align 8
  %34 = load %struct.patch*, %struct.patch** %6, align 8
  %35 = getelementptr inbounds %struct.patch, %struct.patch* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 0, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %114

39:                                               ; preds = %32
  %40 = load %struct.patch*, %struct.patch** %6, align 8
  %41 = getelementptr inbounds %struct.patch, %struct.patch* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @S_ISGITLINK(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.patch*, %struct.patch** %6, align 8
  %47 = call i32 @preimage_oid_in_gitlink_patch(%struct.patch* %46, %struct.object_id* %10)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %54

50:                                               ; preds = %45
  %51 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @error(i32 %51, i8* %52)
  store i32 %53, i32* %3, align 4
  br label %136

54:                                               ; preds = %49
  br label %90

55:                                               ; preds = %39
  %56 = load %struct.patch*, %struct.patch** %6, align 8
  %57 = getelementptr inbounds %struct.patch, %struct.patch* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @get_oid_blob(i32 %58, %struct.object_id* %10)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %89

62:                                               ; preds = %55
  %63 = load %struct.patch*, %struct.patch** %6, align 8
  %64 = getelementptr inbounds %struct.patch, %struct.patch* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %62
  %68 = load %struct.patch*, %struct.patch** %6, align 8
  %69 = getelementptr inbounds %struct.patch, %struct.patch* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %67
  %73 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %74 = load %struct.patch*, %struct.patch** %6, align 8
  %75 = getelementptr inbounds %struct.patch, %struct.patch* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @get_current_oid(%struct.apply_state* %73, i8* %76, %struct.object_id* %10)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @error(i32 %80, i8* %81)
  store i32 %82, i32* %3, align 4
  br label %136

83:                                               ; preds = %72
  br label %88

84:                                               ; preds = %67, %62
  %85 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @error(i32 %85, i8* %86)
  store i32 %87, i32* %3, align 4
  br label %136

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %61
  br label %90

90:                                               ; preds = %89, %54
  %91 = load %struct.patch*, %struct.patch** %6, align 8
  %92 = getelementptr inbounds %struct.patch, %struct.patch* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = call %struct.cache_entry* @make_cache_entry(%struct.index_state* %7, i32 %93, %struct.object_id* %10, i8* %94, i32 0, i32 0)
  store %struct.cache_entry* %95, %struct.cache_entry** %11, align 8
  %96 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %97 = icmp ne %struct.cache_entry* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %90
  %99 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @error(i32 %99, i8* %100)
  store i32 %101, i32* %3, align 4
  br label %136

102:                                              ; preds = %90
  %103 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %104 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %105 = call i64 @add_index_entry(%struct.index_state* %7, %struct.cache_entry* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %109 = call i32 @discard_cache_entry(%struct.cache_entry* %108)
  %110 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @error(i32 %110, i8* %111)
  store i32 %112, i32* %3, align 4
  br label %136

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %38
  %115 = load %struct.patch*, %struct.patch** %6, align 8
  %116 = getelementptr inbounds %struct.patch, %struct.patch* %115, i32 0, i32 7
  %117 = load %struct.patch*, %struct.patch** %116, align 8
  store %struct.patch* %117, %struct.patch** %6, align 8
  br label %16

118:                                              ; preds = %16
  %119 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %120 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %123 = call i32 @hold_lock_file_for_update(%struct.lock_file* %8, i8* %121, i32 %122)
  %124 = load i32, i32* @COMMIT_LOCK, align 4
  %125 = call i32 @write_locked_index(%struct.index_state* %7, %struct.lock_file* %8, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = call i32 @discard_index(%struct.index_state* %7)
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %118
  %130 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %132 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @error(i32 %130, i8* %133)
  store i32 %134, i32* %3, align 4
  br label %136

135:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %129, %107, %98, %84, %79, %50
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @S_ISGITLINK(i32) #2

declare dso_local i32 @preimage_oid_in_gitlink_patch(%struct.patch*, %struct.object_id*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @get_oid_blob(i32, %struct.object_id*) #2

declare dso_local i64 @get_current_oid(%struct.apply_state*, i8*, %struct.object_id*) #2

declare dso_local %struct.cache_entry* @make_cache_entry(%struct.index_state*, i32, %struct.object_id*, i8*, i32, i32) #2

declare dso_local i64 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #2

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #2

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i8*, i32) #2

declare dso_local i32 @write_locked_index(%struct.index_state*, %struct.lock_file*, i32) #2

declare dso_local i32 @discard_index(%struct.index_state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
