; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_tree_is_complete.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_tree_is_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { %struct.object_id, i32 }
%struct.tree = type { i64, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@INCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*)* @tree_is_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_is_complete(%struct.object_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.tree_desc, align 4
  %5 = alloca %struct.name_entry, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  %11 = load i32, i32* @the_repository, align 4
  %12 = load %struct.object_id*, %struct.object_id** %3, align 8
  %13 = call %struct.tree* @lookup_tree(i32 %11, %struct.object_id* %12)
  store %struct.tree* %13, %struct.tree** %7, align 8
  %14 = load %struct.tree*, %struct.tree** %7, align 8
  %15 = icmp ne %struct.tree* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

17:                                               ; preds = %1
  %18 = load %struct.tree*, %struct.tree** %7, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SEEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %105

26:                                               ; preds = %17
  %27 = load %struct.tree*, %struct.tree** %7, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @INCOMPLETE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %105

35:                                               ; preds = %26
  %36 = load %struct.tree*, %struct.tree** %7, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %35
  %41 = load %struct.object_id*, %struct.object_id** %3, align 8
  %42 = call i8* @read_object_file(%struct.object_id* %41, i32* %8, i64* %9)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @INCOMPLETE, align 4
  %47 = load %struct.tree*, %struct.tree** %7, align 8
  %48 = getelementptr inbounds %struct.tree, %struct.tree* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %105

52:                                               ; preds = %40
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.tree*, %struct.tree** %7, align 8
  %55 = getelementptr inbounds %struct.tree, %struct.tree* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.tree*, %struct.tree** %7, align 8
  %58 = getelementptr inbounds %struct.tree, %struct.tree* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %35
  %60 = load %struct.tree*, %struct.tree** %7, align 8
  %61 = getelementptr inbounds %struct.tree, %struct.tree* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.tree*, %struct.tree** %7, align 8
  %64 = getelementptr inbounds %struct.tree, %struct.tree* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @init_tree_desc(%struct.tree_desc* %4, i8* %62, i64 %65)
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %90, %59
  %68 = call i64 @tree_entry(%struct.tree_desc* %4, %struct.name_entry* %5)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %5, i32 0, i32 0
  %72 = call i32 @has_object_file(%struct.object_id* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %5, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISDIR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %5, i32 0, i32 0
  %81 = call i32 @tree_is_complete(%struct.object_id* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79, %70
  %84 = load i32, i32* @INCOMPLETE, align 4
  %85 = load %struct.tree*, %struct.tree** %7, align 8
  %86 = getelementptr inbounds %struct.tree, %struct.tree* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 8
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %83, %79, %74
  br label %67

91:                                               ; preds = %67
  %92 = load %struct.tree*, %struct.tree** %7, align 8
  %93 = call i32 @free_tree_buffer(%struct.tree* %92)
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* @SEEN, align 4
  %98 = load %struct.tree*, %struct.tree** %7, align 8
  %99 = getelementptr inbounds %struct.tree, %struct.tree* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %45, %34, %25, %16
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.tree* @lookup_tree(i32, %struct.object_id*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i8*, i64) #1

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i32 @has_object_file(%struct.object_id*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @free_tree_buffer(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
