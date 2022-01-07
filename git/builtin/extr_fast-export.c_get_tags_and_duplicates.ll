; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_get_tags_and_duplicates.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_get_tags_and_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.rev_cmdline_info = type { i32, %struct.rev_cmdline_entry* }
%struct.rev_cmdline_entry = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.commit* }

@UNINTERESTING = common dso_local global i32 0, align 4
@refspecs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [44 x i8] c"%s: Unexpected object of type %s, skipping.\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Tag points to object of unexpected type %s, skipping.\00", align 1
@OBJ_TAG = common dso_local global i64 0, align 8
@extra_refs = common dso_local global i32 0, align 4
@revision_sources = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_cmdline_info*)* @get_tags_and_duplicates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tags_and_duplicates(%struct.rev_cmdline_info* %0) #0 {
  %2 = alloca %struct.rev_cmdline_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rev_cmdline_entry*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.rev_cmdline_info* %0, %struct.rev_cmdline_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %112, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.rev_cmdline_info*, %struct.rev_cmdline_info** %2, align 8
  %12 = getelementptr inbounds %struct.rev_cmdline_info, %struct.rev_cmdline_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %115

15:                                               ; preds = %9
  %16 = load %struct.rev_cmdline_info*, %struct.rev_cmdline_info** %2, align 8
  %17 = getelementptr inbounds %struct.rev_cmdline_info, %struct.rev_cmdline_info* %16, i32 0, i32 1
  %18 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %18, i64 %20
  store %struct.rev_cmdline_entry* %21, %struct.rev_cmdline_entry** %4, align 8
  %22 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %23 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @UNINTERESTING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %112

29:                                               ; preds = %15
  %30 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %31 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %34 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strlen(i32 %35)
  %37 = call i32 @dwim_ref(i32 %32, i32 %36, %struct.object_id* %5, i8** %7)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %112

40:                                               ; preds = %29
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @refspecs, i32 0, i32 0), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @apply_refspecs(%struct.TYPE_9__* @refspecs, i8* %44)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i8*, i8** %8, align 8
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call %struct.commit* @get_commit(%struct.rev_cmdline_entry* %54, i8* %55)
  store %struct.commit* %56, %struct.commit** %6, align 8
  %57 = load %struct.commit*, %struct.commit** %6, align 8
  %58 = icmp ne %struct.commit* %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %53
  %60 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %61 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %64 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @type_name(i32 %67)
  %69 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %68)
  br label %112

70:                                               ; preds = %53
  %71 = load %struct.commit*, %struct.commit** %6, align 8
  %72 = getelementptr inbounds %struct.commit, %struct.commit* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %81 [
    i32 128, label %75
    i32 129, label %76
  ]

75:                                               ; preds = %70
  br label %88

76:                                               ; preds = %70
  %77 = load %struct.commit*, %struct.commit** %6, align 8
  %78 = getelementptr inbounds %struct.commit, %struct.commit* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = call i32 @export_blob(i32* %79)
  br label %112

81:                                               ; preds = %70
  %82 = load %struct.commit*, %struct.commit** %6, align 8
  %83 = getelementptr inbounds %struct.commit, %struct.commit* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @type_name(i32 %85)
  %87 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %112

88:                                               ; preds = %75
  %89 = load %struct.rev_cmdline_entry*, %struct.rev_cmdline_entry** %4, align 8
  %90 = getelementptr inbounds %struct.rev_cmdline_entry, %struct.rev_cmdline_entry* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @OBJ_TAG, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.commit*, %struct.commit** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call %struct.TYPE_8__* @string_list_append(i32* @extra_refs, i8* %99)
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store %struct.commit* %98, %struct.commit** %101, align 8
  br label %102

102:                                              ; preds = %97, %88
  %103 = load %struct.commit*, %struct.commit** %6, align 8
  %104 = call i8** @revision_sources_at(i32* @revision_sources, %struct.commit* %103)
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.commit*, %struct.commit** %6, align 8
  %110 = call i8** @revision_sources_at(i32* @revision_sources, %struct.commit* %109)
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %102
  br label %112

112:                                              ; preds = %111, %81, %76, %59, %39, %28
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %9

115:                                              ; preds = %9
  %116 = call i32 @string_list_sort(i32* @extra_refs)
  %117 = call i32 @string_list_remove_duplicates(i32* @extra_refs, i32 0)
  ret void
}

declare dso_local i32 @dwim_ref(i32, i32, %struct.object_id*, i8**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @apply_refspecs(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.commit* @get_commit(%struct.rev_cmdline_entry*, i8*) #1

declare dso_local i32 @warning(i8*, i32, ...) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i32 @export_blob(i32*) #1

declare dso_local %struct.TYPE_8__* @string_list_append(i32*, i8*) #1

declare dso_local i8** @revision_sources_at(i32*, %struct.commit*) #1

declare dso_local i32 @string_list_sort(i32*) #1

declare dso_local i32 @string_list_remove_duplicates(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
