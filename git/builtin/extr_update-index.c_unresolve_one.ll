; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_unresolve_one.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_unresolve_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i64, i32, i32 }

@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: skipping still unmerged path.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@head_oid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"their\00", align 1
@merge_head_oid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: identical in both, skipping.\0A\00", align 1
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: cannot add our version to the index.\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%s: cannot add their version to the index.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @unresolve_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unresolve_one(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca %struct.cache_entry*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store %struct.cache_entry* null, %struct.cache_entry** %7, align 8
  store %struct.cache_entry* null, %struct.cache_entry** %8, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @cache_name_pos(i8* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 0, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @unmerge_cache_entry_at(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @active_nr, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %25, i64 %27
  %29 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  store %struct.cache_entry* %29, %struct.cache_entry** %9, align 8
  %30 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %31 = call i64 @ce_stage(%struct.cache_entry* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %24
  %34 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %35 = call i32 @ce_namelen(%struct.cache_entry* %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @memcmp(i32 %41, i8* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %137

47:                                               ; preds = %38, %33, %24
  br label %48

48:                                               ; preds = %47, %18
  br label %80

49:                                               ; preds = %1
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 0, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @active_nr, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %49
  %57 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %57, i64 %59
  %61 = load %struct.cache_entry*, %struct.cache_entry** %60, align 8
  store %struct.cache_entry* %61, %struct.cache_entry** %10, align 8
  %62 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %63 = call i32 @ce_namelen(%struct.cache_entry* %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %56
  %67 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %68 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @memcmp(i32 %69, i8* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %76)
  br label %131

78:                                               ; preds = %66, %56
  br label %79

79:                                               ; preds = %78, %49
  br label %80

80:                                               ; preds = %79, %48
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call %struct.cache_entry* @read_one_ent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* @head_oid, i8* %81, i32 %82, i32 2)
  store %struct.cache_entry* %83, %struct.cache_entry** %7, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call %struct.cache_entry* @read_one_ent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* @merge_head_oid, i8* %84, i32 %85, i32 3)
  store %struct.cache_entry* %86, %struct.cache_entry** %8, align 8
  %87 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %88 = icmp ne %struct.cache_entry* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %91 = icmp ne %struct.cache_entry* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %89, %80
  store i32 -1, i32* %6, align 4
  br label %131

93:                                               ; preds = %89
  %94 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %95 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %94, i32 0, i32 1
  %96 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %97 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %96, i32 0, i32 1
  %98 = call i64 @oideq(i32* %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %102 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %105 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i32, i32* @stderr, align 4
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %110)
  br label %131

112:                                              ; preds = %100, %93
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @remove_file_from_cache(i8* %113)
  %115 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %116 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %117 = call i64 @add_cache_entry(%struct.cache_entry* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  store i32 -1, i32* %6, align 4
  br label %131

122:                                              ; preds = %112
  %123 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %124 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %125 = call i64 @add_cache_entry(%struct.cache_entry* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %137

128:                                              ; preds = %122
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %129)
  store i32 -1, i32* %6, align 4
  br label %131

131:                                              ; preds = %128, %119, %108, %92, %74
  %132 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %133 = call i32 @discard_cache_entry(%struct.cache_entry* %132)
  %134 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %135 = call i32 @discard_cache_entry(%struct.cache_entry* %134)
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %131, %127, %46
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cache_name_pos(i8*, i32) #1

declare dso_local i32 @unmerge_cache_entry_at(i32) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.cache_entry* @read_one_ent(i8*, i32*, i8*, i32, i32) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @remove_file_from_cache(i8*) #1

declare dso_local i64 @add_cache_entry(%struct.cache_entry*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
