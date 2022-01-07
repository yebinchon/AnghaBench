; ModuleID = '/home/carl/AnghaBench/git/extr_advice.c_git_default_advice_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_advice.c_git_default_advice_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"color.advice\00", align 1
@advice_use_color = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"color.advice.\00", align 1
@advice_colors = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"advice.\00", align 1
@advice_config = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_default_advice_config(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @git_config_colorbool(i8* %14, i8* %15)
  store i32 %16, i32* @advice_use_color, align 4
  store i32 0, i32* %3, align 4
  br label %77

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @skip_prefix(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @parse_advise_color_slot(i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %77

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @config_error_nonbool(i8* %31)
  store i32 %32, i32* %3, align 4
  br label %77

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = load i32*, i32** @advice_colors, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @color_parse(i8* %34, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %17
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @skip_prefix(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %77

46:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %73, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @advice_config, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @advice_config, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @strcasecmp(i8* %53, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %73

63:                                               ; preds = %52
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @git_config_bool(i8* %64, i8* %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @advice_config, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32 %66, i32* %72, align 4
  store i32 0, i32* %3, align 4
  br label %77

73:                                               ; preds = %62
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %47

76:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %63, %45, %33, %30, %26, %13
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_colorbool(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @parse_advise_color_slot(i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @color_parse(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
