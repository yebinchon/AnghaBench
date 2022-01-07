; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_read_tree_trivial.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_read_tree_trivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.tree = type { i32, i32 }
%struct.tree_desc = type { i32 }

@MAX_UNPACK_TREES = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@threeway_merge = common dso_local global i32 0, align 4
@active_cache_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, %struct.object_id*)* @read_tree_trivial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tree_trivial(%struct.object_id* %0, %struct.object_id* %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.unpack_trees_options, align 8
  %14 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @MAX_UNPACK_TREES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.tree*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @MAX_UNPACK_TREES, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca %struct.tree_desc, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %22 = call i32 @memset(%struct.unpack_trees_options* %13, i32 0, i32 40)
  %23 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 0
  store i32 2, i32* %23, align 8
  %24 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 7
  store i32* @the_index, i32** %24, align 8
  %25 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 6
  store i32* @the_index, i32** %25, align 8
  %26 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 3
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 4
  store i32 1, i32* %29, align 8
  %30 = load %struct.object_id*, %struct.object_id** %5, align 8
  %31 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %30)
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tree*, %struct.tree** %18, i64 %33
  store %struct.tree* %31, %struct.tree** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %struct.tree*, %struct.tree** %18, i64 %37
  %39 = load %struct.tree*, %struct.tree** %38, align 8
  %40 = icmp ne %struct.tree* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %107

42:                                               ; preds = %3
  %43 = load %struct.object_id*, %struct.object_id** %6, align 8
  %44 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %43)
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tree*, %struct.tree** %18, i64 %46
  store %struct.tree* %44, %struct.tree** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds %struct.tree*, %struct.tree** %18, i64 %50
  %52 = load %struct.tree*, %struct.tree** %51, align 8
  %53 = icmp ne %struct.tree* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %107

55:                                               ; preds = %42
  %56 = load %struct.object_id*, %struct.object_id** %7, align 8
  %57 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %56)
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.tree*, %struct.tree** %18, i64 %59
  store %struct.tree* %57, %struct.tree** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds %struct.tree*, %struct.tree** %18, i64 %63
  %65 = load %struct.tree*, %struct.tree** %64, align 8
  %66 = icmp ne %struct.tree* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %107

68:                                               ; preds = %55
  %69 = load i32, i32* @threeway_merge, align 4
  %70 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 5
  store i32 %69, i32* %70, align 4
  %71 = call i32 @cache_tree_free(i32* @active_cache_tree)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %98, %68
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.tree*, %struct.tree** %18, i64 %78
  %80 = load %struct.tree*, %struct.tree** %79, align 8
  %81 = call i32 @parse_tree(%struct.tree* %80)
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %21, i64 %83
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.tree*, %struct.tree** %18, i64 %86
  %88 = load %struct.tree*, %struct.tree** %87, align 8
  %89 = getelementptr inbounds %struct.tree, %struct.tree* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.tree*, %struct.tree** %18, i64 %92
  %94 = load %struct.tree*, %struct.tree** %93, align 8
  %95 = getelementptr inbounds %struct.tree, %struct.tree* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @init_tree_desc(%struct.tree_desc* %84, i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %76
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %72

101:                                              ; preds = %72
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @unpack_trees(i32 %102, %struct.tree_desc* %21, %struct.unpack_trees_options* %13)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %107

106:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %107

107:                                              ; preds = %106, %105, %67, %54, %41
  %108 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.unpack_trees_options*, i32, i32) #2

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #2

declare dso_local i32 @cache_tree_free(i32*) #2

declare dso_local i32 @parse_tree(%struct.tree*) #2

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #2

declare dso_local i64 @unpack_trees(i32, %struct.tree_desc*, %struct.unpack_trees_options*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
