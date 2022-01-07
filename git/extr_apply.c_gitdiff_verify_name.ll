; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_gitdiff_verify_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_gitdiff_verify_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gitdiff_data = type { i8*, i32, i32 }

@TERM_TAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"git apply: bad git-diff - expected /dev/null, got %s on line %d\00", align 1
@DIFF_NEW_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"git apply: bad git-diff - inconsistent new filename on line %d\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"git apply: bad git-diff - inconsistent old filename on line %d\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"git apply: bad git-diff - expected /dev/null on line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gitdiff_data*, i8*, i32, i8**, i32)* @gitdiff_verify_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gitdiff_verify_name(%struct.gitdiff_data* %0, i8* %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gitdiff_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.gitdiff_data* %0, %struct.gitdiff_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8**, i8*** %10, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = load %struct.gitdiff_data*, %struct.gitdiff_data** %7, align 8
  %21 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.gitdiff_data*, %struct.gitdiff_data** %7, align 8
  %25 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TERM_TAB, align 4
  %28 = call i8* @find_name(i32 %22, i8* %23, i32* null, i32 %26, i32 %27)
  %29 = load i8**, i8*** %10, align 8
  store i8* %28, i8** %29, align 8
  store i32 0, i32* %6, align 4
  br label %94

30:                                               ; preds = %16, %5
  %31 = load i8**, i8*** %10, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %39 = load i8**, i8*** %10, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.gitdiff_data*, %struct.gitdiff_data** %7, align 8
  %42 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, ...) @error(i32 %38, i8* %40, i8* %43)
  store i32 %44, i32* %6, align 4
  br label %94

45:                                               ; preds = %34
  %46 = load %struct.gitdiff_data*, %struct.gitdiff_data** %7, align 8
  %47 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.gitdiff_data*, %struct.gitdiff_data** %7, align 8
  %51 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TERM_TAB, align 4
  %54 = call i8* @find_name(i32 %48, i8* %49, i32* null, i32 %52, i32 %53)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load i8*, i8** %12, align 8
  %59 = load i8**, i8*** %10, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* %58, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %57, %45
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @DIFF_NEW_NAME, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %73

71:                                               ; preds = %63
  %72 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.gitdiff_data*, %struct.gitdiff_data** %7, align 8
  %76 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @error(i32 %74, i8* %77)
  store i32 %78, i32* %6, align 4
  br label %94

79:                                               ; preds = %57
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @free(i8* %80)
  br label %93

82:                                               ; preds = %30
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @is_dev_null(i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.gitdiff_data*, %struct.gitdiff_data** %7, align 8
  %89 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i32, i8*, ...) @error(i32 %87, i8* %90)
  store i32 %91, i32* %6, align 4
  br label %94

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %79
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %86, %73, %37, %19
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i8* @find_name(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @is_dev_null(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
