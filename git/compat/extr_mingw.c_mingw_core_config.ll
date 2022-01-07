; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_core_config.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_core_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"core.hidedotfiles\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dotgitonly\00", align 1
@HIDE_DOTFILES_DOTGITONLY = common dso_local global i32 0, align 4
@hide_dotfiles = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"core.unsetenvvars\00", align 1
@unset_environment_variables = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mingw_core_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @HIDE_DOTFILES_DOTGITONLY, align 4
  store i32 %19, i32* @hide_dotfiles, align 4
  br label %24

20:                                               ; preds = %14, %11
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @git_config_bool(i8* %21, i8* %22)
  store i32 %23, i32* @hide_dotfiles, align 4
  br label %24

24:                                               ; preds = %20, %18
  store i32 0, i32* %4, align 4
  br label %35

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @unset_environment_variables, align 4
  %31 = call i32 @free(i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @xstrdup(i8* %32)
  store i32 %33, i32* @unset_environment_variables, align 4
  store i32 0, i32* %4, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %29, %24
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
