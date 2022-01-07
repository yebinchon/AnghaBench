; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_unlink.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@delay = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"Unlink of file '%s' failed. Should I try again?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mingw_unlink(i8* %0) #0 {
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
  br label %61

17:                                               ; preds = %1
  %18 = call i32 @_wchmod(i32* %12, i32 438)
  br label %19

19:                                               ; preds = %34, %17
  %20 = call i32 @_wunlink(i32* %12)
  store i32 %20, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** @delay, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp slt i32 %23, %25
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %43

29:                                               ; preds = %27
  %30 = call i32 (...) @GetLastError()
  %31 = call i64 @is_file_in_use_error(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %43

34:                                               ; preds = %29
  %35 = load i32*, i32** @delay, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Sleep(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %19

43:                                               ; preds = %33, %27
  br label %44

44:                                               ; preds = %57, %43
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = call i32 (...) @GetLastError()
  %49 = call i64 @is_file_in_use_error(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @ask_yes_no_if_possible(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %51, %47, %44
  %56 = phi i1 [ false, %47 ], [ false, %44 ], [ %54, %51 ]
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = call i32 @_wunlink(i32* %12)
  store i32 %58, i32* %4, align 4
  br label %44

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %16
  %62 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xutftowcs_path(i32*, i8*) #2

declare dso_local i32 @_wchmod(i32*, i32) #2

declare dso_local i32 @_wunlink(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @is_file_in_use_error(i32) #2

declare dso_local i32 @GetLastError(...) #2

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
