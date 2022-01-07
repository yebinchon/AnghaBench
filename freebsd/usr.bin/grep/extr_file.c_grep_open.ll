; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_file.c_grep_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_file.c_grep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.stat = type { i64, i32 }

@lbflag = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@filebehave = common dso_local global i64 0, align 8
@FILE_MMAP = common dso_local global i64 0, align 8
@OFF_MAX = common dso_local global i64 0, align 8
@FILE_STDIO = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_NOSYNC = common dso_local global i32 0, align 4
@fsiz = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@buffer = common dso_local global i32* null, align 8
@MAP_FAILED = common dso_local global i32* null, align 8
@bufrem = common dso_local global i64 0, align 8
@bufpos = common dso_local global i32* null, align 8
@MADV_SEQUENTIAL = common dso_local global i32 0, align 4
@MAXBUFSIZ = common dso_local global i32 0, align 4
@binbehave = common dso_local global i64 0, align 8
@BINFILE_TEXT = common dso_local global i64 0, align 8
@fileeol = common dso_local global i8 0, align 1
@MAP_PREFAULT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @grep_open(i8* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i8* @grep_malloc(i32 8)
  %8 = bitcast i8* %7 to %struct.file*
  store %struct.file* %8, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call i32 @memset(%struct.file* %9, i32 0, i32 8)
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  store i32 1, i32* @lbflag, align 4
  %14 = load i32, i32* @STDIN_FILENO, align 4
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* %18, i32 %19)
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = icmp eq i32 %20, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %121

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i64, i64* @filebehave, align 8
  %28 = load i64, i64* @FILE_MMAP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fstat(i32 %33, %struct.stat* %5)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OFF_MAX, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @S_ISREG(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41, %36, %30
  %47 = load i64, i64* @FILE_STDIO, align 8
  store i64 %47, i64* @filebehave, align 8
  br label %78

48:                                               ; preds = %41
  %49 = load i32, i32* @MAP_PRIVATE, align 4
  %50 = load i32, i32* @MAP_NOCORE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @MAP_NOSYNC, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %6, align 4
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* @fsiz, align 8
  %56 = load i64, i64* @fsiz, align 8
  %57 = load i32, i32* @PROT_READ, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.file*, %struct.file** %4, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @mmap(i32* null, i64 %56, i32 %57, i32 %58, i32 %61, i32 0)
  store i32* %62, i32** @buffer, align 8
  %63 = load i32*, i32** @buffer, align 8
  %64 = load i32*, i32** @MAP_FAILED, align 8
  %65 = icmp eq i32* %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %48
  %67 = load i64, i64* @FILE_STDIO, align 8
  store i64 %67, i64* @filebehave, align 8
  br label %77

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* @bufrem, align 8
  %71 = load i32*, i32** @buffer, align 8
  store i32* %71, i32** @bufpos, align 8
  %72 = load i32*, i32** @buffer, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @MADV_SEQUENTIAL, align 4
  %76 = call i32 @madvise(i32* %72, i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %66
  br label %78

78:                                               ; preds = %77, %46
  br label %79

79:                                               ; preds = %78, %26
  %80 = load i32*, i32** @buffer, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32*, i32** @buffer, align 8
  %84 = load i32*, i32** @MAP_FAILED, align 8
  %85 = icmp eq i32* %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82, %79
  %87 = load i32, i32* @MAXBUFSIZ, align 4
  %88 = call i8* @grep_malloc(i32 %87)
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** @buffer, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i64, i64* @bufrem, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.file*, %struct.file** %4, align 8
  %95 = call i64 @grep_refill(%struct.file* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %116

98:                                               ; preds = %93, %90
  %99 = load i64, i64* @binbehave, align 8
  %100 = load i64, i64* @BINFILE_TEXT, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load i8, i8* @fileeol, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32*, i32** @bufpos, align 8
  %108 = load i64, i64* @bufrem, align 8
  %109 = call i32* @memchr(i32* %107, i8 signext 0, i64 %108)
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.file*, %struct.file** %4, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %106, %102, %98
  %115 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %115, %struct.file** %2, align 8
  br label %124

116:                                              ; preds = %97
  %117 = load %struct.file*, %struct.file** %4, align 8
  %118 = getelementptr inbounds %struct.file, %struct.file* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @close(i32 %119)
  br label %121

121:                                              ; preds = %116, %24
  %122 = load %struct.file*, %struct.file** %4, align 8
  %123 = call i32 @free(%struct.file* %122)
  store %struct.file* null, %struct.file** %2, align 8
  br label %124

124:                                              ; preds = %121, %114
  %125 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %125
}

declare dso_local i8* @grep_malloc(i32) #1

declare dso_local i32 @memset(%struct.file*, i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @madvise(i32*, i64, i32) #1

declare dso_local i64 @grep_refill(%struct.file*) #1

declare dso_local i32* @memchr(i32*, i8 signext, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
