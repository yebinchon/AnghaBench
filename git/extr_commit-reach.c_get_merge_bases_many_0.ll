; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_get_merge_bases_many_0.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_get_merge_bases_many_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.repository = type { i32 }
%struct.commit = type { i32 }

@all_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.repository*, %struct.commit*, i32, %struct.commit**, i32)* @get_merge_bases_many_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @get_merge_bases_many_0(%struct.repository* %0, %struct.commit* %1, i32 %2, %struct.commit** %3, i32 %4) #0 {
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca %struct.commit**, align 8
  %14 = alloca %struct.commit_list*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.commit* %1, %struct.commit** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.commit** %3, %struct.commit*** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.repository*, %struct.repository** %7, align 8
  %18 = load %struct.commit*, %struct.commit** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.commit**, %struct.commit*** %10, align 8
  %21 = call %struct.commit_list* @merge_bases_many(%struct.repository* %17, %struct.commit* %18, i32 %19, %struct.commit** %20)
  store %struct.commit_list* %21, %struct.commit_list** %14, align 8
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %37, %5
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.commit*, %struct.commit** %8, align 8
  %28 = load %struct.commit**, %struct.commit*** %10, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.commit*, %struct.commit** %28, i64 %30
  %32 = load %struct.commit*, %struct.commit** %31, align 8
  %33 = icmp eq %struct.commit* %27, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  store %struct.commit_list* %35, %struct.commit_list** %6, align 8
  br label %115

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %16, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  %42 = icmp ne %struct.commit_list* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  %45 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %44, i32 0, i32 1
  %46 = load %struct.commit_list*, %struct.commit_list** %45, align 8
  %47 = icmp ne %struct.commit_list* %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.commit*, %struct.commit** %8, align 8
  %53 = load i32, i32* @all_flags, align 4
  %54 = call i32 @clear_commit_marks(%struct.commit* %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.commit**, %struct.commit*** %10, align 8
  %57 = load i32, i32* @all_flags, align 4
  %58 = call i32 @clear_commit_marks_many(i32 %55, %struct.commit** %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %48
  %60 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  store %struct.commit_list* %60, %struct.commit_list** %6, align 8
  br label %115

61:                                               ; preds = %43
  %62 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  %63 = call i32 @commit_list_count(%struct.commit_list* %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call %struct.commit** @xcalloc(i32 %64, i32 8)
  store %struct.commit** %65, %struct.commit*** %13, align 8
  %66 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  store %struct.commit_list* %66, %struct.commit_list** %12, align 8
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %79, %61
  %68 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %69 = icmp ne %struct.commit_list* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %72 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %71, i32 0, i32 0
  %73 = load %struct.commit*, %struct.commit** %72, align 8
  %74 = load %struct.commit**, %struct.commit*** %13, align 8
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.commit*, %struct.commit** %74, i64 %77
  store %struct.commit* %73, %struct.commit** %78, align 8
  br label %79

79:                                               ; preds = %70
  %80 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %81 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %80, i32 0, i32 1
  %82 = load %struct.commit_list*, %struct.commit_list** %81, align 8
  store %struct.commit_list* %82, %struct.commit_list** %12, align 8
  br label %67

83:                                               ; preds = %67
  %84 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  %85 = call i32 @free_commit_list(%struct.commit_list* %84)
  %86 = load %struct.commit*, %struct.commit** %8, align 8
  %87 = load i32, i32* @all_flags, align 4
  %88 = call i32 @clear_commit_marks(%struct.commit* %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.commit**, %struct.commit*** %10, align 8
  %91 = load i32, i32* @all_flags, align 4
  %92 = call i32 @clear_commit_marks_many(i32 %89, %struct.commit** %90, i32 %91)
  %93 = load %struct.repository*, %struct.repository** %7, align 8
  %94 = load %struct.commit**, %struct.commit*** %13, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @remove_redundant(%struct.repository* %93, %struct.commit** %94, i32 %95)
  store i32 %96, i32* %15, align 4
  store %struct.commit_list* null, %struct.commit_list** %14, align 8
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %108, %83
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load %struct.commit**, %struct.commit*** %13, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.commit*, %struct.commit** %102, i64 %104
  %106 = load %struct.commit*, %struct.commit** %105, align 8
  %107 = call i32 @commit_list_insert_by_date(%struct.commit* %106, %struct.commit_list** %14)
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  br label %97

111:                                              ; preds = %97
  %112 = load %struct.commit**, %struct.commit*** %13, align 8
  %113 = call i32 @free(%struct.commit** %112)
  %114 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  store %struct.commit_list* %114, %struct.commit_list** %6, align 8
  br label %115

115:                                              ; preds = %111, %59, %34
  %116 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  ret %struct.commit_list* %116
}

declare dso_local %struct.commit_list* @merge_bases_many(%struct.repository*, %struct.commit*, i32, %struct.commit**) #1

declare dso_local i32 @clear_commit_marks(%struct.commit*, i32) #1

declare dso_local i32 @clear_commit_marks_many(i32, %struct.commit**, i32) #1

declare dso_local i32 @commit_list_count(%struct.commit_list*) #1

declare dso_local %struct.commit** @xcalloc(i32, i32) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i32 @remove_redundant(%struct.repository*, %struct.commit**, i32) #1

declare dso_local i32 @commit_list_insert_by_date(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @free(%struct.commit**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
