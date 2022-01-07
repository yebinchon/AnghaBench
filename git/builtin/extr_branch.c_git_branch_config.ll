; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_git_branch_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_git_branch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_sorting = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"branch.sort\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"column.\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@colopts = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"color.branch\00", align 1
@branch_use_color = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"color.branch.\00", align 1
@color_branch_slots = common dso_local global i32 0, align 4
@branch_colors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_branch_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_branch_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ref_sorting**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.ref_sorting**
  store %struct.ref_sorting** %12, %struct.ref_sorting*** %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @config_error_nonbool(i8* %20)
  store i32 %21, i32* %4, align 4
  br label %72

22:                                               ; preds = %16
  %23 = load %struct.ref_sorting**, %struct.ref_sorting*** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @parse_ref_sorting(%struct.ref_sorting** %23, i8* %24)
  store i32 0, i32* %4, align 4
  br label %72

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @starts_with(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @git_column_config(i8* %31, i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @colopts)
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @git_config_colorbool(i8* %39, i8* %40)
  store i32 %41, i32* @branch_use_color, align 4
  store i32 0, i32* %4, align 4
  br label %72

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @skip_prefix(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load i32, i32* @color_branch_slots, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @LOOKUP_CONFIG(i32 %47, i8* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %72

53:                                               ; preds = %46
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @config_error_nonbool(i8* %57)
  store i32 %58, i32* %4, align 4
  br label %72

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = load i32*, i32** @branch_colors, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @color_parse(i8* %60, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %72

67:                                               ; preds = %42
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @git_color_default_config(i8* %68, i8* %69, i8* %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %59, %56, %52, %38, %30, %22, %19
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @parse_ref_sorting(%struct.ref_sorting**, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @git_column_config(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @git_config_colorbool(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @LOOKUP_CONFIG(i32, i8*) #1

declare dso_local i32 @color_parse(i8*, i32) #1

declare dso_local i32 @git_color_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
