; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_config_include.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_config_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_include_data = type { i32 (i8*, i8*, i32)*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"include.path\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"includeif\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_include(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_include_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.config_include_data*
  store %struct.config_include_data* %14, %struct.config_include_data** %8, align 8
  %15 = load %struct.config_include_data*, %struct.config_include_data** %8, align 8
  %16 = getelementptr inbounds %struct.config_include_data, %struct.config_include_data* %15, i32 0, i32 0
  %17 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.config_include_data*, %struct.config_include_data** %8, align 8
  %21 = getelementptr inbounds %struct.config_include_data, %struct.config_include_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %17(i8* %18, i8* %19, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.config_include_data*, %struct.config_include_data** %8, align 8
  %35 = call i32 @handle_path_include(i8* %33, %struct.config_include_data* %34)
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @parse_config_key(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %9, i32* %11, i8** %10)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.config_include_data*, %struct.config_include_data** %8, align 8
  %45 = getelementptr inbounds %struct.config_include_data, %struct.config_include_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @include_condition_is_true(i32 %46, i8* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.config_include_data*, %struct.config_include_data** %8, align 8
  %58 = call i32 @handle_path_include(i8* %56, %struct.config_include_data* %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %55, %51, %43, %40, %36
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %26
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @handle_path_include(i8*, %struct.config_include_data*) #1

declare dso_local i32 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local i64 @include_condition_is_true(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
