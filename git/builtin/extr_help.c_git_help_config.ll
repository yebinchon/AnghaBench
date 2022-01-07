; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_help.c_git_help_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_help.c_git_help_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"column.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@colopts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"help.format\00", align 1
@help_format = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"help.htmlpath\00", align 1
@html_path = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"man.viewer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"man.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_help_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_help_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @starts_with(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @git_column_config(i8* %12, i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @colopts)
  store i32 %14, i32* %4, align 4
  br label %67

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @config_error_nonbool(i8* %23)
  store i32 %24, i32* %4, align 4
  br label %67

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @parse_help_format(i8* %26)
  store i32 %27, i32* @help_format, align 4
  store i32 0, i32* %4, align 4
  br label %67

28:                                               ; preds = %15
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @config_error_nonbool(i8* %36)
  store i32 %37, i32* %4, align 4
  br label %67

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @xstrdup(i8* %39)
  store i32 %40, i32* @html_path, align 4
  store i32 0, i32* %4, align 4
  br label %67

41:                                               ; preds = %28
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @config_error_nonbool(i8* %49)
  store i32 %50, i32* %4, align 4
  br label %67

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @add_man_viewer(i8* %52)
  store i32 0, i32* %4, align 4
  br label %67

54:                                               ; preds = %41
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @starts_with(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @add_man_viewer_info(i8* %59, i8* %60)
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %54
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @git_default_config(i8* %63, i8* %64, i8* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %58, %51, %48, %38, %35, %25, %22, %11
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @git_column_config(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @parse_help_format(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @add_man_viewer(i8*) #1

declare dso_local i32 @add_man_viewer_info(i8*, i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
