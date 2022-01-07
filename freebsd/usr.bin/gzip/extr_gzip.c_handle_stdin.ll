; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_handle_stdin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_handle_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32, i32 }

@fflag = common dso_local global i64 0, align 8
@lflag = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"standard input is a terminal -- ignoring\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@infile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"can't read stdin\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"(stdin): unexpected end of file\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unknown compression format\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"zopen of stdin\00", align 1
@stdout = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@tflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stdin() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca [4 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = load i64, i64* @fflag, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load i64, i64* @lflag, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @STDIN_FILENO, align 4
  %16 = call i64 @isatty(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @maybe_warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %141

20:                                               ; preds = %14, %11, %0
  %21 = load i32, i32* @STDIN_FILENO, align 4
  %22 = call i64 @fstat(i32 %21, %struct.stat* %1)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @maybe_warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %141

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISREG(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %3, align 8
  br label %35

34:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @infile_set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* @lflag, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @STDIN_FILENO, align 4
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* @infile, align 4
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @print_list(i32 %41, i64 %42, i32 %43, i32 %45)
  br label %141

47:                                               ; preds = %35
  %48 = load i32, i32* @STDIN_FILENO, align 4
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %50 = call i32 @read_retry(i32 %48, i8* %49, i32 4)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @maybe_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %141

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 4
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @maybe_warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %141

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %64 = call i32 @file_gettype(i8* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  switch i32 %65, label %66 [
    i32 132, label %75
    i32 133, label %80
    i32 128, label %85
    i32 130, label %98
    i32 129, label %103
    i32 131, label %108
  ]

66:                                               ; preds = %62
  %67 = load i64, i64* @fflag, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @maybe_warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %141

71:                                               ; preds = %66
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %73 = load i32, i32* @STDIN_FILENO, align 4
  %74 = call i32 @cat_fd(i8* %72, i32 4, i32* %5, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %113

75:                                               ; preds = %62
  %76 = load i32, i32* @STDIN_FILENO, align 4
  %77 = load i32, i32* @STDOUT_FILENO, align 4
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %79 = call i32 @gz_uncompress(i32 %76, i32 %77, i8* %78, i32 4, i32* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %79, i32* %4, align 4
  br label %113

80:                                               ; preds = %62
  %81 = load i32, i32* @STDIN_FILENO, align 4
  %82 = load i32, i32* @STDOUT_FILENO, align 4
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %84 = call i32 @unbzip2(i32 %81, i32 %82, i8* %83, i32 4, i32* %5)
  store i32 %84, i32* %4, align 4
  br label %113

85:                                               ; preds = %62
  %86 = load i32, i32* @STDIN_FILENO, align 4
  %87 = call i32* @zdopen(i32 %86)
  store i32* %87, i32** %8, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 @maybe_warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %141

91:                                               ; preds = %85
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* @stdout, align 4
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %95 = call i32 @zuncompress(i32* %92, i32 %93, i8* %94, i32 4, i32* %5)
  store i32 %95, i32* %4, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @fclose(i32* %96)
  br label %113

98:                                               ; preds = %62
  %99 = load i32, i32* @STDIN_FILENO, align 4
  %100 = load i32, i32* @STDOUT_FILENO, align 4
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %102 = call i32 @unpack(i32 %99, i32 %100, i8* %101, i32 4, i32* %5)
  store i32 %102, i32* %4, align 4
  br label %113

103:                                              ; preds = %62
  %104 = load i32, i32* @STDIN_FILENO, align 4
  %105 = load i32, i32* @STDOUT_FILENO, align 4
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %107 = call i32 @unxz(i32 %104, i32 %105, i8* %106, i32 4, i32* %5)
  store i32 %107, i32* %4, align 4
  br label %113

108:                                              ; preds = %62
  %109 = load i32, i32* @STDIN_FILENO, align 4
  %110 = load i32, i32* @STDOUT_FILENO, align 4
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %112 = call i32 @unlz(i32 %109, i32 %110, i8* %111, i32 4, i32* %5)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %103, %98, %91, %80, %75, %71
  %114 = load i64, i64* @vflag, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i64, i64* @tflag, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @print_verbage(i32* null, i32* null, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %122, %119, %116, %113
  %130 = load i64, i64* @vflag, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i64, i64* @tflag, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, -1
  %138 = zext i1 %137 to i32
  %139 = call i32 @print_test(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %135, %132, %129
  br label %141

141:                                              ; preds = %140, %89, %69, %59, %53, %40, %24, %18
  %142 = call i32 (...) @infile_clear()
  ret void
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @maybe_warnx(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @maybe_warn(i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @infile_set(i8*, i64) #1

declare dso_local i32 @print_list(i32, i64, i32, i32) #1

declare dso_local i32 @read_retry(i32, i8*, i32) #1

declare dso_local i32 @file_gettype(i8*) #1

declare dso_local i32 @cat_fd(i8*, i32, i32*, i32) #1

declare dso_local i32 @gz_uncompress(i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @unbzip2(i32, i32, i8*, i32, i32*) #1

declare dso_local i32* @zdopen(i32) #1

declare dso_local i32 @zuncompress(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unpack(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @unxz(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @unlz(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @print_verbage(i32*, i32*, i32, i32) #1

declare dso_local i32 @print_test(i8*, i32) #1

declare dso_local i32 @infile_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
