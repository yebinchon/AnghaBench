; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"--base\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--ours\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"--theirs\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@DIFF_SILENT_ON_REMOVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@builtin_diff_usage = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"invalid option: %s\00", align 1
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"read_cache_preload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, i32, i8**)* @builtin_diff_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_diff_files(%struct.rev_info* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %78, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 1, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br label %20

20:                                               ; preds = %12, %9
  %21 = phi i1 [ false, %9 ], [ %19, %12 ]
  br i1 %21, label %22, label %83

22:                                               ; preds = %20
  %23 = load i8**, i8*** %7, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %30 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %78

31:                                               ; preds = %22
  %32 = load i8**, i8*** %7, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %39 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %38, i32 0, i32 0
  store i32 2, i32* %39, align 4
  br label %77

40:                                               ; preds = %31
  %41 = load i8**, i8*** %7, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %48 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %47, i32 0, i32 0
  store i32 3, i32* %48, align 4
  br label %76

49:                                               ; preds = %40
  %50 = load i8**, i8*** %7, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @DIFF_SILENT_ON_REMOVED, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %75

59:                                               ; preds = %49
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @builtin_diff_usage, align 4
  %67 = call i32 @usage(i32 %66)
  br label %74

68:                                               ; preds = %59
  %69 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i8**, i8*** %7, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @error(i32 %69, i8* %72)
  store i32 %73, i32* %4, align 4
  br label %119

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %55
  br label %76

76:                                               ; preds = %75, %46
  br label %77

77:                                               ; preds = %76, %37
  br label %78

78:                                               ; preds = %77, %28
  %79 = load i8**, i8*** %7, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %6, align 4
  br label %9

83:                                               ; preds = %20
  %84 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %85 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %90 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %88
  %94 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %95 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %103 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %102, i32 0, i32 2
  store i32 1, i32* %103, align 4
  %104 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %105 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %93, %88, %83
  %107 = call i32 (...) @setup_work_tree()
  %108 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %109 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = call i64 @read_cache_preload(i32* %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

115:                                              ; preds = %106
  %116 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @run_diff_files(%struct.rev_info* %116, i32 %117)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %113, %68
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @setup_work_tree(...) #1

declare dso_local i64 @read_cache_preload(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @run_diff_files(%struct.rev_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
