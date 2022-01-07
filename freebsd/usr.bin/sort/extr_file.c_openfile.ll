; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_openfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_openfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@compress_program = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"cat %s | %s -d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s > %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @openfile(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 114
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32*, i32** @stdin, align 8
  br label %27

25:                                               ; preds = %17, %14
  %26 = load i32*, i32** @stdout, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32* [ %24, %23 ], [ %26, %25 ]
  store i32* %28, i32** %3, align 8
  br label %126

29:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @file_is_tmp(i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 119
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, i32* @S_IWGRP, align 4
  %42 = load i32, i32* @S_IWOTH, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @S_IRGRP, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @S_IROTH, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @umask(i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %40, %34, %29
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %49
  %53 = load i8*, i8** @compress_program, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %103

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = add nsw i32 %57, 128
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i8* @sort_malloc(i64 %60)
  store i8* %61, i8** %9, align 8
  %62 = load i32*, i32** @stdout, align 8
  %63 = call i32 @fflush(i32* %62)
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 114
  br i1 %68, label %69, label %76

69:                                               ; preds = %55
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %71, 1
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** @compress_program, align 8
  %75 = call i32 @snprintf(i8* %70, i64 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %73, i8* %74)
  br label %93

76:                                               ; preds = %55
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 119
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = sub i64 %84, 1
  %86 = load i8*, i8** @compress_program, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @snprintf(i8* %83, i64 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %86, i8* %87)
  br label %92

89:                                               ; preds = %76
  %90 = call i32 @getstr(i32 7)
  %91 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %82
  br label %93

93:                                               ; preds = %92, %69
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i32* @popen(i8* %94, i8* %95)
  store i32* %96, i32** %6, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 (i32, i8*, ...) @err(i32 2, i8* null)
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @sort_free(i8* %101)
  br label %111

103:                                              ; preds = %52, %49
  %104 = load i8*, i8** %4, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32* @fopen(i8* %104, i8* %105)
  store i32* %106, i32** %6, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 (i32, i8*, ...) @err(i32 2, i8* null)
  br label %110

110:                                              ; preds = %108, %103
  br label %111

111:                                              ; preds = %110, %100
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 119
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @umask(i32 %121)
  br label %123

123:                                              ; preds = %120, %114, %111
  br label %124

124:                                              ; preds = %123
  %125 = load i32*, i32** %6, align 8
  store i32* %125, i32** %3, align 8
  br label %126

126:                                              ; preds = %124, %27
  %127 = load i32*, i32** %3, align 8
  ret i32* %127
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @file_is_tmp(i8*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @sort_malloc(i64) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getstr(i32) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @sort_free(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
