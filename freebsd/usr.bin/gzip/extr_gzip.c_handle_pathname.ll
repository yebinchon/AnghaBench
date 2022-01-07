; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_handle_pathname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_handle_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }
%struct.stat = type { i32 }

@dflag = common dso_local global i64 0, align 8
@fflag = common dso_local global i64 0, align 8
@cflag = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@suffixes = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"can't stat: %s\00", align 1
@rflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"%s is a directory\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s is not a regular file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @handle_pathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pathname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 45
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load i64, i64* @dflag, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @handle_stdin()
  br label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @handle_stdout()
  br label %27

27:                                               ; preds = %25, %23
  br label %122

28:                                               ; preds = %14, %1
  br label %29

29:                                               ; preds = %69, %28
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 @stat(i8* %30, %struct.stat* %7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @fflag, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %33
  %37 = load i64, i64* @cflag, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %36
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @lstat(i8* %40, %struct.stat* %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %39, %29
  %44 = load i64, i64* @dflag, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %86

49:                                               ; preds = %46
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @ENOENT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  %55 = call i32 @strlen(i8* %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @suffixes, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %60, %61
  %63 = add nsw i32 %62, 1
  %64 = call i8* @malloc(i32 %63)
  store i8* %64, i8** %4, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = call i32 @maybe_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %53
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @memcpy(i8* %70, i8* %71, i32 %72)
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @suffixes, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i32 @memcpy(i8* %77, i8* %81, i32 %83)
  %85 = load i8*, i8** %4, align 8
  store i8* %85, i8** %2, align 8
  br label %29

86:                                               ; preds = %49, %46, %43
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @maybe_warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  br label %116

89:                                               ; preds = %39, %36, %33
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @S_ISDIR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i64, i64* @rflag, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %2, align 8
  %99 = call i32 @handle_dir(i8* %98)
  br label %103

100:                                              ; preds = %94
  %101 = load i8*, i8** %2, align 8
  %102 = call i32 @maybe_warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %116

104:                                              ; preds = %89
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @S_ISREG(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8*, i8** %2, align 8
  %111 = call i32 @handle_file(i8* %110, %struct.stat* %7)
  br label %115

112:                                              ; preds = %104
  %113 = load i8*, i8** %2, align 8
  %114 = call i32 @maybe_warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %103, %86
  %117 = load i8*, i8** %4, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @free(i8* %120)
  br label %122

122:                                              ; preds = %27, %119, %116
  ret void
}

declare dso_local i32 @handle_stdin(...) #1

declare dso_local i32 @handle_stdout(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @maybe_err(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @maybe_warn(i8*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @handle_dir(i8*) #1

declare dso_local i32 @maybe_warnx(i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @handle_file(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
