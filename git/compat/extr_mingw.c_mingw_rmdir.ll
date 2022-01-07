; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_rmdir.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@delay = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Deletion of directory '%s' failed. Should I try again?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mingw_rmdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @xutftowcs_path(i32* %12, i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %76

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %45, %17
  %19 = call i32 @_wrmdir(i32* %12)
  store i32 %19, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** @delay, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = call i32 (...) @GetLastError()
  %30 = call i64 @is_file_in_use_error(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = call i32 (...) @GetLastError()
  %34 = call i64 @err_win_to_posix(i32 %33)
  store i64 %34, i64* @errno, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @EACCES, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %54

40:                                               ; preds = %35
  %41 = call i32 @is_dir_empty(i32* %12)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @ENOTEMPTY, align 8
  store i64 %44, i64* @errno, align 8
  br label %54

45:                                               ; preds = %40
  %46 = load i32*, i32** @delay, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @Sleep(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %18

54:                                               ; preds = %43, %39, %26
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EACCES, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = call i32 (...) @GetLastError()
  %64 = call i64 @is_file_in_use_error(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %3, align 8
  %68 = call i64 @ask_yes_no_if_possible(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %66, %62, %58, %55
  %71 = phi i1 [ false, %62 ], [ false, %58 ], [ false, %55 ], [ %69, %66 ]
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = call i32 @_wrmdir(i32* %12)
  store i32 %73, i32* %4, align 4
  br label %55

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %16
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xutftowcs_path(i32*, i8*) #2

declare dso_local i32 @_wrmdir(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @is_file_in_use_error(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @err_win_to_posix(i32) #2

declare dso_local i32 @is_dir_empty(i32*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @ask_yes_no_if_possible(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
