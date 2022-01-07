; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_git_log_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_git_log_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"format.pretty\00", align 1
@fmt_pretty = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"format.subjectprefix\00", align 1
@fmt_patch_subject_prefix = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"log.abbrevcommit\00", align 1
@default_abbrev_commit = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"log.date\00", align 1
@default_date_mode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"log.decorate\00", align 1
@decoration_style = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"log.showroot\00", align 1
@default_show_root = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"log.follow\00", align 1
@default_follow = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"color.decorate.\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"log.mailmap\00", align 1
@use_mailmap_config = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"log.showsignature\00", align 1
@default_show_signature = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_log_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_log_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @git_config_string(i32* @fmt_pretty, i8* %13, i8* %14)
  store i32 %15, i32* %4, align 4
  br label %111

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @git_config_string(i32* @fmt_patch_subject_prefix, i8* %21, i8* %22)
  store i32 %23, i32* %4, align 4
  br label %111

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @git_config_bool(i8* %29, i8* %30)
  store i8* %31, i8** @default_abbrev_commit, align 8
  store i32 0, i32* %4, align 4
  br label %111

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @git_config_string(i32* @default_date_mode, i8* %37, i8* %38)
  store i32 %39, i32* %4, align 4
  br label %111

40:                                               ; preds = %32
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @parse_decoration_style(i8* %45)
  store i64 %46, i64* @decoration_style, align 8
  %47 = load i64, i64* @decoration_style, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i64 0, i64* @decoration_style, align 8
  br label %50

50:                                               ; preds = %49, %44
  store i32 0, i32* %4, align 4
  br label %111

51:                                               ; preds = %40
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @git_config_bool(i8* %56, i8* %57)
  store i8* %58, i8** @default_show_root, align 8
  store i32 0, i32* %4, align 4
  br label %111

59:                                               ; preds = %51
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i8* @git_config_bool(i8* %64, i8* %65)
  store i8* %66, i8** @default_follow, align 8
  store i32 0, i32* %4, align 4
  br label %111

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @skip_prefix(i8* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %8)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @parse_decorate_color_config(i8* %72, i8* %73, i8* %74)
  store i32 %75, i32* %4, align 4
  br label %111

76:                                               ; preds = %67
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i8* @git_config_bool(i8* %81, i8* %82)
  store i8* %83, i8** @use_mailmap_config, align 8
  store i32 0, i32* %4, align 4
  br label %111

84:                                               ; preds = %76
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i8* @git_config_bool(i8* %89, i8* %90)
  store i8* %91, i8** @default_show_signature, align 8
  store i32 0, i32* %4, align 4
  br label %111

92:                                               ; preds = %84
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 @grep_config(i8* %93, i8* %94, i8* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 -1, i32* %4, align 4
  br label %111

99:                                               ; preds = %92
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i64 @git_gpg_config(i8* %100, i8* %101, i8* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %111

106:                                              ; preds = %99
  %107 = load i8*, i8** %5, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @git_diff_ui_config(i8* %107, i8* %108, i8* %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %106, %105, %98, %88, %80, %71, %63, %55, %50, %36, %28, %20, %12
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i64 @parse_decoration_style(i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @parse_decorate_color_config(i8*, i8*, i8*) #1

declare dso_local i64 @grep_config(i8*, i8*, i8*) #1

declare dso_local i64 @git_gpg_config(i8*, i8*, i8*) #1

declare dso_local i32 @git_diff_ui_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
