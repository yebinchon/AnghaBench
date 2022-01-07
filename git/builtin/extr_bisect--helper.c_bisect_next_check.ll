; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_next_check.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_next_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bisect_terms = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"refs/bisect/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s-*\00", align 1
@mark_good = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"refs/bisect/\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"bisecting only with a %s commit\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Are you sure [Y/n]? \00", align 1
@PROMPT_ECHO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@need_bad_and_good_revision_warning = common dso_local global i8* null, align 8
@vocab_bad = common dso_local global i8* null, align 8
@vocab_good = common dso_local global i8* null, align 8
@need_bisect_start_warning = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bisect_terms*, i8*)* @bisect_next_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisect_next_check(%struct.bisect_terms* %0, i8* %1) #0 {
  %3 = alloca %struct.bisect_terms*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.bisect_terms* %0, %struct.bisect_terms** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.bisect_terms*, %struct.bisect_terms** %3, align 8
  %12 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @xstrfmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load %struct.bisect_terms*, %struct.bisect_terms** %3, align 8
  %16 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @ref_exists(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* @mark_good, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i32* %5 to i8*
  %27 = call i32 @for_each_glob_ref_in(i32 %24, i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %94

34:                                               ; preds = %30, %23
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 -1, i32* %7, align 4
  br label %94

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.bisect_terms*, %struct.bisect_terms** %3, align 8
  %47 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcmp(i8* %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %44
  %52 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.bisect_terms*, %struct.bisect_terms** %3, align 8
  %54 = getelementptr inbounds %struct.bisect_terms, %struct.bisect_terms* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @warning(i32 %52, i32 %55)
  %57 = call i32 @isatty(i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %94

60:                                               ; preds = %51
  %61 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @PROMPT_ECHO, align 4
  %63 = call i8* @git_prompt(i32 %61, i32 %62)
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i64 @starts_with(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = load i8*, i8** %10, align 8
  %69 = call i64 @starts_with(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %60
  store i32 -1, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %67
  br label %94

73:                                               ; preds = %44, %41, %38
  %74 = call i32 (...) @git_path_bisect_start()
  %75 = call i32 @is_empty_or_missing_file(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** @need_bad_and_good_revision_warning, align 8
  %79 = call i32 @_(i8* %78)
  %80 = load i8*, i8** @vocab_bad, align 8
  %81 = load i8*, i8** @vocab_good, align 8
  %82 = load i8*, i8** @vocab_bad, align 8
  %83 = load i8*, i8** @vocab_good, align 8
  %84 = call i32 @error(i32 %79, i8* %80, i8* %81, i8* %82, i8* %83)
  store i32 %84, i32* %7, align 4
  br label %93

85:                                               ; preds = %73
  %86 = load i8*, i8** @need_bisect_start_warning, align 8
  %87 = call i32 @_(i8* %86)
  %88 = load i8*, i8** @vocab_good, align 8
  %89 = load i8*, i8** @vocab_bad, align 8
  %90 = load i8*, i8** @vocab_good, align 8
  %91 = load i8*, i8** @vocab_bad, align 8
  %92 = call i32 @error(i32 %87, i8* %88, i8* %89, i8* %90, i8* %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %85, %77
  br label %94

94:                                               ; preds = %93, %72, %59, %37, %33
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i8* @xstrfmt(i8*, i32) #1

declare dso_local i64 @ref_exists(i8*) #1

declare dso_local i32 @for_each_glob_ref_in(i32, i8*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @warning(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i8* @git_prompt(i32, i32) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @is_empty_or_missing_file(i32) #1

declare dso_local i32 @git_path_bisect_start(...) #1

declare dso_local i32 @error(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
