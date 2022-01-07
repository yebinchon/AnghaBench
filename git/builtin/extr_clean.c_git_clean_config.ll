; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clean.c_git_clean_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clean.c_git_clean_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"column.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@colopts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"color.interactive\00", align 1
@clean_use_color = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"color.interactive.\00", align 1
@color_interactive_slots = common dso_local global i32 0, align 4
@clean_colors = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"clean.requireforce\00", align 1
@force = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_clean_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_clean_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @starts_with(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @git_column_config(i8* %14, i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @colopts)
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @git_config_colorbool(i8* %22, i8* %23)
  store i32 %24, i32* @clean_use_color, align 4
  store i32 0, i32* %4, align 4
  br label %66

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @skip_prefix(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i32, i32* @color_interactive_slots, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @LOOKUP_CONFIG(i32 %30, i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %66

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @config_error_nonbool(i8* %40)
  store i32 %41, i32* %4, align 4
  br label %66

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = load i32*, i32** @clean_colors, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @color_parse(i8* %43, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %66

50:                                               ; preds = %25
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @git_config_bool(i8* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* @force, align 4
  store i32 0, i32* %4, align 4
  br label %66

61:                                               ; preds = %50
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @git_color_default_config(i8* %62, i8* %63, i8* %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %54, %42, %39, %35, %21, %13
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @git_column_config(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_colorbool(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @LOOKUP_CONFIG(i32, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @color_parse(i8*, i32) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @git_color_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
