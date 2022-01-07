; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_overlay_tree_on_index.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_overlay_tree_on_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }
%struct.tree = type { i32 }
%struct.object_id = type { i32 }
%struct.pathspec = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"tree-ish %s not found.\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bad tree-ish %s\00", align 1
@CE_STAGEMASK = common dso_local global i32 0, align 4
@overlay_tree_on_index.matchbuf = internal global [1 x i8*] zeroinitializer, align 8
@PATHSPEC_ALL_MAGIC = common dso_local global i32 0, align 4
@PATHSPEC_PREFER_CWD = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to read tree entries %s\00", align 1
@CE_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @overlay_tree_on_index(%struct.index_state* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tree*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.pathspec, align 4
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cache_entry*, align 8
  %13 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.cache_entry* null, %struct.cache_entry** %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @get_oid(i8* %14, %struct.object_id* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %8)
  store %struct.tree* %21, %struct.tree** %7, align 8
  %22 = load %struct.tree*, %struct.tree** %7, align 8
  %23 = icmp ne %struct.tree* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %20
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %52, %27
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.index_state*, %struct.index_state** %4, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.index_state*, %struct.index_state** %4, align 8
  %36 = getelementptr inbounds %struct.index_state, %struct.index_state* %35, i32 0, i32 1
  %37 = load %struct.cache_entry**, %struct.cache_entry*** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %37, i64 %39
  %41 = load %struct.cache_entry*, %struct.cache_entry** %40, align 8
  store %struct.cache_entry* %41, %struct.cache_entry** %12, align 8
  %42 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %43 = call i32 @ce_stage(%struct.cache_entry* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %52

46:                                               ; preds = %34
  %47 = load i32, i32* @CE_STAGEMASK, align 4
  %48 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %49 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %28

55:                                               ; preds = %28
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  store i8* null, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @overlay_tree_on_index.matchbuf, i64 0, i64 0), align 8
  %59 = load i32, i32* @PATHSPEC_ALL_MAGIC, align 4
  %60 = load i32, i32* @PATHSPEC_PREFER_CWD, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @parse_pathspec(%struct.pathspec* %9, i32 %59, i32 %60, i8* %61, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @overlay_tree_on_index.matchbuf, i64 0, i64 0))
  br label %65

63:                                               ; preds = %55
  %64 = call i32 @memset(%struct.pathspec* %9, i32 0, i32 4)
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* @the_repository, align 4
  %67 = load %struct.tree*, %struct.tree** %7, align 8
  %68 = load %struct.index_state*, %struct.index_state** %4, align 8
  %69 = call i64 @read_tree(i32 %66, %struct.tree* %67, i32 1, %struct.pathspec* %9, %struct.index_state* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %65
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %114, %74
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.index_state*, %struct.index_state** %4, align 8
  %78 = getelementptr inbounds %struct.index_state, %struct.index_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %117

81:                                               ; preds = %75
  %82 = load %struct.index_state*, %struct.index_state** %4, align 8
  %83 = getelementptr inbounds %struct.index_state, %struct.index_state* %82, i32 0, i32 1
  %84 = load %struct.cache_entry**, %struct.cache_entry*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %84, i64 %86
  %88 = load %struct.cache_entry*, %struct.cache_entry** %87, align 8
  store %struct.cache_entry* %88, %struct.cache_entry** %13, align 8
  %89 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %90 = call i32 @ce_stage(%struct.cache_entry* %89)
  switch i32 %90, label %93 [
    i32 0, label %91
    i32 1, label %94
  ]

91:                                               ; preds = %81
  %92 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  store %struct.cache_entry* %92, %struct.cache_entry** %10, align 8
  br label %93

93:                                               ; preds = %81, %91
  br label %114

94:                                               ; preds = %81
  %95 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %96 = icmp ne %struct.cache_entry* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %99 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %102 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strcmp(i32 %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %97
  %107 = load i32, i32* @CE_UPDATE, align 4
  %108 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %109 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %97, %94
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %93
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %75

117:                                              ; preds = %75
  ret void
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @parse_pathspec(%struct.pathspec*, i32, i32, i8*, i8**) #1

declare dso_local i32 @memset(%struct.pathspec*, i32, i32) #1

declare dso_local i64 @read_tree(i32, %struct.tree*, i32, %struct.pathspec*, %struct.index_state*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
