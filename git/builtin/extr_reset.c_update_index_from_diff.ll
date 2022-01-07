; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reset.c_update_index_from_diff.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reset.c_update_index_from_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.diff_filespec* }
%struct.diff_filespec = type { i32, i32, i64 }
%struct.diff_options = type { i32 }
%struct.cache_entry = type { i32 }

@the_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"make_cache_entry failed for path '%s'\00", align 1
@CE_INTENT_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_queue_struct*, %struct.diff_options*, i8*)* @update_index_from_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_index_from_diff(%struct.diff_queue_struct* %0, %struct.diff_options* %1, i8* %2) #0 {
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.diff_filespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cache_entry*, align 8
  store %struct.diff_queue_struct* %0, %struct.diff_queue_struct** %4, align 8
  store %struct.diff_options* %1, %struct.diff_options** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %90, %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %18 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %15
  %22 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %23 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %29, align 8
  store %struct.diff_filespec* %30, %struct.diff_filespec** %9, align 8
  %31 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %32 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %37 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %36, i32 0, i32 1
  %38 = call i32 @is_null_oid(i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %21
  %42 = phi i1 [ false, %21 ], [ %40, %35 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %52 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @remove_file_from_cache(i32 %53)
  br label %90

55:                                               ; preds = %47, %41
  %56 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %57 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %60 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %59, i32 0, i32 1
  %61 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %62 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.cache_entry* @make_cache_entry(i32* @the_index, i64 %58, i32* %60, i32 %63, i32 0, i32 0)
  store %struct.cache_entry* %64, %struct.cache_entry** %11, align 8
  %65 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %66 = icmp ne %struct.cache_entry* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %55
  %68 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %70 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @die(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %55
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* @CE_INTENT_TO_ADD, align 4
  %78 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %79 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %83 = call i32 @set_object_name_for_intent_to_add_entry(%struct.cache_entry* %82)
  br label %84

84:                                               ; preds = %76, %73
  %85 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %86 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %87 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @add_cache_entry(%struct.cache_entry* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %50
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %15

93:                                               ; preds = %15
  ret void
}

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i32 @remove_file_from_cache(i32) #1

declare dso_local %struct.cache_entry* @make_cache_entry(i32*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @set_object_name_for_intent_to_add_entry(%struct.cache_entry*) #1

declare dso_local i32 @add_cache_entry(%struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
