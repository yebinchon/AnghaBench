; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_maybe_redirect_std_handle.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_maybe_redirect_std_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPEN_ALWAYS = common dso_local global i64 0, align 8
@OPEN_EXISTING = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 111, i32 102, i32 102, i32 0], align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@STD_ERROR_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i32] [i32 50, i32 62, i32 38, i32 49, i32 0], align 4
@STD_OUTPUT_HANDLE = common dso_local global i64 0, align 8
@O_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i64, i64)* @maybe_redirect_std_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_redirect_std_handle(i32* %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* @OPEN_ALWAYS, align 8
  br label %26

24:                                               ; preds = %5
  %25 = load i64, i64* @OPEN_EXISTING, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = call i64 @ARRAY_SIZE(i32* %31)
  store i64 %32, i64* %14, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @GetEnvironmentVariableW(i32* %33, i32* %31, i64 %34)
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i64, i64* %16, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %26
  store i32 1, i32* %17, align 4
  br label %117

43:                                               ; preds = %38
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @SetEnvironmentVariableW(i32* %44, i32* null)
  %46 = call i32 @wcscmp(i32* %31, i8* bitcast ([4 x i32]* @.str to i8*))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @GetStdHandle(i64 %51)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @CloseHandle(i64 %57)
  br label %59

59:                                               ; preds = %56, %48
  store i32 1, i32* %17, align 4
  br label %117

60:                                               ; preds = %43
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @STD_ERROR_HANDLE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %60
  %65 = call i32 @wcscmp(i32* %31, i8* bitcast ([5 x i32]* @.str.1 to i8*))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @STD_OUTPUT_HANDLE, align 8
  %69 = call i64 @GetStdHandle(i64 %68)
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @close(i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @GetStdHandle(i64 %76)
  store i64 %77, i64* %15, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @CloseHandle(i64 %82)
  br label %84

84:                                               ; preds = %81, %73
  br label %95

85:                                               ; preds = %67
  %86 = load i64, i64* %15, align 8
  %87 = load i32, i32* @O_BINARY, align 4
  %88 = call i32 @_open_osfhandle(i64 %86, i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @SetStdHandle(i64 %89, i64 %90)
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @dup2(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %85, %84
  store i32 1, i32* %17, align 4
  br label %117

96:                                               ; preds = %64, %60
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @CreateFileW(i32* %31, i64 %97, i32 0, i32* null, i64 %98, i64 %99, i32* null)
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %96
  %105 = load i64, i64* %15, align 8
  %106 = load i32, i32* @O_BINARY, align 4
  %107 = call i32 @_open_osfhandle(i64 %105, i32 %106)
  store i32 %107, i32* %19, align 4
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @SetStdHandle(i64 %108, i64 %109)
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @dup2(i32 %111, i32 %112)
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @close(i32 %114)
  br label %116

116:                                              ; preds = %104, %96
  store i32 0, i32* %17, align 4
  br label %117

117:                                              ; preds = %116, %95, %59, %42
  %118 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %17, align 4
  switch i32 %119, label %121 [
    i32 0, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %117, %117
  ret void

121:                                              ; preds = %117
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @GetEnvironmentVariableW(i32*, i32*, i64) #2

declare dso_local i32 @SetEnvironmentVariableW(i32*, i32*) #2

declare dso_local i32 @wcscmp(i32*, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @GetStdHandle(i64) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @_open_osfhandle(i64, i32) #2

declare dso_local i32 @SetStdHandle(i64, i64) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i64 @CreateFileW(i32*, i64, i32, i32*, i64, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
