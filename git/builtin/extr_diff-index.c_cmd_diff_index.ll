; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff-index.c_cmd_diff_index.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff-index.c_cmd_diff_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@diff_cache_usage = common dso_local global i32 0, align 4
@git_diff_basic_config = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"--cached\00", align 1
@DIFF_FORMAT_RAW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"read_cache_preload\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read_cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_diff_index(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rev_info, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @diff_cache_usage, align 4
  %23 = call i32 @usage(i32 %22)
  br label %24

24:                                               ; preds = %21, %15, %3
  %25 = load i32, i32* @git_diff_basic_config, align 4
  %26 = call i32 @git_config(i32 %25, i32* null)
  %27 = load i32, i32* @the_repository, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @repo_init_revisions(i32 %27, %struct.rev_info* %8, i8* %28)
  %30 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = call i32 @precompose_argv(i32 %31, i8** %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i8**, i8*** %6, align 8
  %36 = call i32 @setup_revisions(i32 %34, i8** %35, %struct.rev_info* %8, i32* null)
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %55, %24
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @diff_cache_usage, align 4
  %53 = call i32 @usage(i32 %52)
  br label %54

54:                                               ; preds = %51, %50
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %37

58:                                               ; preds = %37
  %59 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @DIFF_FORMAT_RAW, align 8
  %65 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %84, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %76, %72, %67
  %85 = load i32, i32* @diff_cache_usage, align 4
  %86 = call i32 @usage(i32 %85)
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = call i32 (...) @setup_work_tree()
  %92 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i64 @read_cache_preload(i32* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %112

98:                                               ; preds = %90
  br label %105

99:                                               ; preds = %87
  %100 = call i64 (...) @read_cache()
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %112

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @run_diff_index(%struct.rev_info* %8, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = call i32 @UNLEAK(%struct.rev_info* byval(%struct.rev_info) align 8 %8)
  %109 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 3
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @diff_result_code(%struct.TYPE_4__* %109, i32 %110)
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %105, %102, %96
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i32 @precompose_argv(i32, i8**) #1

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #1

declare dso_local i32 @setup_work_tree(...) #1

declare dso_local i64 @read_cache_preload(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @read_cache(...) #1

declare dso_local i32 @run_diff_index(%struct.rev_info*, i32) #1

declare dso_local i32 @UNLEAK(%struct.rev_info* byval(%struct.rev_info) align 8) #1

declare dso_local i32 @diff_result_code(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
