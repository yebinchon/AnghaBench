; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_find_paths_generic.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_find_paths_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.combine_diff_path = type { i32 }
%struct.object_id = type { i32 }
%struct.oid_array = type { i32, i32* }
%struct.diff_options = type { i32, i8* }

@DIFF_FORMAT_NO_OUTPUT = common dso_local global i8* null, align 8
@STAT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.combine_diff_path* (%struct.object_id*, %struct.oid_array*, %struct.diff_options*, i32)* @find_paths_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.combine_diff_path* @find_paths_generic(%struct.object_id* %0, %struct.oid_array* %1, %struct.diff_options* %2, i32 %3) #0 {
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.oid_array*, align 8
  %7 = alloca %struct.diff_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.combine_diff_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.oid_array* %1, %struct.oid_array** %6, align 8
  store %struct.diff_options* %2, %struct.diff_options** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.combine_diff_path* null, %struct.combine_diff_path** %9, align 8
  %15 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %16 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %19 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %22 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** @DIFF_FORMAT_NO_OUTPUT, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %27 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %28, i32 0, i32 1
  store i8* null, i8** %29, align 8
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %85, %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @STAT_FORMAT_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %46 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %52

47:                                               ; preds = %40, %34
  %48 = load i8*, i8** @DIFF_FORMAT_NO_OUTPUT, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %51 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %43
  %53 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %54 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.object_id*, %struct.object_id** %5, align 8
  %60 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %61 = call i32 @diff_tree_oid(i32* %58, %struct.object_id* %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.diff_options* %60)
  %62 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %63 = call i32 @diffcore_std(%struct.diff_options* %62)
  %64 = load %struct.combine_diff_path*, %struct.combine_diff_path** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call %struct.combine_diff_path* @intersect_paths(%struct.combine_diff_path* %64, i32 %65, i32 %66, i32 %67)
  store %struct.combine_diff_path* %68, %struct.combine_diff_path** %9, align 8
  %69 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %70 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i8*, i8** @DIFF_FORMAT_NO_OUTPUT, align 8
  %75 = icmp ne i8* %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %52
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @diffcore_order(i8* %80)
  br label %82

82:                                               ; preds = %79, %76, %52
  %83 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %84 = call i32 @diff_flush(%struct.diff_options* %83)
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %30

88:                                               ; preds = %30
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %91 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %94 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.combine_diff_path*, %struct.combine_diff_path** %9, align 8
  ret %struct.combine_diff_path* %95
}

declare dso_local i32 @diff_tree_oid(i32*, %struct.object_id*, i8*, %struct.diff_options*) #1

declare dso_local i32 @diffcore_std(%struct.diff_options*) #1

declare dso_local %struct.combine_diff_path* @intersect_paths(%struct.combine_diff_path*, i32, i32, i32) #1

declare dso_local i32 @diffcore_order(i8*) #1

declare dso_local i32 @diff_flush(%struct.diff_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
