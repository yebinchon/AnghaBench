; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_is_dir_empty.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_is_dir_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 92, i32 42, i32 0], align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 46, i32 46, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @is_dir_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dir_empty(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = add nsw i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @wcscpy(i32* %14, i32* %15)
  %17 = call i32 @wcscat(i32* %14, i8* bitcast ([3 x i32]* @.str to i8*))
  %18 = call i64 @FindFirstFileW(i32* %14, %struct.TYPE_4__* %4)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %53, %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wcscmp(i32 %30, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wcscmp(i32 %35, i8* bitcast ([3 x i32]* @.str.2 to i8*))
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %28
  %40 = phi i1 [ true, %28 ], [ %38, %33 ]
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @FindNextFileW(i64 %42, %struct.TYPE_4__* %4)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = call i64 (...) @GetLastError()
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @FindClose(i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

53:                                               ; preds = %41
  br label %28

54:                                               ; preds = %39
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @FindClose(i64 %55)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %45, %22
  %58 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wcscpy(i32*, i32*) #2

declare dso_local i32 @wcscat(i32*, i8*) #2

declare dso_local i64 @FindFirstFileW(i32*, %struct.TYPE_4__*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @wcscmp(i32, i8*) #2

declare dso_local i32 @FindNextFileW(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
