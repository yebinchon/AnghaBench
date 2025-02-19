; ModuleID = '/home/carl/AnghaBench/git/compat/extr_win32mmap.c_git_mmap.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_win32mmap.c_git_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"mmap: could not determine filesize\00", align 1
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Invalid usage of mmap when built with USE_WIN32_MMAP\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@PAGE_WRITECOPY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@FILE_MAP_READ = common dso_local global i32 0, align 4
@FILE_MAP_COPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"unable to close file mapping handle\00", align 1
@ERROR_COMMITMENT_LIMIT = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_mmap(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_3__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %18, align 4
  %25 = ashr i32 %24, 32
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @_get_osfhandle(i32 %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @GetFileSizeEx(i64 %28, %struct.TYPE_3__* %17)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %6
  %32 = call i32 @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %6
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = add i64 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = sub nsw i64 %42, %43
  %45 = call i64 @xsize_t(i64 %44)
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @MAP_PRIVATE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 @die(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i64, i64* %14, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @PROT_READ, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @PAGE_READONLY, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @PAGE_WRITECOPY, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i64 @CreateFileMapping(i64 %54, i32* null, i32 %63, i32 0, i32 0, i32* null)
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* @errno, align 4
  %69 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %69, i8** %7, align 8
  br label %107

70:                                               ; preds = %62
  %71 = load i64, i64* %15, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @PROT_READ, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @FILE_MAP_READ, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @FILE_MAP_COPY, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i64, i64* %9, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i8* @MapViewOfFileEx(i64 %71, i32 %80, i32 %81, i32 %82, i64 %83, i8* %84)
  store i8* %85, i8** %16, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @CloseHandle(i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %79
  %90 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %79
  %92 = load i8*, i8** %16, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i8*, i8** %16, align 8
  store i8* %95, i8** %7, align 8
  br label %107

96:                                               ; preds = %91
  %97 = call i64 (...) @GetLastError()
  %98 = load i64, i64* @ERROR_COMMITMENT_LIMIT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @EFBIG, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @EINVAL, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  store i32 %105, i32* @errno, align 4
  %106 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %106, i8** %7, align 8
  br label %107

107:                                              ; preds = %104, %94, %67
  %108 = load i8*, i8** %7, align 8
  ret i8* %108
}

declare dso_local i64 @_get_osfhandle(i32) #1

declare dso_local i32 @GetFileSizeEx(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @xsize_t(i64) #1

declare dso_local i64 @CreateFileMapping(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i8* @MapViewOfFileEx(i64, i32, i32, i32, i64, i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
