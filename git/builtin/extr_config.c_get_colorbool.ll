; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_config.c_get_colorbool.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_config.c_get_colorbool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_colorbool_slot = common dso_local global i8* null, align 8
@get_colorbool_found = common dso_local global i32 0, align 4
@get_diff_color_found = common dso_local global i32 0, align 4
@get_color_ui_found = common dso_local global i32 0, align 4
@git_get_colorbool_config = common dso_local global i32 0, align 4
@given_config_source = common dso_local global i32 0, align 4
@config_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"color.diff\00", align 1
@GIT_COLOR_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @get_colorbool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_colorbool(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** @get_colorbool_slot, align 8
  store i32 -1, i32* @get_colorbool_found, align 4
  store i32 -1, i32* @get_diff_color_found, align 4
  store i32 -1, i32* @get_color_ui_found, align 4
  %7 = load i32, i32* @git_get_colorbool_config, align 4
  %8 = call i32 @config_with_options(i32 %7, i32* null, i32* @given_config_source, i32* @config_options)
  %9 = load i32, i32* @get_colorbool_found, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i8*, i8** @get_colorbool_slot, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @get_diff_color_found, align 4
  store i32 %16, i32* @get_colorbool_found, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32, i32* @get_colorbool_found, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @get_color_ui_found, align 4
  store i32 %21, i32* @get_colorbool_found, align 4
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* @get_colorbool_found, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @GIT_COLOR_AUTO, align 4
  store i32 %27, i32* @get_colorbool_found, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* @get_colorbool_found, align 4
  %30 = call i32 @want_color(i32 %29)
  store i32 %30, i32* @get_colorbool_found, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @get_colorbool_found, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 0, i32* %3, align 4
  br label %44

39:                                               ; preds = %28
  %40 = load i32, i32* @get_colorbool_found, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %33
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @config_with_options(i32, i32*, i32*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @want_color(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
