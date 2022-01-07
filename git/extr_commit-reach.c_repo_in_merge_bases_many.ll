; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_repo_in_merge_bases_many.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_repo_in_merge_bases_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { i32 }

@GENERATION_NUMBER_INFINITY = common dso_local global i64 0, align 8
@PARENT2 = common dso_local global i32 0, align 4
@all_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_in_merge_bases_many(%struct.repository* %0, %struct.commit* %1, i32 %2, %struct.commit** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit**, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.commit* %1, %struct.commit** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.commit** %3, %struct.commit*** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* @GENERATION_NUMBER_INFINITY, align 8
  store i64 %14, i64* %13, align 8
  %15 = load %struct.repository*, %struct.repository** %6, align 8
  %16 = load %struct.commit*, %struct.commit** %7, align 8
  %17 = call i64 @repo_parse_commit(%struct.repository* %15, %struct.commit* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %95

21:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.repository*, %struct.repository** %6, align 8
  %28 = load %struct.commit**, %struct.commit*** %9, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.commit*, %struct.commit** %28, i64 %30
  %32 = load %struct.commit*, %struct.commit** %31, align 8
  %33 = call i64 @repo_parse_commit(%struct.repository* %27, %struct.commit* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %95

37:                                               ; preds = %26
  %38 = load %struct.commit**, %struct.commit*** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.commit*, %struct.commit** %38, i64 %40
  %42 = load %struct.commit*, %struct.commit** %41, align 8
  %43 = getelementptr inbounds %struct.commit, %struct.commit* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.commit**, %struct.commit*** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.commit*, %struct.commit** %48, i64 %50
  %52 = load %struct.commit*, %struct.commit** %51, align 8
  %53 = getelementptr inbounds %struct.commit, %struct.commit* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %47, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %22

59:                                               ; preds = %22
  %60 = load %struct.commit*, %struct.commit** %7, align 8
  %61 = getelementptr inbounds %struct.commit, %struct.commit* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %95

67:                                               ; preds = %59
  %68 = load %struct.repository*, %struct.repository** %6, align 8
  %69 = load %struct.commit*, %struct.commit** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.commit**, %struct.commit*** %9, align 8
  %72 = load %struct.commit*, %struct.commit** %7, align 8
  %73 = getelementptr inbounds %struct.commit, %struct.commit* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.commit_list* @paint_down_to_common(%struct.repository* %68, %struct.commit* %69, i32 %70, %struct.commit** %71, i64 %74)
  store %struct.commit_list* %75, %struct.commit_list** %10, align 8
  %76 = load %struct.commit*, %struct.commit** %7, align 8
  %77 = getelementptr inbounds %struct.commit, %struct.commit* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PARENT2, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  store i32 1, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %67
  %85 = load %struct.commit*, %struct.commit** %7, align 8
  %86 = load i32, i32* @all_flags, align 4
  %87 = call i32 @clear_commit_marks(%struct.commit* %85, i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.commit**, %struct.commit*** %9, align 8
  %90 = load i32, i32* @all_flags, align 4
  %91 = call i32 @clear_commit_marks_many(i32 %88, %struct.commit** %89, i32 %90)
  %92 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %93 = call i32 @free_commit_list(%struct.commit_list* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %84, %65, %35, %19
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @repo_parse_commit(%struct.repository*, %struct.commit*) #1

declare dso_local %struct.commit_list* @paint_down_to_common(%struct.repository*, %struct.commit*, i32, %struct.commit**, i64) #1

declare dso_local i32 @clear_commit_marks(%struct.commit*, i32) #1

declare dso_local i32 @clear_commit_marks_many(i32, %struct.commit**, i32) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
