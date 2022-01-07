; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_needs_hiding.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_needs_hiding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hide_dotfiles = common dso_local global i64 0, align 8
@HIDE_DOTFILES_FALSE = common dso_local global i64 0, align 8
@HIDE_DOTFILES_TRUE = common dso_local global i64 0, align 8
@HIDE_DOTFILES_DOTGITONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c".git\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @needs_hiding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_hiding(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i64, i64* @hide_dotfiles, align 8
  %6 = load i64, i64* @HIDE_DOTFILES_FALSE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

9:                                                ; preds = %1
  %10 = call i32 @win32_skip_dos_drive_prefix(i8** %3)
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %82

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %44, %15
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @is_dir_sep(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %30, %26
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @is_dir_sep(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %27, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  store i8* %40, i8** %4, align 8
  br label %42

41:                                               ; preds = %35
  br label %47

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  br label %17

47:                                               ; preds = %41, %17
  %48 = load i64, i64* @hide_dotfiles, align 8
  %49 = load i64, i64* @HIDE_DOTFILES_TRUE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %82

57:                                               ; preds = %47
  %58 = load i64, i64* @hide_dotfiles, align 8
  %59 = load i64, i64* @HIDE_DOTFILES_DOTGITONLY, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %63, i32 4)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %57
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @is_dir_sep(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %71, %66
  %78 = phi i1 [ true, %66 ], [ %76, %71 ]
  br label %79

79:                                               ; preds = %77, %57
  %80 = phi i1 [ false, %57 ], [ %78, %77 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %51, %14, %8
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @win32_skip_dos_drive_prefix(i8**) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
