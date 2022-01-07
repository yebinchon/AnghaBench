; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_add_index_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_add_index_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }
%struct.cache_entry = type { i32, i32, i32, i32, i32 }

@CE_INTENT_TO_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Subproject commit \00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"corrupt patch for submodule %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"unable to stat newly created file '%s'\00", align 1
@blob_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"unable to create backing store for newly created file %s\00", align 1
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to add cache entry for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*, i32, i8*, i64)* @add_index_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_index_file(%struct.apply_state* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.apply_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca %struct.cache_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %19 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call %struct.cache_entry* @make_empty_cache_entry(i32 %22, i32 %23)
  store %struct.cache_entry* %24, %struct.cache_entry** %13, align 8
  %25 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %26 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @memcpy(i32 %27, i8* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @create_ce_mode(i32 %31)
  %33 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %34 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = call i32 @create_ce_flags(i32 0)
  %36 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %42 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %5
  %46 = load i32, i32* @CE_INTENT_TO_ADD, align 4
  %47 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %48 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %52 = call i32 @set_object_name_for_intent_to_add_entry(%struct.cache_entry* %51)
  br label %113

53:                                               ; preds = %5
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @S_ISGITLINK(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @skip_prefix(i8* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %15)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i8*, i8** %15, align 8
  %63 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 1
  %65 = call i64 @get_oid_hex(i8* %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61, %57
  %68 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %69 = call i32 @discard_cache_entry(%struct.cache_entry* %68)
  %70 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @error(i32 %70, i8* %71)
  store i32 %72, i32* %6, align 4
  br label %130

73:                                               ; preds = %61
  br label %112

74:                                               ; preds = %53
  %75 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %76 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @lstat(i8* %80, %struct.stat* %12)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %85 = call i32 @discard_cache_entry(%struct.cache_entry* %84)
  %86 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @error_errno(i32 %86, i8* %87)
  store i32 %88, i32* %6, align 4
  br label %130

89:                                               ; preds = %79
  %90 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %91 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %96 = call i32 @fill_stat_cache_info(i32 %94, %struct.cache_entry* %95, %struct.stat* %12)
  br label %97

97:                                               ; preds = %89, %74
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i32, i32* @blob_type, align 4
  %101 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %102 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %101, i32 0, i32 1
  %103 = call i64 @write_object_file(i8* %98, i64 %99, i32 %100, i32* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %107 = call i32 @discard_cache_entry(%struct.cache_entry* %106)
  %108 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @error(i32 %108, i8* %109)
  store i32 %110, i32* %6, align 4
  br label %130

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %73
  br label %113

113:                                              ; preds = %112, %45
  %114 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %115 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %120 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %121 = call i64 @add_index_entry(i32 %118, %struct.cache_entry* %119, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %125 = call i32 @discard_cache_entry(%struct.cache_entry* %124)
  %126 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @error(i32 %126, i8* %127)
  store i32 %128, i32* %6, align 4
  br label %130

129:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %123, %105, %83, %67
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i32 @set_object_name_for_intent_to_add_entry(%struct.cache_entry*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @get_oid_hex(i8*, i32*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @fill_stat_cache_info(i32, %struct.cache_entry*, %struct.stat*) #1

declare dso_local i64 @write_object_file(i8*, i64, i32, i32*) #1

declare dso_local i64 @add_index_entry(i32, %struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
