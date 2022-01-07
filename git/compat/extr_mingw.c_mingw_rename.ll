; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_rename.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@MOVEFILE_REPLACE_EXISTING = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_READONLY = common dso_local global i64 0, align 8
@delay = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"Rename from '%s' to '%s' failed. Should I try again?\00", align 1
@EACCES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mingw_rename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @xutftowcs_path(i32* %17, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @xutftowcs_path(i32* %20, i8* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

29:                                               ; preds = %24
  %30 = call i32 @_wrename(i32* %17, i32* %20)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EEXIST, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %125, %107, %73, %38
  %40 = load i32, i32* @MOVEFILE_REPLACE_EXISTING, align 4
  %41 = call i64 @MoveFileExW(i32* %17, i32* %20, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

44:                                               ; preds = %39
  %45 = call i64 (...) @GetLastError()
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %98

49:                                               ; preds = %44
  %50 = call i64 @GetFileAttributesW(i32* %20)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @FILE_ATTRIBUTE_DIRECTORY, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = call i64 @GetFileAttributesW(i32* %17)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @FILE_ATTRIBUTE_DIRECTORY, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63, %58
  %69 = load i64, i64* @EISDIR, align 8
  store i64 %69, i64* @errno, align 8
  br label %75

70:                                               ; preds = %63
  %71 = call i32 @_wrmdir(i32* %20)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %39

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %68
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

76:                                               ; preds = %53
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @FILE_ATTRIBUTE_READONLY, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @FILE_ATTRIBUTE_READONLY, align 8
  %84 = xor i64 %83, -1
  %85 = and i64 %82, %84
  %86 = call i32 @SetFileAttributesW(i32* %20, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load i32, i32* @MOVEFILE_REPLACE_EXISTING, align 4
  %90 = call i64 @MoveFileExW(i32* %17, i32* %20, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

93:                                               ; preds = %88
  %94 = call i64 (...) @GetLastError()
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @SetFileAttributesW(i32* %20, i64 %95)
  br label %97

97:                                               ; preds = %93, %81, %76
  br label %98

98:                                               ; preds = %97, %49, %44
  %99 = load i32, i32* %8, align 4
  %100 = load i32*, i32** @delay, align 8
  %101 = call i32 @ARRAY_SIZE(i32* %100)
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i32*, i32** @delay, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @Sleep(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %39

116:                                              ; preds = %103, %98
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i8*, i8** %4, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = call i64 @ask_yes_no_if_possible(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %121, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %39

126:                                              ; preds = %120, %116
  %127 = load i64, i64* @EACCES, align 8
  store i64 %127, i64* @errno, align 8
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

128:                                              ; preds = %126, %92, %75, %43, %37, %32, %28
  %129 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xutftowcs_path(i32*, i8*) #2

declare dso_local i32 @_wrename(i32*, i32*) #2

declare dso_local i64 @MoveFileExW(i32*, i32*, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @GetFileAttributesW(i32*) #2

declare dso_local i32 @_wrmdir(i32*) #2

declare dso_local i32 @SetFileAttributesW(i32*, i64) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @ask_yes_no_if_possible(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
