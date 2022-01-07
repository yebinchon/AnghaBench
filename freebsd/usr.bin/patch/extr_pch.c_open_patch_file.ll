; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_open_patch_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_open_patch_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@TMPPATNAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@pfp = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"can't create %s\00", align 1
@buf = common dso_local global i32 0, align 4
@buf_size = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"write error to %s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"can't write %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"patch file %s not found\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"can't stat %s\00", align 1
@p_filesize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_patch_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strEQ(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %13, %8, %1
  %18 = load i8*, i8** @TMPPATNAME, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** @pfp, align 8
  %20 = load i32*, i32** @pfp, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** @TMPPATNAME, align 8
  %24 = call i32 @pfatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* @buf, align 4
  %28 = load i32, i32* @buf_size, align 4
  %29 = load i32, i32* @stdin, align 4
  %30 = call i32 @fread(i32 %27, i32 1, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32, i32* @buf, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** @pfp, align 8
  %36 = call i32 @fwrite(i32 %33, i32 1, i32 %34, i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i8*, i8** @TMPPATNAME, align 8
  %42 = call i32 @pfatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %32
  br label %26

44:                                               ; preds = %26
  %45 = load i32*, i32** @pfp, align 8
  %46 = call i64 @ferror(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** @pfp, align 8
  %50 = call i64 @fclose(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %44
  %53 = load i8*, i8** @TMPPATNAME, align 8
  %54 = call i32 @pfatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i8*, i8** @TMPPATNAME, align 8
  store i8* %56, i8** %2, align 8
  br label %57

57:                                               ; preds = %55, %13
  %58 = load i8*, i8** %2, align 8
  %59 = call i32* @fopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %59, i32** @pfp, align 8
  %60 = load i32*, i32** @pfp, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @pfatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32*, i32** @pfp, align 8
  %67 = call i32 @fileno(i32* %66)
  %68 = call i64 @fstat(i32 %67, %struct.stat* %3)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 @pfatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* @p_filesize, align 4
  %76 = call i32 @next_intuit_at(i32 0, i64 1)
  %77 = call i32 (...) @set_hunkmax()
  ret void
}

declare dso_local i64 @strEQ(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pfatal(i8*, i8*) #1

declare dso_local i32 @fread(i32, i32, i32, i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @next_intuit_at(i32, i64) #1

declare dso_local i32 @set_hunkmax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
